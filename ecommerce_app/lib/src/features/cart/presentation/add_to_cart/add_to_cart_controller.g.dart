// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddToCartController)
const addToCartControllerProvider = AddToCartControllerProvider._();

final class AddToCartControllerProvider
    extends $AsyncNotifierProvider<AddToCartController, void> {
  const AddToCartControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'addToCartControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$addToCartControllerHash();

  @$internal
  @override
  AddToCartController create() => AddToCartController();
}

String _$addToCartControllerHash() =>
    r'9561d9e66460bf7ea99dce03b7a5900b38a7f930';

abstract class _$AddToCartController extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<void>, void>,
        AsyncValue<void>,
        Object?,
        Object?>;
    element.handleValue(ref, null);
  }
}

@ProviderFor(ItemQuantityController)
const itemQuantityControllerProvider = ItemQuantityControllerProvider._();

final class ItemQuantityControllerProvider
    extends $NotifierProvider<ItemQuantityController, int> {
  const ItemQuantityControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'itemQuantityControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$itemQuantityControllerHash();

  @$internal
  @override
  ItemQuantityController create() => ItemQuantityController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$itemQuantityControllerHash() =>
    r'e3aebb6b912ee6ef8fd2ff6b1ab26201380f7862';

abstract class _$ItemQuantityController extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element = ref.element
        as $ClassProviderElement<AnyNotifier<int, int>, int, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
