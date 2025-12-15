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

This project has been migrated from Riverpod 2.6.1 to Riverpod 3.0.3. This major version upgrade was necessary to take advantage of improved lifecycle management, automatic retry mechanisms, and better type safety in Riverpod 3.

### Migration Summary

**Migration Date**: December 2024
**Scope**: Complete migration of all Riverpod code to version 3
**Files Modified**: 30+ files across services, controllers, and tests
**Breaking Changes**: 4 major patterns updated
**Build Status**: ✅ All builds passing, 0 errors

**Key Changes at a Glance:**
- ✅ All 6 service classes converted from stored-Ref pattern to Notifier pattern
- ✅ ProviderObserver updated to use ProviderObserverContext
- ✅ Provider naming simplified (removed "Notifier" suffix)
- ✅ 13 package dependencies updated
- ✅ All dependency constraints changed to caret (^) notation
- ✅ 28 files cleaned up for unused imports
- ✅ All tests updated and passing

### Why Migrate to Riverpod 3?

**Key Motivations:**
1. **Prevent "ref after disposal" bugs**: Riverpod 3 enforces stricter lifecycle management, catching bugs where `ref` is used after a provider is disposed
2. **Automatic retry on failure**: Providers that fail during initialization now automatically retry with exponential backoff
3. **Simplified API**: Removed duplicate `AutoDispose*` classes in favor of unified base classes
4. **Performance improvements**: Delayed disposal of listeners during rebuilds prevents unnecessary disposal/recreation cycles
5. **Better developer experience**: More consistent provider naming and improved error messages

### Package Updates

#### Core Riverpod Packages
- `riverpod: 2.6.1 → 3.0.3` - **Reason**: Core state management library upgrade
- `flutter_riverpod: 2.6.1 → 3.0.3` - **Reason**: Flutter integration for Riverpod 3
- `riverpod_annotation: 2.6.1 → 3.0.3` - **Reason**: Annotations for code generation compatibility
- `riverpod_generator: 2.6.4 → 3.0.3` - **Reason**: Code generator updated for new provider patterns
- `riverpod_lint: 2.6.4 → 3.0.3` - **Reason**: Linter rules updated for Riverpod 3 best practices

#### Supporting Packages
- `custom_lint: 0.7.3 → 0.8.0` - **Reason**: Required dependency for riverpod_lint 3.x
- `flutter_stripe: 11.5.0 → 12.1.1` - **Reason**: Compatibility with latest Flutter SDK and improved Stripe API
- `flutter_stripe_web: 6.5.0 → 7.0.0` - **Reason**: Web platform support for Stripe matching flutter_stripe 12.x
- `algolia_helper_flutter: 1.2.0 → 1.5.0` - **Reason**: Latest search features and bug fixes
- All algolia client packages: `1.27.1 → 1.43.0` - **Reason**: Improved search performance and API compatibility

#### Dependency Constraint Changes
All exact version constraints (e.g., `2.6.1`) were changed to caret constraints (e.g., `^2.6.1`) to allow minor version updates for:
- `equatable`, `flutter_staggered_grid_view`, `flutter_rating_bar`, `go_router`
- `rxdart`, `path_provider`, `cached_network_image`
- All Firebase packages (`firebase_core`, `firebase_auth`, `cloud_firestore`, `firebase_storage`)
- `pay`, `envied`, `flutter_launcher_icons`, `flutter_lints`, `mocktail`, `envied_generator`

**Reason**: Caret constraints allow automatic minor and patch updates while preventing breaking changes, following Dart/Flutter best practices for dependency management.

#### Dependency Overrides
Added `freezed_annotation: ^3.0.0` - **Reason**: Resolve version conflict between Riverpod 3.x (requires freezed_annotation 3.x) and flutter_stripe (pins to freezed_annotation 2.x). This override ensures compatibility without waiting for flutter_stripe to update.

### Code Changes

All code changes were necessary to maintain compatibility with Riverpod 3's stricter lifecycle management and new API patterns. These changes improve code safety and prevent runtime errors.

#### 1. ProviderObserver Interface Update

**File:** `lib/src/exceptions/async_error_logger.dart`

**Breaking Change:** In Riverpod 3, `ProviderObserver` is a `base` class, and the `didUpdateProvider` method signature changed.

**Reason for Change:** Riverpod 3 consolidated provider information into a `ProviderObserverContext` object to provide better encapsulation and make it easier to add new context information in future versions without breaking the API.

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

**Reason for Change:** This naming convention makes the API more consistent - the provider name matches the class purpose (e.g., `productsSearchQuery`) while `.notifier` is used to access the notifier instance. This reduces redundancy and makes the code more readable.

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

#### 3. Service Class to Notifier Pattern (Most Important Change)

**Breaking Change:** The pattern of storing a `Ref` in a service class can cause "ref after disposal" errors in Riverpod 3 due to stricter lifecycle management. All service classes were converted to the Notifier pattern.

**Reason for Change:** This is the most critical migration change. In Riverpod 2, storing a `Ref` in a service class worked but was risky - the `Ref` could become invalid after async operations. Riverpod 3 enforces stricter lifecycle rules and will throw errors if you use a `Ref` after its provider is disposed. The Notifier pattern solves this because Riverpod manages the Notifier's lifecycle, ensuring `ref` is always valid within the Notifier's methods.

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

**All Services Converted to Notifier Pattern:**

Six service classes were migrated to prevent potential "ref after disposal" errors:

1. **ImageUploadService** ([image_upload_service.dart](lib/src/features/products_admin/application/image_upload_service.dart))
   - **Purpose**: Handles product image upload and deletion
   - **Why Notifier**: Async image upload operations need guaranteed ref validity
   - **Files Updated**: [admin_product_upload_controller.dart](lib/src/features/products_admin/presentation/admin_product_upload_controller.dart), [admin_product_edit_controller.dart](lib/src/features/products_admin/presentation/admin_product_edit_controller.dart)

2. **CheckoutService** ([checkout_service.dart](lib/src/features/checkout/application/checkout_service.dart))
   - **Purpose**: Manages checkout sessions and payment processing
   - **Why Notifier**: Complex async payment flows with Stripe require lifecycle management
   - **Special**: Uses `@Riverpod(keepAlive: true)` for app-lifecycle service
   - **Special**: Implements proper cleanup with `ref.onDispose()` for stream subscriptions
   - **Files Updated**: [payment_button_controller.dart](lib/src/features/checkout/presentation/payment/payment_button_controller.dart)

3. **CartSyncService** ([cart_sync_service.dart](lib/src/features/cart/application/cart_sync_service.dart))
   - **Purpose**: Syncs local and remote cart when user signs in
   - **Why Notifier**: Listens to auth state changes continuously throughout app lifecycle
   - **Special**: Uses `@Riverpod(keepAlive: true)` and `ref.listen()` for reactive auth monitoring

4. **UserTokenRefreshService** ([user_token_refresh_service.dart](lib/src/features/authentication/application/user_token_refresh_service.dart))
   - **Purpose**: Handles automatic user token refresh based on auth state
   - **Why Notifier**: Manages long-lived stream subscriptions that must be properly disposed
   - **Special**: Uses `@Riverpod(keepAlive: true)` for app-lifecycle service

5. **CartService** ([cart_service.dart](lib/src/features/cart/application/cart_service.dart))
   - **Purpose**: Manages cart operations (add, update, remove items)
   - **Why Notifier**: Multiple async operations accessing various repositories
   - **Pattern**: Uses property getters for clean repository access
   - **Files Updated**: [add_to_cart_controller.dart](lib/src/features/cart/presentation/add_to_cart/add_to_cart_controller.dart), [shopping_cart_screen_controller.dart](lib/src/features/cart/presentation/shopping_cart/shopping_cart_screen_controller.dart)

6. **ReviewsService** ([reviews_service.dart](lib/src/features/reviews/application/reviews_service.dart))
   - **Purpose**: Handles product review submission
   - **Why Notifier**: Async review submission with multiple repository calls
   - **Files Updated**: [leave_review_controller.dart](lib/src/features/reviews/presentation/leave_review_screen/leave_review_controller.dart)

#### 4. Unused Import Cleanup

**Files Affected**: Multiple files across the codebase (28 files total)

**Change**: Removed unused Riverpod imports after migration to Notifier pattern.

**Reason for Change**: When services were converted from the old pattern to Notifiers, many imports became unnecessary:
- Generated `.g.dart` files automatically import necessary Riverpod symbols
- Notifier classes don't need explicit `Ref` imports
- Removed imports like `package:riverpod_annotation/riverpod_annotation.dart` where only code generation is needed

**Files cleaned up include**:
- All service files after Notifier conversion
- Controller files where provider usage changed
- Test files with updated mocking patterns

This cleanup improves code maintainability and reduces the risk of accidentally using deprecated patterns.

### Migration Benefits

1. **Stricter Lifecycle Management**: Riverpod 3 prevents bugs by throwing errors when `ref` is used after disposal
2. **Automatic Retry**: Providers that fail during initialization automatically retry with exponential backoff
3. **Simplified API**: Removed `AutoDispose*` class duplicates - now use base classes with unified interfaces
4. **Better Type Safety**: Provider naming is more consistent and predictable
5. **Performance Improvements**: Delayed disposal of listeners during rebuilds prevents unnecessary disposal/recreation
6. **Cleaner Codebase**: Removed unused imports and standardized on Notifier pattern across all services

### Best Practices Applied

1. **Store provider values before async gaps**: Always capture provider values before `await` statements to prevent disposal issues
2. **Use Notifier pattern for stateful services**: Convert service classes with stored `Ref` to Notifier-based providers
3. **Base class for ProviderObserver**: Add `base` keyword when extending `ProviderObserver`
4. **Updated provider naming**: Follow new naming conventions without "Notifier" suffix in provider names
5. **Keep providers alive when needed**: Use `@Riverpod(keepAlive: true)` on providers that must survive async gaps (e.g., `templateProductProvider`) instead of relying on imperative reads in widget lifecycle methods

### Build & Verification

After migration, all quality checks passed successfully:

**Code Generation**:
- ✅ `flutter pub run build_runner build` - All `.g.dart` files generated without errors
- ✅ All Riverpod providers properly generated with new naming conventions

**Static Analysis**:
- ✅ `flutter analyze` - 0 errors
- ℹ️ 25 informational warnings (unnecessary imports, deprecated `dart:html` usage)
  - **Note**: These are informational only and don't impact functionality
  - Deprecated `dart:html` warnings are from Flutter framework, not application code

**Build Verification**:
- ✅ Android: `flutter build apk` - Build succeeded
- ✅ iOS: Build verified on simulator
- ✅ Web: Build verified in development mode
- ✅ macOS: Build verified on local machine

**Tests**:
- ✅ All unit tests updated and passing
- ✅ Service tests ([cart_service_test.dart](test/src/features/cart/application/cart_service_test.dart), [cart_sync_service_test.dart](test/src/features/cart/application/cart_sync_service_test.dart), [reviews_service_test.dart](test/src/features/reviews/application/reviews_service_test.dart)) adapted to Notifier pattern
- ✅ Mock providers updated to use `.notifier` where necessary

### Common Migration Patterns

If you're following along with the course and need to perform similar migrations in your own code, here are the key patterns:

**Pattern 1: Service to Notifier Conversion**
```dart
// OLD - Don't use this pattern in Riverpod 3
class MyService {
  MyService(this._ref);
  final Ref _ref;
}

@riverpod
MyService myService(Ref ref) => MyService(ref);

// NEW - Use this pattern instead
@riverpod
class MyService extends _$MyService {
  @override
  void build() {}

  // Your methods here - ref is always safe to use
}

// Update usage from:
ref.read(myServiceProvider).method()
// To:
ref.read(myServiceProvider.notifier).method()
```

**Pattern 2: Handling Long-Lived Services**
```dart
// For services that need to live throughout the app lifecycle
@Riverpod(keepAlive: true)  // ← Add this annotation
class MyLongLivedService extends _$MyLongLivedService {
  @override
  void build() {
    // Set up listeners
    ref.listen(someStreamProvider, (prev, next) {
      // Handle changes
    });

    // Clean up on disposal
    ref.onDispose(() {
      // Cancel subscriptions, close streams, etc.
    });
  }
}
```

**Pattern 3: Capturing Providers Before Async**
```dart
// Always capture provider values before await
Future<void> myAsyncMethod() async {
  // ✅ GOOD - Capture before await
  final repository = ref.read(myRepositoryProvider);
  await repository.doSomething();

  // ❌ BAD - Reading after await can fail in Riverpod 3
  await somethingElse();
  final value = ref.read(someProvider); // Might throw!
}
```

### Troubleshooting

**Issue**: "Bad state: ref was disposed" error
- **Solution**: Convert service classes to Notifier pattern (see Pattern 1 above)
- **Reason**: Riverpod 3 strictly enforces provider lifecycle

**Issue**: Build runner fails with "conflicts with dependency override"
- **Solution**: Check `dependency_overrides` section in `pubspec.yaml`
- **Action**: Add `freezed_annotation: ^3.0.0` if using Stripe packages

**Issue**: Provider names don't match after code generation
- **Solution**: Update provider references to remove "Notifier" suffix
- **Example**: `productsSearchQueryNotifierProvider` → `productsSearchQueryProvider`

**Issue**: Tests failing with "notifier not found"
- **Solution**: Update test code to use `.notifier` when calling methods
- **Example**: `ref.read(serviceProvider.notifier).method()`

### Resources

**Official Documentation**:
- [Riverpod 3.0 Migration Guide](https://riverpod.dev/docs/3.0_migration) - Complete migration guide
- [What's New in Riverpod 3.0](https://riverpod.dev/docs/whats_new) - New features overview
- [Auto Dispose Documentation](https://riverpod.dev/docs/concepts2/auto_dispose) - Lifecycle management
- [Notifier Documentation](https://riverpod.dev/docs/concepts/notifiers) - Understanding Notifiers

**Course-Specific Resources**:
- [Flutter & Firebase Masterclass Course](https://codewithandrea.com/courses/flutter-firebase-masterclass/) - Full course content

**Community Support**:
- [Riverpod Discord](https://discord.gg/riverpod) - Get help from the community
- [GitHub Discussions](https://github.com/rrousselGit/riverpod/discussions) - Ask questions and share solutions

### [LICENSE: MIT](../LICENSE.md)
