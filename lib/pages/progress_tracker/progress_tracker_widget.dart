import '/components/action_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'progress_tracker_model.dart';
export 'progress_tracker_model.dart';

class ProgressTrackerWidget extends StatefulWidget {
  const ProgressTrackerWidget({Key? key}) : super(key: key);

  @override
  _ProgressTrackerWidgetState createState() => _ProgressTrackerWidgetState();
}

class _ProgressTrackerWidgetState extends State<ProgressTrackerWidget>
    with TickerProviderStateMixin {
  late ProgressTrackerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 1080.ms,
          begin: Offset(41.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 1080.ms,
          begin: Offset(41.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgressTrackerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(
                          color: Color(0x1AE21C3D),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: Container(
                                  width: 60.0,
                                  height: 60.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/reminder.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 10.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 4.0),
                                                    child: Text(
                                                      'Reminder!',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                lineHeight: 1.5,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Text(
                                                    'Next Photos Fall On July 08',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          lineHeight: 1.5,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.close_rounded,
                                color: FlutterFlowTheme.of(context).accent1,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0x3392A3FD), Color(0x339DCEFF)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(1.0, -1.0),
                            end: AlignmentDirectional(-1.0, 1.0),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Wrap(
                                              spacing: 0.0,
                                              runSpacing: 0.0,
                                              alignment: WrapAlignment.start,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.start,
                                              direction: Axis.horizontal,
                                              runAlignment: WrapAlignment.start,
                                              verticalDirection:
                                                  VerticalDirection.down,
                                              clipBehavior: Clip.none,
                                              children: [
                                                Text(
                                                  'Track your monthly progress with Photo',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        lineHeight: 1.5,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () {
                                            print('Button pressed ...');
                                          },
                                          text: 'Learn more',
                                          options: FFButtonOptions(
                                            width: 130.0,
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .brand1,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Image.asset(
                                'assets/images/track.png',
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: wrapWithModel(
                        model: _model.actionModel,
                        updateCallback: () => setState(() {}),
                        child: ActionWidget(
                          label: 'Compare my Photo',
                          button: 'Compare',
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 15.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Gallery',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        lineHeight: 1.5,
                                      ),
                                ),
                                Text(
                                  'see more',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    '2 June',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          child: Image.asset(
                                            'assets/images/Rectangle_5834.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.asset(
                                            'assets/images/Rectangle_5836.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          child: Image.asset(
                                            'assets/images/Rectangle_5841.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          child: Image.asset(
                                            'assets/images/Rectangle_5839.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ).animateOnPageLoad(
                                    animationsMap['rowOnPageLoadAnimation1']!),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      '2 June',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: Image.asset(
                                              'assets/images/Rectangle_5838.png',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            child: Image.network(
                                              'https://img.freepik.com/free-photo/portrait-sporty-woman-nature-stretching_23-2148905511.jpg?w=826&t=st=1682313296~exp=1682313896~hmac=5b99abcef57ebb6d75ee87812ec5d0564aa331d0bcbbecfc9cfe7f65e08162b9',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: Image.network(
                                              'https://img.freepik.com/free-photo/side-view-athletic-woman-exercising-outdoors_23-2148781799.jpg?w=826&t=st=1682313227~exp=1682313827~hmac=b88565295287bfcd7bc0edd8baf3e87f10abb218ac0097af6cd63bc2c9636e60',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: Image.asset(
                                              'assets/images/Rectangle_5835.png',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'rowOnPageLoadAnimation2']!),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.9, 0.9),
                child: Material(
                  color: Colors.transparent,
                  elevation: 4.0,
                  shape: const CircleBorder(),
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          FlutterFlowTheme.of(context).secondary1,
                          FlutterFlowTheme.of(context).secondary2
                        ],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(1.0, -0.03),
                        end: AlignmentDirectional(-1.0, 0.03),
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.add_a_photo_outlined,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        final selectedMedia =
                            await selectMediaWithSourceBottomSheet(
                          context: context,
                          allowPhoto: true,
                        );
                        if (selectedMedia != null &&
                            selectedMedia.every((m) =>
                                validateFileFormat(m.storagePath, context))) {
                          setState(() => _model.isDataUploading = true);
                          var selectedUploadedFiles = <FFUploadedFile>[];

                          try {
                            selectedUploadedFiles = selectedMedia
                                .map((m) => FFUploadedFile(
                                      name: m.storagePath.split('/').last,
                                      bytes: m.bytes,
                                      height: m.dimensions?.height,
                                      width: m.dimensions?.width,
                                      blurHash: m.blurHash,
                                    ))
                                .toList();
                          } finally {
                            _model.isDataUploading = false;
                          }
                          if (selectedUploadedFiles.length ==
                              selectedMedia.length) {
                            setState(() {
                              _model.uploadedLocalFile =
                                  selectedUploadedFiles.first;
                            });
                          } else {
                            setState(() {});
                            return;
                          }
                        }
                      },
                    ),
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
