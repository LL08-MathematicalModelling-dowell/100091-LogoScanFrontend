import '/backend/api_requests/api_calls.dart';
import '/components/global_top_menu_bar/global_top_menu_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReviewsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (get reviews)] action in reviews widget.
  ApiCallResponse? apiresult;
  // Model for GlobalTopMenuBar component.
  late GlobalTopMenuBarModel globalTopMenuBarModel;
  // State field(s) for review widget.
  TextEditingController? reviewController;
  String? Function(BuildContext, String?)? reviewControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    globalTopMenuBarModel = createModel(context, () => GlobalTopMenuBarModel());
  }

  void dispose() {
    globalTopMenuBarModel.dispose();
    reviewController?.dispose();
  }

  /// Additional helper methods are added here.

}
