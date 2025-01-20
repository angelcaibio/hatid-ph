import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'order_form_widget.dart' show OrderFormWidget;
import 'package:flutter/material.dart';

class OrderFormModel extends FlutterFlowModel<OrderFormWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ShopName widget.
  String? shopNameValue;
  FormFieldController<String>? shopNameValueController;
  // State field(s) for Item widget.
  FocusNode? itemFocusNode;
  TextEditingController? itemTextController;
  String? Function(BuildContext, String?)? itemTextControllerValidator;
  // State field(s) for Note widget.
  FocusNode? noteFocusNode;
  TextEditingController? noteTextController;
  String? Function(BuildContext, String?)? noteTextControllerValidator;
  // State field(s) for CustName widget.
  FocusNode? custNameFocusNode;
  TextEditingController? custNameTextController;
  String? Function(BuildContext, String?)? custNameTextControllerValidator;
  // State field(s) for CustNumber widget.
  FocusNode? custNumberFocusNode;
  TextEditingController? custNumberTextController;
  String? Function(BuildContext, String?)? custNumberTextControllerValidator;
  // State field(s) for CustLocation widget.
  FocusNode? custLocationFocusNode;
  TextEditingController? custLocationTextController;
  String? Function(BuildContext, String?)? custLocationTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    itemFocusNode?.dispose();
    itemTextController?.dispose();

    noteFocusNode?.dispose();
    noteTextController?.dispose();

    custNameFocusNode?.dispose();
    custNameTextController?.dispose();

    custNumberFocusNode?.dispose();
    custNumberTextController?.dispose();

    custLocationFocusNode?.dispose();
    custLocationTextController?.dispose();
  }
}
