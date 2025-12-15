// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(reviewsRepository)
const reviewsRepositoryProvider = ReviewsRepositoryProvider._();

final class ReviewsRepositoryProvider extends $FunctionalProvider<
    ReviewsRepository,
    ReviewsRepository,
    ReviewsRepository> with $Provider<ReviewsRepository> {
  const ReviewsRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'reviewsRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$reviewsRepositoryHash();

  @$internal
  @override
  $ProviderElement<ReviewsRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ReviewsRepository create(Ref ref) {
    return reviewsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReviewsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReviewsRepository>(value),
    );
  }
}

String _$reviewsRepositoryHash() => r'9054a1d3b2b970db799f474ee6a958bd218c45c3';

@ProviderFor(productReviews)
const productReviewsProvider = ProductReviewsFamily._();

final class ProductReviewsProvider extends $FunctionalProvider<
        AsyncValue<List<Review>>, List<Review>, Stream<List<Review>>>
    with $FutureModifier<List<Review>>, $StreamProvider<List<Review>> {
  const ProductReviewsProvider._(
      {required ProductReviewsFamily super.from,
      required ProductID super.argument})
      : super(
          retry: null,
          name: r'productReviewsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$productReviewsHash();

  @override
  String toString() {
    return r'productReviewsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<List<Review>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<Review>> create(Ref ref) {
    final argument = this.argument as ProductID;
    return productReviews(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ProductReviewsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productReviewsHash() => r'9366dc5fa27dc221f31bc3692616e8c0a0641028';

final class ProductReviewsFamily extends $Family
    with $FunctionalFamilyOverride<Stream<List<Review>>, ProductID> {
  const ProductReviewsFamily._()
      : super(
          retry: null,
          name: r'productReviewsProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  ProductReviewsProvider call(
    ProductID productId,
  ) =>
      ProductReviewsProvider._(argument: productId, from: this);

  @override
  String toString() => r'productReviewsProvider';
}
