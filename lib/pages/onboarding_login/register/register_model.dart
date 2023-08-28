import '/backend/api_requests/api_calls.dart';
import '/components/primary_button/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for primaryButton component.
  late PrimaryButtonModel primaryButtonModel;
  // Stores action output result for [Backend Call - API (sing up)] action in primaryButton widget.
  ApiCallResponse? apiResultfal;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    primaryButtonModel = createModel(context, () => PrimaryButtonModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController1?.dispose();
    textController2?.dispose();
    primaryButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
