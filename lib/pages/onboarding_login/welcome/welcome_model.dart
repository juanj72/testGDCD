import '/components/primary_button/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WelcomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for primaryButton component.
  late PrimaryButtonModel primaryButtonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    primaryButtonModel = createModel(context, () => PrimaryButtonModel());
  }

  void dispose() {
    unfocusNode.dispose();
    primaryButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
