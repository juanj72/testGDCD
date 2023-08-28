import '/components/onboarding_button/onboarding_button_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class OnboardingModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  double? page = 0.25;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for onboardingButton component.
  late OnboardingButtonModel onboardingButtonModel1;
  // Model for onboardingButton component.
  late OnboardingButtonModel onboardingButtonModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    onboardingButtonModel1 =
        createModel(context, () => OnboardingButtonModel());
    onboardingButtonModel2 =
        createModel(context, () => OnboardingButtonModel());
  }

  void dispose() {
    unfocusNode.dispose();
    onboardingButtonModel1.dispose();
    onboardingButtonModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
