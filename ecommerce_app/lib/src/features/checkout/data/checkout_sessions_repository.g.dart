// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_sessions_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(checkoutSessionsRepository)
const checkoutSessionsRepositoryProvider =
    CheckoutSessionsRepositoryProvider._();

final class CheckoutSessionsRepositoryProvider extends $FunctionalProvider<
    CheckoutSessionsRepository,
    CheckoutSessionsRepository,
    CheckoutSessionsRepository> with $Provider<CheckoutSessionsRepository> {
  const CheckoutSessionsRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'checkoutSessionsRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$checkoutSessionsRepositoryHash();

  @$internal
  @override
  $ProviderElement<CheckoutSessionsRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CheckoutSessionsRepository create(Ref ref) {
    return checkoutSessionsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckoutSessionsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckoutSessionsRepository>(value),
    );
  }
}

String _$checkoutSessionsRepositoryHash() =>
    r'28a211029e5db05813c91b0cf49bd5cc75000fc0';
