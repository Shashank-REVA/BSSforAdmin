import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'edit_widget.dart' show EditWidget;
import 'package:map_launcher/map_launcher.dart' as $ml;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditModel extends FlutterFlowModel<EditWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Confirm)] action in Button widget.
  ApiCallResponse? conf;
  // Stores action output result for [Backend Call - API (Cancel)] action in Button widget.
  ApiCallResponse? canc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
