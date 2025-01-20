import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'rider_widget.dart' show RiderWidget;
import 'package:flutter/material.dart';

class RiderModel extends FlutterFlowModel<RiderWidget> {
  ///  Local state fields for this page.

  bool filterShown = false;

  bool searchActive = false;

  bool elipsisShown = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SeachBar widget.
  FocusNode? seachBarFocusNode;
  TextEditingController? seachBarTextController;
  String? Function(BuildContext, String?)? seachBarTextControllerValidator;
  List<RidersRecord> simpleSearchResults = [];
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
  String? get locationValue => locationValueController?.value;
}
