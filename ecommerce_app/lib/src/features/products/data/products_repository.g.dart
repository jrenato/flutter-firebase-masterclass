// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productsRepository)
const productsRepositoryProvider = ProductsRepositoryProvider._();

final class ProductsRepositoryProvider extends $FunctionalProvider<
    ProductsRepository,
    ProductsRepository,
    ProductsRepository> with $Provider<ProductsRepository> {
  const ProductsRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'productsRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$productsRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProductsRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ProductsRepository create(Ref ref) {
    return productsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductsRepository>(value),
    );
  }
}

String _$productsRepositoryHash() =>
    r'6bb9aac84882ffe94981da5617a35df0343457a6';

@ProviderFor(productsListStream)
const productsListStreamProvider = ProductsListStreamProvider._();

final class ProductsListStreamProvider extends $FunctionalProvider<
        AsyncValue<List<Product>>, List<Product>, Stream<List<Product>>>
    with $FutureModifier<List<Product>>, $StreamProvider<List<Product>> {
  const ProductsListStreamProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'productsListStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$productsListStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<Product>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<Product>> create(Ref ref) {
    return productsListStream(ref);
  }
}

String _$productsListStreamHash() =>
    r'22462209e383d9cb6a76936536ec6a6993ce872a';

@ProviderFor(productsListFuture)
const productsListFutureProvider = ProductsListFutureProvider._();

final class ProductsListFutureProvider extends $FunctionalProvider<
        AsyncValue<List<Product>>, List<Product>, FutureOr<List<Product>>>
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  const ProductsListFutureProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'productsListFutureProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$productsListFutureHash();

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    return productsListFuture(ref);
  }
}

String _$productsListFutureHash() =>
    r'742610200192d5593bc85a891d018f70898e048a';

@ProviderFor(productStream)
const productStreamProvider = ProductStreamFamily._();

final class ProductStreamProvider extends $FunctionalProvider<
        AsyncValue<Product?>, Product?, Stream<Product?>>
    with $FutureModifier<Product?>, $StreamProvider<Product?> {
  const ProductStreamProvider._(
      {required ProductStreamFamily super.from,
      required ProductID super.argument})
      : super(
          retry: null,
          name: r'productStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$productStreamHash();

  @override
  String toString() {
    return r'productStreamProvider'
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
    return productStream(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ProductStreamProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productStreamHash() => r'a1b468bcbc42b7c8e9a8989f913d1582c50af9aa';

final class ProductStreamFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Product?>, ProductID> {
  const ProductStreamFamily._()
      : super(
          retry: null,
          name: r'productStreamProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  ProductStreamProvider call(
    ProductID id,
  ) =>
      ProductStreamProvider._(argument: id, from: this);

  @override
  String toString() => r'productStreamProvider';
}

@ProviderFor(productFuture)
const productFutureProvider = ProductFutureFamily._();

final class ProductFutureProvider extends $FunctionalProvider<
        AsyncValue<Product?>, Product?, FutureOr<Product?>>
    with $FutureModifier<Product?>, $FutureProvider<Product?> {
  const ProductFutureProvider._(
      {required ProductFutureFamily super.from,
      required ProductID super.argument})
      : super(
          retry: null,
          name: r'productFutureProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$productFutureHash();

  @override
  String toString() {
    return r'productFutureProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Product?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Product?> create(Ref ref) {
    final argument = this.argument as ProductID;
    return productFuture(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ProductFutureProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productFutureHash() => r'59e38e74159692b0215458b7adf2d9594ac460bc';

final class ProductFutureFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Product?>, ProductID> {
  const ProductFutureFamily._()
      : super(
          retry: null,
          name: r'productFutureProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  ProductFutureProvider call(
    ProductID id,
  ) =>
      ProductFutureProvider._(argument: id, from: this);

  @override
  String toString() => r'productFutureProvider';
}
