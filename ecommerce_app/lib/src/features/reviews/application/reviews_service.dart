import 'package:ecommerce_app/src/exceptions/app_exception.dart';
import 'package:ecommerce_app/src/features/authentication/data/auth_repository.dart';
import 'package:ecommerce_app/src/features/products/domain/product.dart';
import 'package:ecommerce_app/src/features/reviews/data/reviews_repository.dart';
import 'package:ecommerce_app/src/features/reviews/domain/review.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reviews_service.g.dart';

/// Notifier-based service for submitting product reviews
/// This pattern is recommended in Riverpod 3 for services with async operations
@riverpod
class ReviewsService extends _$ReviewsService {
  @override
  void build() {
    // No initial state needed
  }

  Future<void> submitReview({
    required ProductID productId,
    required Review review,
  }) async {
    // Ref is lifecycle-managed by the Notifier
    // Safe to use across async gaps
    final authRepository = ref.read(authRepositoryProvider);
    final reviewsRepository = ref.read(reviewsRepositoryProvider);

    final user = authRepository.currentUser;
    if (user == null) {
      throw UserNotSignedInException();
    }
    await reviewsRepository.setReview(
      productId: productId,
      uid: user.uid,
      review: review,
    );
  }
}

/// Check if a product was previously reviewed by the user
@riverpod
Future<Review?> userReviewFuture(Ref ref, ProductID productId) {
  final user = ref.watch(authStateChangesProvider).value;
  if (user != null) {
    return ref
        .watch(reviewsRepositoryProvider)
        .fetchUserReview(productId, user.uid);
  } else {
    return Future.value(null);
  }
}

/// Check if a product was previously reviewed by the user
@riverpod
Stream<Review?> userReviewStream(Ref ref, ProductID productId) {
  final user = ref.watch(authStateChangesProvider).value;
  if (user != null) {
    return ref
        .watch(reviewsRepositoryProvider)
        .watchUserReview(productId, user.uid);
  } else {
    return Stream.value(null);
  }
}
