import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'adding_priest_widget.dart' show AddingPriestWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddingPriestModel extends FlutterFlowModel<AddingPriestWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for spec widget.
  FocusNode? specFocusNode;
  TextEditingController? specTextController;
  String? Function(BuildContext, String?)? specTextControllerValidator;
  // State field(s) for eam widget.
  FocusNode? eamFocusNode;
  TextEditingController? eamTextController;
  String? Function(BuildContext, String?)? eamTextControllerValidator;
  // State field(s) for passs widget.
  FocusNode? passsFocusNode;
  TextEditingController? passsTextController;
  String? Function(BuildContext, String?)? passsTextControllerValidator;
  // State field(s) for numm widget.
  FocusNode? nummFocusNode;
  TextEditingController? nummTextController;
  String? Function(BuildContext, String?)? nummTextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    specFocusNode?.dispose();
    specTextController?.dispose();

    eamFocusNode?.dispose();
    eamTextController?.dispose();

    passsFocusNode?.dispose();
    passsTextController?.dispose();

    nummFocusNode?.dispose();
    nummTextController?.dispose();
  }
}
