// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_cart_screen_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ShoppingCartScreenController)
const shoppingCartScreenControllerProvider =
    ShoppingCartScreenControllerProvider._();

final class ShoppingCartScreenControllerProvider
    extends $AsyncNotifierProvider<ShoppingCartScreenController, void> {
  const ShoppingCartScreenControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'shoppingCartScreenControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$shoppingCartScreenControllerHash();

  @$internal
  @override
  ShoppingCartScreenController create() => ShoppingCartScreenController();
}

String _$shoppingCartScreenControllerHash() =>
    r'24035b115aa5ceac6df133b59a198ade490d9d37';

abstract class _$ShoppingCartScreenController extends $AsyncNotifier<void> {
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
