// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_orders_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Watch the list of user orders
/// NOTE: Only watch this provider if the user is signed in.

@ProviderFor(userOrders)
const userOrdersProvider = UserOrdersProvider._();

/// Watch the list of user orders
/// NOTE: Only watch this provider if the user is signed in.

final class UserOrdersProvider extends $FunctionalProvider<
        AsyncValue<List<Order>>, List<Order>, Stream<List<Order>>>
    with $FutureModifier<List<Order>>, $StreamProvider<List<Order>> {
  /// Watch the list of user orders
  /// NOTE: Only watch this provider if the user is signed in.
  const UserOrdersProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'userOrdersProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$userOrdersHash();

  @$internal
  @override
  $StreamProviderElement<List<Order>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<Order>> create(Ref ref) {
    return userOrders(ref);
  }
}

String _$userOrdersHash() => r'9de05d80e372e45d75dcd35c102c9cde16927978';

/// Check if a product was previously purchased by the user

@ProviderFor(matchingUserOrders)
const matchingUserOrdersProvider = MatchingUserOrdersFamily._();

/// Check if a product was previously purchased by the user

final class MatchingUserOrdersProvider extends $FunctionalProvider<
        AsyncValue<List<Order>>, List<Order>, Stream<List<Order>>>
    with $FutureModifier<List<Order>>, $StreamProvider<List<Order>> {
  /// Check if a product was previously purchased by the user
  const MatchingUserOrdersProvider._(
      {required MatchingUserOrdersFamily super.from,
      required ProductID super.argument})
      : super(
          retry: null,
          name: r'matchingUserOrdersProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$matchingUserOrdersHash();

  @override
  String toString() {
    return r'matchingUserOrdersProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<List<Order>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<Order>> create(Ref ref) {
    final argument = this.argument as ProductID;
    return matchingUserOrders(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MatchingUserOrdersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$matchingUserOrdersHash() =>
    r'd617757f3d6919b19f69f927c1f2dd1747186a6d';

/// Check if a product was previously purchased by the user

final class MatchingUserOrdersFamily extends $Family
    with $FunctionalFamilyOverride<Stream<List<Order>>, ProductID> {
  const MatchingUserOrdersFamily._()
      : super(
          retry: null,
          name: r'matchingUserOrdersProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Check if a product was previously purchased by the user

  MatchingUserOrdersProvider call(
    ProductID productId,
  ) =>
      MatchingUserOrdersProvider._(argument: productId, from: this);

  @override
  String toString() => r'matchingUserOrdersProvider';
}

@ProviderFor(latestUserOrderId)
const latestUserOrderIdProvider = LatestUserOrderIdProvider._();

final class LatestUserOrderIdProvider extends $FunctionalProvider<
        AsyncValue<UserOrderID>, UserOrderID, Stream<UserOrderID>>
    with $FutureModifier<UserOrderID>, $StreamProvider<UserOrderID> {
  const LatestUserOrderIdProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'latestUserOrderIdProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$latestUserOrderIdHash();

  @$internal
  @override
  $StreamProviderElement<UserOrderID> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<UserOrderID> create(Ref ref) {
    return latestUserOrderId(ref);
  }
}

String _$latestUserOrderIdHash() => r'82bed71230a32eda0b8d548db229db6a2afd60d7';
