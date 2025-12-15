// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_cart_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(localCartRepository)
const localCartRepositoryProvider = LocalCartRepositoryProvider._();

final class LocalCartRepositoryProvider extends $FunctionalProvider<
    LocalCartRepository,
    LocalCartRepository,
    LocalCartRepository> with $Provider<LocalCartRepository> {
  const LocalCartRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'localCartRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$localCartRepositoryHash();

  @$internal
  @override
  $ProviderElement<LocalCartRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LocalCartRepository create(Ref ref) {
    return localCartRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocalCartRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocalCartRepository>(value),
    );
  }
}

String _$localCartRepositoryHash() =>
    r'a9f6d6a53c7543c55e78dc753787171b1a62b066';
