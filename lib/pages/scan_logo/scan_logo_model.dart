import '/components/global_top_menu_bar/global_top_menu_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScanLogoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for GlobalTopMenuBar component.
  late GlobalTopMenuBarModel globalTopMenuBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    globalTopMenuBarModel = createModel(context, () => GlobalTopMenuBarModel());
  }

  void dispose() {
    globalTopMenuBarModel.dispose();
  }

  /// Additional helper methods are added here.

}
