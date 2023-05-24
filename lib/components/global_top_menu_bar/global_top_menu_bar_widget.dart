import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'global_top_menu_bar_model.dart';
export 'global_top_menu_bar_model.dart';

class GlobalTopMenuBarWidget extends StatefulWidget {
  const GlobalTopMenuBarWidget({Key? key}) : super(key: key);

  @override
  _GlobalTopMenuBarWidgetState createState() => _GlobalTopMenuBarWidgetState();
}

class _GlobalTopMenuBarWidgetState extends State<GlobalTopMenuBarWidget> {
  late GlobalTopMenuBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GlobalTopMenuBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Color(0xFFFF000E),
      ),
      alignment: AlignmentDirectional(1.0, 0.0),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(3.0, 3.0, 3.0, 3.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.12,
                height: 50.0,
                decoration: BoxDecoration(),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.home_outlined,
                    color: Color(0xFFF6A6A6),
                    size: 27.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.12,
                height: 50.0,
                decoration: BoxDecoration(),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.login,
                    color: Color(0xFFF6A6A6),
                    size: 25.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Container(
                width: 10.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(
                    color: Color(0xFFF6A6A6),
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    '6',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFFF6A6A6),
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                ),
              ),
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Text(
                      'Learning Mode',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFFF6A6A6),
                            fontSize: 8.0,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.12,
                height: 50.0,
                decoration: BoxDecoration(),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.security,
                    color: Color(0xFFF6A6A6),
                    size: 22.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.12,
                height: 50.0,
                decoration: BoxDecoration(),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.settings,
                    color: Color(0xFFF6A6A6),
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Container(
                width: 40.0,
                height: 25.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(150.0),
                  child: Image.asset(
                    'assets/images/zx6w1_1.jpg',
                    width: 100.0,
                    height: 90.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.01,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
              ),
              Container(
                width: 45.0,
                height: 25.0,
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(150.0),
                  child: Image.asset(
                    'assets/images/Playstore_logo_(5).png',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
