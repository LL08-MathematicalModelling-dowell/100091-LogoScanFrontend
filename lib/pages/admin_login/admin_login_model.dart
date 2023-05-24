import '/backend/api_requests/api_calls.dart';
import '/components/global_top_menu_bar/global_top_menu_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminLoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for GlobalTopMenuBar component.
  late GlobalTopMenuBarModel globalTopMenuBarModel;
  // State field(s) for username widget.
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // Stores action output result for [Backend Call - API (admin login)] action in Button widget.
  ApiCallResponse? authenticated;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    globalTopMenuBarModel = createModel(context, () => GlobalTopMenuBarModel());
    passwordVisibility = false;
  }

  void dispose() {
    globalTopMenuBarModel.dispose();
    usernameController?.dispose();
    passwordController?.dispose();
  }

  /// Additional helper methods are added here.

}
