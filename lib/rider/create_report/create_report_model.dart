import '/flutter_flow/flutter_flow_util.dart';
import 'create_report_widget.dart' show CreateReportWidget;
import 'package:flutter/material.dart';

class CreateReportModel extends FlutterFlowModel<CreateReportWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for report_message widget.
  FocusNode? reportMessageFocusNode;
  TextEditingController? reportMessageTextController;
  String? Function(BuildContext, String?)? reportMessageTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    reportMessageFocusNode?.dispose();
    reportMessageTextController?.dispose();
  }
}
