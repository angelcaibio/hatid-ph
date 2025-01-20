import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'manage_shop_widget.dart' show ManageShopWidget;
import 'package:flutter/material.dart';

class ManageShopModel extends FlutterFlowModel<ManageShopWidget> {
  ///  Local state fields for this page.

  bool filterShown = false;

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  Completer<int>? firestoreRequestCompleter;
  // State field(s) for SeachBar widget.
  FocusNode? seachBarFocusNode;
  TextEditingController? seachBarTextController;
  String? Function(BuildContext, String?)? seachBarTextControllerValidator;
  List<ShopRecord> simpleSearchResults = [];
  // State field(s) for Location widget.
  FormFieldController<String>? locationValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    seachBarFocusNode?.dispose();
    seachBarTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForFirestoreRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  String? get locationValue => locationValueController?.value;
}
