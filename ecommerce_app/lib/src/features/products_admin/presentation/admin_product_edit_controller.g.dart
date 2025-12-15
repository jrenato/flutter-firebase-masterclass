// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_product_edit_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdminProductEditController)
const adminProductEditControllerProvider =
    AdminProductEditControllerProvider._();

final class AdminProductEditControllerProvider
    extends $AsyncNotifierProvider<AdminProductEditController, void> {
  const AdminProductEditControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'adminProductEditControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$adminProductEditControllerHash();

  @$internal
  @override
  AdminProductEditController create() => AdminProductEditController();
}

String _$adminProductEditControllerHash() =>
    r'4889ae22666506a4277749ed0b1b98e35ce73194';

abstract class _$AdminProductEditController extends $AsyncNotifier<void> {
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
