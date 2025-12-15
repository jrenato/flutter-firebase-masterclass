// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_search_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productsSearchRepository)
const productsSearchRepositoryProvider = ProductsSearchRepositoryProvider._();

final class ProductsSearchRepositoryProvider extends $FunctionalProvider<
    ProductsSearchRepository,
    ProductsSearchRepository,
    ProductsSearchRepository> with $Provider<ProductsSearchRepository> {
  const ProductsSearchRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'productsSearchRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$productsSearchRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProductsSearchRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ProductsSearchRepository create(Ref ref) {
    return productsSearchRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductsSearchRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductsSearchRepository>(value),
    );
  }
}

String _$productsSearchRepositoryHash() =>
    r'14d9d849934f554cafe9f7bcb7d246ff42e76c74';

@ProviderFor(productsListSearch)
const productsListSearchProvider = ProductsListSearchFamily._();

final class ProductsListSearchProvider extends $FunctionalProvider<
        AsyncValue<List<Product>>, List<Product>, FutureOr<List<Product>>>
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  const ProductsListSearchProvider._(
      {required ProductsListSearchFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'productsListSearchProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$productsListSearchHash();

  @override
  String toString() {
    return r'productsListSearchProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    final argument = this.argument as String;
    return productsListSearch(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ProductsListSearchProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productsListSearchHash() =>
    r'ba15dafcfc53f8d3fcfcc8f0c2eba990897f7b37';

final class ProductsListSearchFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Product>>, String> {
  const ProductsListSearchFamily._()
      : super(
          retry: null,
          name: r'productsListSearchProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  ProductsListSearchProvider call(
    String query,
  ) =>
      ProductsListSearchProvider._(argument: query, from: this);

  @override
  String toString() => r'productsListSearchProvider';
}
