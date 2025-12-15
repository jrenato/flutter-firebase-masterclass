// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_review_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LeaveReviewController)
const leaveReviewControllerProvider = LeaveReviewControllerProvider._();

final class LeaveReviewControllerProvider
    extends $AsyncNotifierProvider<LeaveReviewController, void> {
  const LeaveReviewControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'leaveReviewControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$leaveReviewControllerHash();

  @$internal
  @override
  LeaveReviewController create() => LeaveReviewController();
}

String _$leaveReviewControllerHash() =>
    r'17e5c0189f6b0f25ef47a7b0428e1bc8b959117f';

abstract class _$LeaveReviewController extends $AsyncNotifier<void> {
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
