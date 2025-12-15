// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_product_upload_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdminProductUploadController)
const adminProductUploadControllerProvider =
    AdminProductUploadControllerProvider._();

final class AdminProductUploadControllerProvider
    extends $AsyncNotifierProvider<AdminProductUploadController, void> {
  const AdminProductUploadControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'adminProductUploadControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$adminProductUploadControllerHash();

  @$internal
  @override
  AdminProductUploadController create() => AdminProductUploadController();
}

String _$adminProductUploadControllerHash() =>
    r'15e2c67290aa554d75c956b1a81aabb35484cc24';

abstract class _$AdminProductUploadController extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<void>, void>,
        AsyncValue<void>,
        Object?,
        Object?>;
    element.handleValue(ref, null);
  }
}
