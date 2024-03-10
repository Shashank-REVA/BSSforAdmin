import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.emailTextController ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).dark900,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFEC7834), Colors.white],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1000.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 24.0),
                    child: Image.asset(
                      'assets/images/220px-BSS_logo[1]_(1).png',
                      height: 250.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: Text(
                      'Bharat Sevashram Sangha',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'SuperTall',
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.w800,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 20.0),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(
                          color: Color(0x1EBCACAC),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 20.0, 0.0),
                        child: TextFormField(
                          controller: _model.emailTextController,
                          focusNode: _model.textFieldFocusNode1,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Raleway',
                                ),
                            hintText: 'Email Address',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Ubuntu',
                                    color: Colors.black,
                                  ),
                          keyboardType: TextInputType.emailAddress,
                          validator: _model.emailTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 20.0),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(
                          color: Color(0x1EBCACAC),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 20.0, 0.0),
                        child: TextFormField(
                          controller: _model.passwordTextController,
                          focusNode: _model.textFieldFocusNode2,
                          obscureText: !_model.passwordVisibility,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Raleway',
                                ),
                            hintText: 'Password',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => _model.passwordVisibility =
                                    !_model.passwordVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                _model.passwordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: FlutterFlowTheme.of(context).grayDark,
                                size: 24.0,
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Ubuntu',
                                    color: Colors.black,
                                  ),
                          validator: _model.passwordTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 20.0),
                    child: StreamBuilder<List<CitiesRecord>>(
                      stream: queryCitiesRecord(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<CitiesRecord> containerCitiesRecordList =
                            snapshot.data!;
                        return Container(
                          width: double.infinity,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(
                              color: Color(0x1EBCACAC),
                            ),
                          ),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController ??=
                                FormFieldController<String>(null),
                            options: containerCitiesRecordList
                                .map((e) => e.name)
                                .toList()
                                .sortedList((e) => e),
                            onChanged: (val) =>
                                setState(() => _model.dropDownValue = val),
                            width: 300.0,
                            height: 50.0,
                            searchHintTextStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Raleway',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                            searchTextStyle:
                                FlutterFlowTheme.of(context).bodyMedium,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Ubuntu',
                                  color: Colors.black,
                                ),
                            hintText: 'Set your City',
                            searchHintText: 'Search for an item...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: Colors.white,
                            elevation: 2.0,
                            borderColor: Colors.transparent,
                            borderWidth: 2.0,
                            borderRadius: 25.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isOverButton: true,
                            isSearchable: true,
                            isMultiSelect: false,
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        GoRouter.of(context).prepareAuthEvent();

                        final user = await authManager.signInWithEmail(
                          context,
                          _model.emailTextController.text,
                          _model.passwordTextController.text,
                        );
                        if (user == null) {
                          return;
                        }

                        await currentUserReference!
                            .update(createUsersRecordData(
                          selectedCity: _model.dropDownValue,
                        ));

                        context.goNamedAuth(
                          'all_pages',
                          context.mounted,
                          queryParameters: {
                            'tabbarpageindex': serializeParam(
                              0,
                              ParamType.int,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 600),
                            ),
                          },
                        );
                      },
                      text: 'Log In',
                      options: FFButtonOptions(
                        width: 300.0,
                        height: 55.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF322E5C),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Raleway',
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  fontWeight: FontWeight.bold,
                                ),
                        elevation: 4.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        'forgotPassword',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 600),
                          ),
                        },
                      );
                    },
                    text: 'Forgot Password',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 55.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.white,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Raleway',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 4.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            final user =
                                await authManager.signInWithGoogle(context);
                            if (user == null) {
                              return;
                            }

                            await currentUserReference!
                                .update(createUsersRecordData(
                              selectedCity: _model.dropDownValue,
                            ));

                            context.goNamedAuth('all_pages', context.mounted);
                          },
                          child: FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
