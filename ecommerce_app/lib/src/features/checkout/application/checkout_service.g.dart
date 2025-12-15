// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Notifier-based service for checkout and payment processing
/// This pattern is recommended in Riverpod 3 for services with async operations

@ProviderFor(CheckoutService)
const checkoutServiceProvider = CheckoutServiceProvider._();

/// Notifier-based service for checkout and payment processing
/// This pattern is recommended in Riverpod 3 for services with async operations
final class CheckoutServiceProvider
    extends $NotifierProvider<CheckoutService, void> {
  /// Notifier-based service for checkout and payment processing
  /// This pattern is recommended in Riverpod 3 for services with async operations
  const CheckoutServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'checkoutServiceProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$checkoutServiceHash();

  @$internal
  @override
  CheckoutService create() => CheckoutService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$checkoutServiceHash() => r'c2cb86e05cad01f0cadfe6a28c9e917f295dfaa9';

/// Notifier-based service for checkout and payment processing
/// This pattern is recommended in Riverpod 3 for services with async operations

abstract class _$CheckoutService extends $Notifier<void> {
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
