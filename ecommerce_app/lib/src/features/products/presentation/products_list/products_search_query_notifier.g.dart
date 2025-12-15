// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_search_query_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// A simple notifier class to keep track of the search query

@ProviderFor(ProductsSearchQueryNotifier)
const productsSearchQueryProvider = ProductsSearchQueryNotifierProvider._();

/// A simple notifier class to keep track of the search query
final class ProductsSearchQueryNotifierProvider
    extends $NotifierProvider<ProductsSearchQueryNotifier, String> {
  /// A simple notifier class to keep track of the search query
  const ProductsSearchQueryNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'productsSearchQueryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$productsSearchQueryNotifierHash();

  @$internal
  @override
  ProductsSearchQueryNotifier create() => ProductsSearchQueryNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$productsSearchQueryNotifierHash() =>
    r'308060397076bc2d8b5156a3c72d8ab86c8dad03';

/// A simple notifier class to keep track of the search query

abstract class _$ProductsSearchQueryNotifier extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String, String>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<String, String>, String, Object?, Object?>;
    element.handleValue(ref, created);
  }
}

/// A provider that returns the search results for the current search query

@ProviderFor(productsSearchResults)
const productsSearchResultsProvider = ProductsSearchResultsProvider._();

/// A provider that returns the search results for the current search query

final class ProductsSearchResultsProvider extends $FunctionalProvider<
        AsyncValue<List<Product>>, List<Product>, FutureOr<List<Product>>>
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  /// A provider that returns the search results for the current search query
  const ProductsSearchResultsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'productsSearchResultsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$productsSearchResultsHash();

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    return productsSearchResults(ref);
  }
}

String _$productsSearchResultsHash() =>
    r'd6270ebf410842b4e50182c87a49e1c9fe7037b6';
