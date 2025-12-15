// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_sync_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Notifier-based service for syncing cart between local and remote storage
/// This pattern is recommended in Riverpod 3 for services with async operations
// * Using keepAlive since this should live for the entire app lifecycle

@ProviderFor(CartSyncService)
const cartSyncServiceProvider = CartSyncServiceProvider._();

/// Notifier-based service for syncing cart between local and remote storage
/// This pattern is recommended in Riverpod 3 for services with async operations
// * Using keepAlive since this should live for the entire app lifecycle
final class CartSyncServiceProvider
    extends $NotifierProvider<CartSyncService, void> {
  /// Notifier-based service for syncing cart between local and remote storage
  /// This pattern is recommended in Riverpod 3 for services with async operations
// * Using keepAlive since this should live for the entire app lifecycle
  const CartSyncServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'cartSyncServiceProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$cartSyncServiceHash();

  @$internal
  @override
  CartSyncService create() => CartSyncService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$cartSyncServiceHash() => r'24c699f42b4f60e9946a42552043b5af91ce55e3';

/// Notifier-based service for syncing cart between local and remote storage
/// This pattern is recommended in Riverpod 3 for services with async operations
// * Using keepAlive since this should live for the entire app lifecycle

abstract class _$CartSyncService extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<void, void>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<void, void>, void, Object?, Object?>;
    element.handleValue(ref, null);
  }
}
