import '/flutter_flow/flutter_flow_util.dart';
import 'report_details_widget.dart' show ReportDetailsWidget;
import 'package:flutter/material.dart';

class ReportDetailsModel extends FlutterFlowModel<ReportDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for response_message widget.
  FocusNode? responseMessageFocusNode;
  TextEditingController? responseMessageTextController;
  String? Function(BuildContext, String?)?
      responseMessageTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    responseMessageFocusNode?.dispose();
    responseMessageTextController?.dispose();
  }
}
