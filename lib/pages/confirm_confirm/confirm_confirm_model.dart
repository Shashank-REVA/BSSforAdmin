import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'confirm_confirm_widget.dart' show ConfirmConfirmWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfirmConfirmModel extends FlutterFlowModel<ConfirmConfirmWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Confirm)] action in Button widget.
  ApiCallResponse? conf;
  // Stores action output result for [Backend Call - API (Cancel)] action in Button widget.
  ApiCallResponse? canc;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
