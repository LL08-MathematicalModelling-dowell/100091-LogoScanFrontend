import '/backend/api_requests/api_calls.dart';
import '/components/global_top_menu_bar/global_top_menu_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminUploadLogoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for GlobalTopMenuBar component.
  late GlobalTopMenuBarModel globalTopMenuBarModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for category widget.
  TextEditingController? categoryController;
  String? Function(BuildContext, String?)? categoryControllerValidator;
  // State field(s) for product widget.
  TextEditingController? productController;
  String? Function(BuildContext, String?)? productControllerValidator;
  // State field(s) for brand widget.
  TextEditingController? brandController;
  String? Function(BuildContext, String?)? brandControllerValidator;
  // Stores action output result for [Backend Call - API (admin upload logo)] action in Button widget.
  ApiCallResponse? adminImagesUrls;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    globalTopMenuBarModel = createModel(context, () => GlobalTopMenuBarModel());
  }

  void dispose() {
    globalTopMenuBarModel.dispose();
    categoryController?.dispose();
    productController?.dispose();
    brandController?.dispose();
  }

  /// Additional helper methods are added here.

}
