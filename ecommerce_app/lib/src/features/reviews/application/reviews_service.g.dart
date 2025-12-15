// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Notifier-based service for submitting product reviews
/// This pattern is recommended in Riverpod 3 for services with async operations

@ProviderFor(ReviewsService)
const reviewsServiceProvider = ReviewsServiceProvider._();

/// Notifier-based service for submitting product reviews
/// This pattern is recommended in Riverpod 3 for services with async operations
final class ReviewsServiceProvider
    extends $NotifierProvider<ReviewsService, void> {
  /// Notifier-based service for submitting product reviews
  /// This pattern is recommended in Riverpod 3 for services with async operations
  const ReviewsServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'reviewsServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$reviewsServiceHash();

  @$internal
  @override
  ReviewsService create() => ReviewsService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$reviewsServiceHash() => r'ca3db5473ba3bb215d67a10203c13e5871c2b42e';

/// Notifier-based service for submitting product reviews
/// This pattern is recommended in Riverpod 3 for services with async operations

abstract class _$ReviewsService extends $Notifier<void> {
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

/// Check if a product was previously reviewed by the user

@ProviderFor(userReviewFuture)
const userReviewFutureProvider = UserReviewFutureFamily._();

/// Check if a product was previously reviewed by the user

final class UserReviewFutureProvider
    extends $FunctionalProvider<AsyncValue<Review?>, Review?, FutureOr<Review?>>
    with $FutureModifier<Review?>, $FutureProvider<Review?> {
  /// Check if a product was previously reviewed by the user
  const UserReviewFutureProvider._(
      {required UserReviewFutureFamily super.from,
      required ProductID super.argument})
      : super(
          retry: null,
          name: r'userReviewFutureProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$userReviewFutureHash();

  @override
  String toString() {
    return r'userReviewFutureProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Review?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Review?> create(Ref ref) {
    final argument = this.argument as ProductID;
    return userReviewFuture(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserReviewFutureProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userReviewFutureHash() => r'ffd3abe0878704159bb7a63e6cb46377c9054a38';

/// Check if a product was previously reviewed by the user

final class UserReviewFutureFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Review?>, ProductID> {
  const UserReviewFutureFamily._()
      : super(
          retry: null,
          name: r'userReviewFutureProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Check if a product was previously reviewed by the user

  UserReviewFutureProvider call(
    ProductID productId,
  ) =>
      UserReviewFutureProvider._(argument: productId, from: this);

  @override
  String toString() => r'userReviewFutureProvider';
}

/// Check if a product was previously reviewed by the user

@ProviderFor(userReviewStream)
const userReviewStreamProvider = UserReviewStreamFamily._();

/// Check if a product was previously reviewed by the user

final class UserReviewStreamProvider
    extends $FunctionalProvider<AsyncValue<Review?>, Review?, Stream<Review?>>
    with $FutureModifier<Review?>, $StreamProvider<Review?> {
  /// Check if a product was previously reviewed by the user
  const UserReviewStreamProvider._(
      {required UserReviewStreamFamily super.from,
      required ProductID super.argument})
      : super(
          retry: null,
          name: r'userReviewStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$userReviewStreamHash();

  @override
  String toString() {
    return r'userReviewStreamProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<Review?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Review?> create(Ref ref) {
    final argument = this.argument as ProductID;
    return userReviewStream(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserReviewStreamProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userReviewStreamHash() => r'a2ba31997d0122483ae686b9942cb555c69801f7';

/// Check if a product was previously reviewed by the user

final class UserReviewStreamFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Review?>, ProductID> {
  const UserReviewStreamFamily._()
      : super(
          retry: null,
          name: r'userReviewStreamProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Check if a product was previously reviewed by the user

  UserReviewStreamProvider call(
    ProductID productId,
  ) =>
      UserReviewStreamProvider._(argument: productId, from: this);

  @override
  String toString() => r'userReviewStreamProvider';
}
