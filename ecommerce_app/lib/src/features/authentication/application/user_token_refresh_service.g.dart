// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_token_refresh_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Notifier-based service for refreshing user tokens on metadata changes
/// This pattern is recommended in Riverpod 3 for services with async operations

@ProviderFor(UserTokenRefreshService)
const userTokenRefreshServiceProvider = UserTokenRefreshServiceProvider._();

/// Notifier-based service for refreshing user tokens on metadata changes
/// This pattern is recommended in Riverpod 3 for services with async operations
final class UserTokenRefreshServiceProvider
    extends $NotifierProvider<UserTokenRefreshService, void> {
  /// Notifier-based service for refreshing user tokens on metadata changes
  /// This pattern is recommended in Riverpod 3 for services with async operations
  const UserTokenRefreshServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'userTokenRefreshServiceProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$userTokenRefreshServiceHash();

  @$internal
  @override
  UserTokenRefreshService create() => UserTokenRefreshService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$userTokenRefreshServiceHash() =>
    r'5aab6e6fc0c2cb7d11cd1d0039ef088bb2efa8d8';

/// Notifier-based service for refreshing user tokens on metadata changes
/// This pattern is recommended in Riverpod 3 for services with async operations

abstract class _$UserTokenRefreshService extends $Notifier<void> {
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
