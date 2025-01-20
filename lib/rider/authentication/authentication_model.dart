import '/flutter_flow/flutter_flow_util.dart';
import 'authentication_widget.dart' show AuthenticationWidget;
import 'package:flutter/material.dart';

class AuthenticationModel extends FlutterFlowModel<AuthenticationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for email_signin widget.
  FocusNode? emailSigninFocusNode;
  TextEditingController? emailSigninTextController;
  String? Function(BuildContext, String?)? emailSigninTextControllerValidator;
  // State field(s) for password_signin widget.
  FocusNode? passwordSigninFocusNode;
  TextEditingController? passwordSigninTextController;
  late bool passwordSigninVisibility;
  String? Function(BuildContext, String?)?
      passwordSigninTextControllerValidator;
  // State field(s) for email_signup widget.
  FocusNode? emailSignupFocusNode;
  TextEditingController? emailSignupTextController;
  String? Function(BuildContext, String?)? emailSignupTextControllerValidator;
  // State field(s) for password_signup widget.
  FocusNode? passwordSignupFocusNode;
  TextEditingController? passwordSignupTextController;
  late bool passwordSignupVisibility;
  String? Function(BuildContext, String?)?
      passwordSignupTextControllerValidator;
  // State field(s) for confirmpassword_signup widget.
  FocusNode? confirmpasswordSignupFocusNode;
  TextEditingController? confirmpasswordSignupTextController;
  late bool confirmpasswordSignupVisibility;
  String? Function(BuildContext, String?)?
      confirmpasswordSignupTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordSigninVisibility = false;
    passwordSignupVisibility = false;
    confirmpasswordSignupVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailSigninFocusNode?.dispose();
    emailSigninTextController?.dispose();

    passwordSigninFocusNode?.dispose();
    passwordSigninTextController?.dispose();

    emailSignupFocusNode?.dispose();
    emailSignupTextController?.dispose();

    passwordSignupFocusNode?.dispose();
    passwordSignupTextController?.dispose();

    confirmpasswordSignupFocusNode?.dispose();
    confirmpasswordSignupTextController?.dispose();
  }
}
