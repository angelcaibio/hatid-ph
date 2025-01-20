import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_rider_widget.dart' show EditRiderWidget;
import 'package:flutter/material.dart';

class EditRiderModel extends FlutterFlowModel<EditRiderWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for onVacation widget.
  bool? onVacationValue;
  // State field(s) for rider_location widget.
  String? riderLocationValue;
  FormFieldController<String>? riderLocationValueController;
  // State field(s) for rider_note widget.
  FocusNode? riderNoteFocusNode;
  TextEditingController? riderNoteTextController;
  String? Function(BuildContext, String?)? riderNoteTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    riderNoteFocusNode?.dispose();
    riderNoteTextController?.dispose();
  }
}
