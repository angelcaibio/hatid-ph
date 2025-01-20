import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for rider_name widget.
  FocusNode? riderNameFocusNode;
  TextEditingController? riderNameTextController;
  String? Function(BuildContext, String?)? riderNameTextControllerValidator;
  // State field(s) for rider_location widget.
  String? riderLocationValue;
  FormFieldController<String>? riderLocationValueController;
  // State field(s) for rider_number widget.
  FocusNode? riderNumberFocusNode;
  TextEditingController? riderNumberTextController;
  final riderNumberMask = MaskTextInputFormatter(mask: '####-###-####');
  String? Function(BuildContext, String?)? riderNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    riderNameFocusNode?.dispose();
    riderNameTextController?.dispose();

    riderNumberFocusNode?.dispose();
    riderNumberTextController?.dispose();
  }
}
