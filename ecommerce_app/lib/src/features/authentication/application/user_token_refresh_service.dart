import 'dart:async';

import 'package:ecommerce_app/src/features/authentication/data/auth_repository.dart';
import 'package:ecommerce_app/src/features/authentication/data/user_metadata_repository.dart';
import 'package:ecommerce_app/src/features/authentication/domain/app_user.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_token_refresh_service.g.dart';

/// Notifier-based service for refreshing user tokens on metadata changes
/// This pattern is recommended in Riverpod 3 for services with async operations
@Riverpod(keepAlive: true)
class UserTokenRefreshService extends _$UserTokenRefreshService {
  StreamSubscription<DateTime?>? _subscription;

  @override
  void build() {
    // Register cleanup when service is disposed
    ref.onDispose(_dispose);

    // Listen for auth state changes and manage token refresh subscriptions
    ref.listen<AsyncValue<AppUser?>>(authStateChangesProvider,
        (previous, next) {
      final user = next.value;
      // * if a previous subscription was active, dispose it
      _subscription?.cancel();
      if (user != null) {
        // Ref is lifecycle-managed by the Notifier
        // Safe to use in stream listeners
        final userMetadataRepository = ref.read(userMetadataRepositoryProvider);
        final authRepository = ref.read(authRepositoryProvider);

        // * on sign-in, listen to user metadata updates
        // * (and register a subscription)
        _subscription = userMetadataRepository
            .watchUserMetadata(user.uid)
            .listen((refreshTime) async {
          // * read user again as it may be null by the time we reach this callback
          final user = authRepository.currentUser;
          if (refreshTime != null && user != null) {
            debugPrint('Force refresh token: $refreshTime, uid:${user.uid}');
            // * force an ID token refresh, which will cause a new stream event
            // * to be emitted by [idTokenChanges]
            await user.forceRefreshIdToken();
          }
        });
      }
    });
  }

  void _dispose() {
    _subscription?.cancel();
  }
}
