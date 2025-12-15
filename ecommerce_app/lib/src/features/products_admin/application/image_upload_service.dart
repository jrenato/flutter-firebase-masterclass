import 'package:ecommerce_app/src/exceptions/app_exception.dart';
import 'package:ecommerce_app/src/features/products/data/products_repository.dart';
import 'package:ecommerce_app/src/features/products/domain/product.dart';
import 'package:ecommerce_app/src/features/products_admin/data/image_upload_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_upload_service.g.dart';

/// Notifier-based service for uploading and deleting product images
/// This pattern is recommended in Riverpod 3 for services with async operations
@riverpod
class ImageUploadService extends _$ImageUploadService {
  @override
  void build() {
    // No initial state needed
  }

  Future<void> uploadProduct(Product product) async {
    final imageUrl = product.imageUrl;
    if (imageUrl == null) {
      throw NullProductImageUrlException();
    }

    // Ref is lifecycle-managed by the Notifier
    // Safe to use across async gaps
    final imageUploadRepository = ref.read(imageUploadRepositoryProvider);
    final productsRepository = ref.read(productsRepositoryProvider);

    // upload to storage and return download URL
    final downloadUrl = await imageUploadRepository
        .uploadProductImageFromAsset(imageUrl, product.id);

    // write to Cloud Firestore
    await productsRepository.createProduct(product.id, downloadUrl);
  }

  Future<void> deleteProduct(Product product) async {
    final imageUrl = product.imageUrl;

    // Ref is lifecycle-managed by the Notifier
    final imageUploadRepository = ref.read(imageUploadRepositoryProvider);
    final productsRepository = ref.read(productsRepositoryProvider);

    if (imageUrl != null) {
      // delete image from storage
      await imageUploadRepository.deleteProductImage(imageUrl);
    }

    // delete product from Firestore
    await productsRepository.deleteProduct(product.id);
  }
}
