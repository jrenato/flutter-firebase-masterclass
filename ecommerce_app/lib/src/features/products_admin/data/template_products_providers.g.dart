// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_products_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(templateProductsRepository)
const templateProductsRepositoryProvider =
    TemplateProductsRepositoryProvider._();

final class TemplateProductsRepositoryProvider extends $FunctionalProvider<
    ProductsRepository,
    ProductsRepository,
    ProductsRepository> with $Provider<ProductsRepository> {
  const TemplateProductsRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'templateProductsRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$templateProductsRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProductsRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ProductsRepository create(Ref ref) {
    return templateProductsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductsRepository>(value),
    );
  }
}

String _$templateProductsRepositoryHash() =>
    r'15a15405e902bfc924b37e66aaa29fab2ff8c11c';

/// * A [StreamProvider] to return only the template products to be shown in the
/// * [AdminProductsAddScreen] widget

@ProviderFor(templateProductsList)
const templateProductsListProvider = TemplateProductsListProvider._();

/// * A [StreamProvider] to return only the template products to be shown in the
/// * [AdminProductsAddScreen] widget

final class TemplateProductsListProvider extends $FunctionalProvider<
        AsyncValue<List<Product>>, List<Product>, Stream<List<Product>>>
    with $FutureModifier<List<Product>>, $StreamProvider<List<Product>> {
  /// * A [StreamProvider] to return only the template products to be shown in the
  /// * [AdminProductsAddScreen] widget
  const TemplateProductsListProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'templateProductsListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$templateProductsListHash();

  @$internal
  @override
  $StreamProviderElement<List<Product>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<Product>> create(Ref ref) {
    return templateProductsList(ref);
  }
}

String _$templateProductsListHash() =>
    r'efc2722109517442166cb9f05e918bb312859df7';

@ProviderFor(templateProduct)
const templateProductProvider = TemplateProductFamily._();

final class TemplateProductProvider extends $FunctionalProvider<
        AsyncValue<Product?>, Product?, Stream<Product?>>
    with $FutureModifier<Product?>, $StreamProvider<Product?> {
  const TemplateProductProvider._(
      {required TemplateProductFamily super.from,
      required ProductID super.argument})
      : super(
          retry: null,
          name: r'templateProductProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$templateProductHash();

  @override
  String toString() {
    return r'templateProductProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<Product?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Product?> create(Ref ref) {
    final argument = this.argument as ProductID;
    return templateProduct(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TemplateProductProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$templateProductHash() => r'e34d186ef6ec4fde0639b34f991784aa08b6777e';

final class TemplateProductFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Product?>, ProductID> {
  const TemplateProductFamily._()
      : super(
          retry: null,
          name: r'templateProductProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: false,
        );

  TemplateProductProvider call(
    ProductID id,
  ) =>
      TemplateProductProvider._(argument: id, from: this);

  @override
  String toString() => r'templateProductProvider';
}
