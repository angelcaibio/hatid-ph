import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_shop_widget.dart' show EditShopWidget;
import 'package:flutter/material.dart';

class EditShopModel extends FlutterFlowModel<EditShopWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for shop_type widget.
  String? shopTypeValue;
  FormFieldController<String>? shopTypeValueController;
  // State field(s) for shop_name widget.
  FocusNode? shopNameFocusNode;
  TextEditingController? shopNameTextController;
  String? Function(BuildContext, String?)? shopNameTextControllerValidator;
  // State field(s) for shop_location widget.
  String? shopLocationValue;
  FormFieldController<String>? shopLocationValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shopNameFocusNode?.dispose();
    shopNameTextController?.dispose();
  }
}
