import '/backend/api_requests/api_calls.dart';
import '/components/global_top_menu_bar/global_top_menu_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserScanLogoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for GlobalTopMenuBar component.
  late GlobalTopMenuBarModel globalTopMenuBarModel;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (upload logo)] action in Button widget.
  ApiCallResponse? imagesUrls;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    globalTopMenuBarModel = createModel(context, () => GlobalTopMenuBarModel());
  }

  void dispose() {
    globalTopMenuBarModel.dispose();
  }

  /// Additional helper methods are added here.

}
