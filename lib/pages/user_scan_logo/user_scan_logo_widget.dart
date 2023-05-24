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
import 'user_scan_logo_model.dart';
export 'user_scan_logo_model.dart';

class UserScanLogoWidget extends StatefulWidget {
  const UserScanLogoWidget({Key? key}) : super(key: key);

  @override
  _UserScanLogoWidgetState createState() => _UserScanLogoWidgetState();
}

class _UserScanLogoWidgetState extends State<UserScanLogoWidget> {
  late UserScanLogoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserScanLogoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'UserScanLogo',
        color: FlutterFlowTheme.of(context).primary,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFFF000E),
            body: SafeArea(
              child: Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xF5000000),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          wrapWithModel(
                            model: _model.globalTopMenuBarModel,
                            updateCallback: () => setState(() {}),
                            child: GlobalTopMenuBarWidget(),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            color: Colors.transparent,
                            elevation: 5.0,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: DropdownMenuDataCall.call(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                          );
                                        }
                                        final dropDownDropdownMenuDataResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController1 ??=
                                              FormFieldController<String>(null),
                                          options: (getJsonField(
                                            dropDownDropdownMenuDataResponse
                                                .jsonBody,
                                            r'''$.categories''',
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList(),
                                          onChanged: (val) => setState(() =>
                                              _model.dropDownValue1 = val),
                                          width: 150.0,
                                          height: 50.0,
                                          searchHintTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                  ),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                          hintText: 'Category',
                                          searchHintText:
                                              'Search for an item...',
                                          fillColor: Color(0xFFFF0000),
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 0.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 2.0, 2.0, 2.0),
                                          hidesUnderline: true,
                                          isSearchable: true,
                                        );
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: DropdownMenuDataCall.call(
                                        category: _model.dropDownValue1,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                          );
                                        }
                                        final dropDownDropdownMenuDataResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController2 ??=
                                              FormFieldController<String>(null),
                                          options: (getJsonField(
                                            dropDownDropdownMenuDataResponse
                                                .jsonBody,
                                            r'''$.products''',
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList(),
                                          onChanged: (val) => setState(() =>
                                              _model.dropDownValue2 = val),
                                          width: 150.0,
                                          height: 50.0,
                                          searchHintTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                  ),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                          hintText: 'Product',
                                          searchHintText:
                                              'Search for an item...',
                                          fillColor: Color(0xFFFF0000),
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 0.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 2.0, 2.0, 2.0),
                                          hidesUnderline: true,
                                          isSearchable: true,
                                        );
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: DropdownMenuDataCall.call(
                                        category: _model.dropDownValue1,
                                        product: _model.dropDownValue2,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                          );
                                        }
                                        final dropDownDropdownMenuDataResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController3 ??=
                                              FormFieldController<String>(null),
                                          options: (getJsonField(
                                            dropDownDropdownMenuDataResponse
                                                .jsonBody,
                                            r'''$.brands''',
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .toList(),
                                          onChanged: (val) => setState(() =>
                                              _model.dropDownValue3 = val),
                                          width: 150.0,
                                          height: 50.0,
                                          searchHintTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                  ),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                          hintText: 'Brand',
                                          searchHintText:
                                              'Search for an item...',
                                          fillColor: Color(0xFFFF0000),
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 0.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 2.0, 2.0, 2.0),
                                          hidesUnderline: true,
                                          isSearchable: true,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 0.8,
                          decoration: BoxDecoration(
                            color: Color(0xF5000000),
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: Image.network(
                                '',
                              ).image,
                            ),
                          ),
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.75,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.45,
                                        child: Stack(
                                          children: [
                                            if (_model.uploadedLocalFile ==
                                                    null ||
                                                (_model.uploadedLocalFile.bytes
                                                        ?.isEmpty ??
                                                    true))
                                              Image.asset(
                                                'assets/images/LOGO_SCAN_17_sept_22_APP.jpg',
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.75,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    5.45,
                                                fit: BoxFit.cover,
                                              ),
                                            if (_model.uploadedLocalFile !=
                                                    null &&
                                                (_model.uploadedLocalFile.bytes
                                                        ?.isNotEmpty ??
                                                    false))
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.75,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.45,
                                                  child: custom_widgets
                                                      .CustomImage(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.75,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.45,
                                                    imageData: _model
                                                        .uploadedLocalFile,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Select a matching logo',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFB00000),
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Builder(
                                  builder: (context) {
                                    final images = getJsonField(
                                      (_model.imagesUrls?.jsonBody ?? ''),
                                      r'''$.results''',
                                    ).toList().take(5).toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: images.length,
                                      itemBuilder: (context, imagesIndex) {
                                        final imagesItem = images[imagesIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'reviews',
                                                queryParams: {
                                                  'imageUrl': serializeParam(
                                                    imagesItem,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: CachedNetworkImage(
                                                imageUrl: imagesItem,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 10.0, 20.0, 0.0),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.9, 0.05),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            final selectedMedia =
                                                await selectMediaWithSourceBottomSheet(
                                              context: context,
                                              allowPhoto: true,
                                            );
                                            if (selectedMedia != null &&
                                                selectedMedia.every((m) =>
                                                    validateFileFormat(
                                                        m.storagePath,
                                                        context))) {
                                              setState(() => _model
                                                  .isDataUploading = true);
                                              var selectedUploadedFiles =
                                                  <FFUploadedFile>[];

                                              try {
                                                selectedUploadedFiles =
                                                    selectedMedia
                                                        .map((m) =>
                                                            FFUploadedFile(
                                                              name: m
                                                                  .storagePath
                                                                  .split('/')
                                                                  .last,
                                                              bytes: m.bytes,
                                                              height: m
                                                                  .dimensions
                                                                  ?.height,
                                                              width: m
                                                                  .dimensions
                                                                  ?.width,
                                                              blurHash:
                                                                  m.blurHash,
                                                            ))
                                                        .toList();
                                              } finally {
                                                _model.isDataUploading = false;
                                              }
                                              if (selectedUploadedFiles
                                                      .length ==
                                                  selectedMedia.length) {
                                                setState(() {
                                                  _model.uploadedLocalFile =
                                                      selectedUploadedFiles
                                                          .first;
                                                });
                                              } else {
                                                setState(() {});
                                                return;
                                              }
                                            }

                                            _model.imagesUrls =
                                                await UploadLogoCall.call(
                                              image: _model.uploadedLocalFile,
                                              category: valueOrDefault<String>(
                                                _model.dropDownValue1,
                                                '/',
                                              ),
                                              product: valueOrDefault<String>(
                                                _model.dropDownValue2,
                                                '/',
                                              ),
                                              brand: valueOrDefault<String>(
                                                _model.dropDownValue3,
                                                '/',
                                              ),
                                            );

                                            setState(() {});
                                          },
                                          text: 'Select logo',
                                          options: FFButtonOptions(
                                            width: 165.4,
                                            height: 55.4,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFF305579),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium,
                                            elevation: 2.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.95, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 60.0,
                                          icon: Icon(
                                            Icons.help,
                                            color: Color(0xFF305579),
                                            size: 30.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
