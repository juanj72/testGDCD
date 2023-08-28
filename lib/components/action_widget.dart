import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'action_model.dart';
export 'action_model.dart';

class ActionWidget extends StatefulWidget {
  const ActionWidget({
    Key? key,
    this.label,
    this.button,
  }) : super(key: key);

  final String? label;
  final String? button;

  @override
  _ActionWidgetState createState() => _ActionWidgetState();
}

class _ActionWidgetState extends State<ActionWidget> {
  late ActionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(
          color: Color(0x339DCEFF),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 18.0, 20.0, 18.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.label!,
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontWeight: FontWeight.w500,
                      lineHeight: 1.5,
                    ),
              ),
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: widget.button!,
                options: FFButtonOptions(
                  width: 90.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).brand1,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
