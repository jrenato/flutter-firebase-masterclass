# Flutter & Firebase eCommerce App

This is the official repo for this course:

- [Flutter & Firebase Masterclass](https://codewithandrea.com/courses/flutter-firebase-masterclass/)

This will include a full-stack eCommerce app using Flutter & Firebase:

![eCommerce App Preview](/.github/images/ecommerce-app-preview.png)

## Project Setup

To clone the repo for the first time and open it in VSCode, run this:

```
git clone https://github.com/bizz84/flutter-firebase-masterclass.git
cd flutter-firebase-masterclass
code .
```

This will checkout the `main` branch which contains the **latest code**.

But at various points in the course, I'll ask you to checkout a **specific branch name**, so you can follow along with the right code, at the right time.

And to prevent any conflicts, you may need to reset your local changes:

```
git reset --hard HEAD
git checkout <branch-name>
```

### Firebase Setup

Since the project uses Firebase, some additional files will be needed:

```
lib/firebase_options.dart
ios/Runner/GoogleService-Info.plist
ios/firebase_app_id_file.json
macos/Runner/GoogleService-Info.plist
macos/firebase_app_id_file.json
android/app/google-services.json
```

These files have been added to `.gitignore`, so you need to run this command to generate them with the flutterfire CLI:

```
cd ecommerce_app
flutterfire configure
```

### Stripe Setup

In module 8 of the course, we add Stripe to the eCommerce app.

For the Stripe code to work, a `STRIPE_PUBLISHABLE_KEY` needs to be set on the client.

To set it, create an `.env` file inside the `ecommerce_app` folder and add your [Stripe publishable key](https://dashboard.stripe.com/test/apikeys):

```bash
# ecommerce_app/.env
STRIPE_PUBLISHABLE_KEY=pk_test_YOUR_STRIPE_PUBLISHABLE_KEY
```

Then, run the generator:

```bash
dart run build_runner build -d
```

This will generate an `env.g.dart` file inside `lib`.

As a result, the API key can be read as `Env.stripePublishableKey` in the Stripe setup code.

> [!NOTE]
> API keys defined with `--dart-define-from-file` were failing to load on Flutter web in release mode (see [this answer](https://stackoverflow.com/a/65647968/436422) and [this comment](https://stackoverflow.com/questions/65647090/access-dart-define-environment-variables-inside-index-html#comment120444154_65647968)). To work around that, the project now uses the [Envied](https://pub.dev/packages/envied) package.

## Riverpod 2 to 3 Migration

This project has been migrated from Riverpod 2.6.1 to Riverpod 3.0.3. Below is a comprehensive list of all changes made during the migration.

### Package Updates

#### Core Riverpod Packages
- `riverpod: 2.6.1 → 3.0.3`
- `flutter_riverpod: 2.6.1 → 3.0.3`
- `riverpod_annotation: 2.6.1 → 3.0.3`
- `riverpod_generator: 2.6.4 → 3.0.3`
- `riverpod_lint: 2.6.4 → 3.0.3`

#### Supporting Packages
- `custom_lint: 0.7.3 → 0.8.0` (required by riverpod_lint 3.x)
- `flutter_stripe: 11.5.0 → 12.1.1`
- `flutter_stripe_web: 6.5.0 → 7.0.0`
- `algolia_helper_flutter: 1.2.0 → 1.5.0`
- All algolia client packages: `1.27.1 → 1.43.0`

#### Dependency Overrides
Added `freezed_annotation: ^3.0.0` to resolve conflicts between Riverpod 3 and Stripe packages.

### Code Changes

#### 1. ProviderObserver Interface Update

**File:** `lib/src/exceptions/async_error_logger.dart`

**Breaking Change:** In Riverpod 3, `ProviderObserver` is a `base` class, and the `didUpdateProvider` method signature changed.

**Before:**
```dart
class AsyncErrorLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    final errorLogger = container.read(errorLoggerProvider);
    // ...
  }
}
```

**After:**
```dart
base class AsyncErrorLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderObserverContext context,
    Object? previousValue,
    Object? newValue,
  ) {
    final errorLogger = context.container.read(errorLoggerProvider);
    // ...
  }
}
```

**Changes:**
- Added `base` keyword to class declaration (required for subtypes of `base` classes)
- Replaced separate `provider` and `container` parameters with single `ProviderObserverContext` parameter
- Access container via `context.container` instead of direct parameter

#### 2. Generated Provider Naming Convention

**Files:**
- `lib/src/features/products/presentation/products_list/products_search_query_notifier.dart`
- `lib/src/features/products/presentation/products_list/products_search_text_field.dart`

**Breaking Change:** Riverpod 3 code generation removes "Notifier" from generated provider names.

**Before:**
```dart
@riverpod
class ProductsSearchQueryNotifier extends _$ProductsSearchQueryNotifier {
  // ...
}

// Usage:
ref.watch(productsSearchQueryNotifierProvider)
ref.read(productsSearchQueryNotifierProvider.notifier)
```

**After:**
```dart
@riverpod
class ProductsSearchQueryNotifier extends _$ProductsSearchQueryNotifier {
  // ...
}

// Generated provider name changed:
ref.watch(productsSearchQueryProvider)  // ← "Notifier" removed
ref.read(productsSearchQueryProvider.notifier)
```

#### 3. Service Class to Notifier Pattern (Recommended)

**File:** `lib/src/features/products_admin/application/image_upload_service.dart`

**Breaking Change:** The pattern of storing a `Ref` in a service class can cause "ref after disposal" errors in Riverpod 3 due to stricter lifecycle management.

**Before (Service Class Pattern):**
```dart
class ImageUploadService {
  const ImageUploadService(this.ref);
  final Ref ref;  // ← Stored Ref could become invalid

  Future<void> uploadProduct(Product product) async {
    // Using ref after async gaps could fail
    await ref.read(imageUploadRepositoryProvider)
        .uploadProductImageFromAsset(imageUrl, product.id);
    await ref.read(productsRepositoryProvider)
        .createProduct(product.id, downloadUrl);
  }
}

@riverpod
ImageUploadService imageUploadService(Ref ref) {
  return ImageUploadService(ref);
}
```

**After (Notifier Pattern - Recommended):**
```dart
/// Notifier-based service for uploading and deleting product images
/// This pattern is recommended in Riverpod 3 for services with async operations
@riverpod
class ImageUploadService extends _$ImageUploadService {
  @override
  void build() {
    // No initial state needed
  }

  Future<void> uploadProduct(Product product) async {
    // Ref is lifecycle-managed by the Notifier
    // Safe to use across async gaps
    final imageUploadRepository = ref.read(imageUploadRepositoryProvider);
    final productsRepository = ref.read(productsRepositoryProvider);

    final downloadUrl = await imageUploadRepository
        .uploadProductImageFromAsset(imageUrl, product.id);

    await productsRepository.createProduct(product.id, downloadUrl);
  }
}
```

**Usage Update:**
```dart
// Before:
await ref.read(imageUploadServiceProvider).uploadProduct(product);

// After:
await ref.read(imageUploadServiceProvider.notifier).uploadProduct(product);
```

**Files Updated:**
- `lib/src/features/products_admin/presentation/admin_product_upload_controller.dart`
- `lib/src/features/products_admin/presentation/admin_product_edit_controller.dart`

### Migration Benefits

1. **Stricter Lifecycle Management**: Riverpod 3 prevents bugs by throwing errors when `ref` is used after disposal
2. **Automatic Retry**: Providers that fail during initialization automatically retry with exponential backoff
3. **Simplified API**: Removed `AutoDispose*` class duplicates - now use base classes with unified interfaces
4. **Better Type Safety**: Provider naming is more consistent and predictable
5. **Performance Improvements**: Delayed disposal of listeners during rebuilds prevents unnecessary disposal/recreation

### Best Practices Applied

1. **Store provider values before async gaps**: Always capture provider values before `await` statements to prevent disposal issues
2. **Use Notifier pattern for stateful services**: Convert service classes with stored `Ref` to Notifier-based providers
3. **Base class for ProviderObserver**: Add `base` keyword when extending `ProviderObserver`
4. **Updated provider naming**: Follow new naming conventions without "Notifier" suffix in provider names

### Build & Verification

After migration:
- ✅ All code generation completed successfully (`flutter pub run build_runner build`)
- ✅ Static analysis passed with 0 errors (`flutter analyze`)
- ✅ Android build succeeded (`flutter build apk`)
- ✅ 25 informational warnings (unnecessary imports, deprecated dart:html) - no impact on functionality

### Resources

- [Riverpod 3.0 Migration Guide](https://riverpod.dev/docs/3.0_migration)
- [What's New in Riverpod 3.0](https://riverpod.dev/docs/whats_new)
- [Auto Dispose Documentation](https://riverpod.dev/docs/concepts2/auto_dispose)

### [LICENSE: MIT](../LICENSE.md)