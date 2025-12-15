// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_upload_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Notifier-based service for uploading and deleting product images
/// This pattern is recommended in Riverpod 3 for services with async operations

@ProviderFor(ImageUploadService)
const imageUploadServiceProvider = ImageUploadServiceProvider._();

/// Notifier-based service for uploading and deleting product images
/// This pattern is recommended in Riverpod 3 for services with async operations
final class ImageUploadServiceProvider
    extends $NotifierProvider<ImageUploadService, void> {
  /// Notifier-based service for uploading and deleting product images
  /// This pattern is recommended in Riverpod 3 for services with async operations
  const ImageUploadServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'imageUploadServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$imageUploadServiceHash();

  @$internal
  @override
  ImageUploadService create() => ImageUploadService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$imageUploadServiceHash() =>
    r'1d552e3a1c7d1dd9a7efdf3522f273daacd818f7';

/// Notifier-based service for uploading and deleting product images
/// This pattern is recommended in Riverpod 3 for services with async operations

abstract class _$ImageUploadService extends $Notifier<void> {
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
