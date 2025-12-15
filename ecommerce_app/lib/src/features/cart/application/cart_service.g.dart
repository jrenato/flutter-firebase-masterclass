// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cartService)
const cartServiceProvider = CartServiceProvider._();

final class CartServiceProvider
    extends $FunctionalProvider<CartService, CartService, CartService>
    with $Provider<CartService> {
  const CartServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'cartServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$cartServiceHash();

  @$internal
  @override
  $ProviderElement<CartService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CartService create(Ref ref) {
    return cartService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartService>(value),
    );
  }
}

String _$cartServiceHash() => r'39c8f9110000b97aacdb92c65d04e7d467a05feb';

@ProviderFor(cart)
const cartProvider = CartProvider._();

final class CartProvider
    extends $FunctionalProvider<AsyncValue<Cart>, Cart, Stream<Cart>>
    with $FutureModifier<Cart>, $StreamProvider<Cart> {
  const CartProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'cartProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$cartHash();

  @$internal
  @override
  $StreamProviderElement<Cart> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Cart> create(Ref ref) {
    return cart(ref);
  }
}

String _$cartHash() => r'869f594bde7568b7863f4953bd1b763fbc52afb6';

@ProviderFor(cartItemsCount)
const cartItemsCountProvider = CartItemsCountProvider._();

final class CartItemsCountProvider extends $FunctionalProvider<int, int, int>
    with $Provider<int> {
  const CartItemsCountProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'cartItemsCountProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$cartItemsCountHash();

  @$internal
  @override
  $ProviderElement<int> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  int create(Ref ref) {
    return cartItemsCount(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$cartItemsCountHash() => r'691fed458b5c5b8d7a5e9602dfbf29019ffc9175';

@ProviderFor(cartTotal)
const cartTotalProvider = CartTotalProvider._();

final class CartTotalProvider
    extends $FunctionalProvider<AsyncValue<double>, double, FutureOr<double>>
    with $FutureModifier<double>, $FutureProvider<double> {
  const CartTotalProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'cartTotalProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$cartTotalHash();

  @$internal
  @override
  $FutureProviderElement<double> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<double> create(Ref ref) {
    return cartTotal(ref);
  }
}

String _$cartTotalHash() => r'5e4ac57afcdfc2e55821333717f0a718a69eb6ac';

@ProviderFor(productsInCart)
const productsInCartProvider = ProductsInCartProvider._();

final class ProductsInCartProvider extends $FunctionalProvider<
        AsyncValue<
            List<
                ({
                  Product product,
                  int quantity,
                })>>,
        List<
            ({
              Product product,
              int quantity,
            })>,
        FutureOr<
            List<
                ({
                  Product product,
                  int quantity,
                })>>>
    with
        $FutureModifier<
            List<
                ({
                  Product product,
                  int quantity,
                })>>,
        $FutureProvider<
            List<
                ({
                  Product product,
                  int quantity,
                })>> {
  const ProductsInCartProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'productsInCartProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$productsInCartHash();

  @$internal
  @override
  $FutureProviderElement<
      List<
          ({
            Product product,
            int quantity,
          })>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<
      List<
          ({
            Product product,
            int quantity,
          })>> create(Ref ref) {
    return productsInCart(ref);
  }
}

String _$productsInCartHash() => r'8f0b05d396df50e854a1dbfbea4b6e22f2cb121c';

@ProviderFor(itemAvailableQuantity)
const itemAvailableQuantityProvider = ItemAvailableQuantityFamily._();

final class ItemAvailableQuantityProvider
    extends $FunctionalProvider<int, int, int> with $Provider<int> {
  const ItemAvailableQuantityProvider._(
      {required ItemAvailableQuantityFamily super.from,
      required Product super.argument})
      : super(
          retry: null,
          name: r'itemAvailableQuantityProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$itemAvailableQuantityHash();

  @override
  String toString() {
    return r'itemAvailableQuantityProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<int> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  int create(Ref ref) {
    final argument = this.argument as Product;
    return itemAvailableQuantity(
      ref,
      argument,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ItemAvailableQuantityProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$itemAvailableQuantityHash() =>
    r'7862f2c468049a37946711a9e97e8c66b35fe020';

final class ItemAvailableQuantityFamily extends $Family
    with $FunctionalFamilyOverride<int, Product> {
  const ItemAvailableQuantityFamily._()
      : super(
          retry: null,
          name: r'itemAvailableQuantityProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  ItemAvailableQuantityProvider call(
    Product product,
  ) =>
      ItemAvailableQuantityProvider._(argument: product, from: this);

  @override
  String toString() => r'itemAvailableQuantityProvider';
}
