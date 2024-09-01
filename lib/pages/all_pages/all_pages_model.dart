import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/confirm_confirm/confirm_confirm_widget.dart';
import '/pages/edit/edit_widget.dart';
import '/pages/empty/empty_widget.dart';
import '/pages/members/members_widget.dart';
import '/pages/no_applications/no_applications_widget.dart';
import '/pages/no_don/no_don_widget.dart';
import '/pages/no_facility/no_facility_widget.dart';
import '/pages/no_pri/no_pri_widget.dart';
import '/pages/no_rooms/no_rooms_widget.dart';
import '/pages/nobooking/nobooking_widget.dart';
import '/pages/notifications/notifications_widget.dart';
import '/pages/rooms/rooms_widget.dart';
import 'all_pages_widget.dart' show AllPagesWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllPagesModel extends FlutterFlowModel<AllPagesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for cityyyy widget.
  String? cityyyyValue;
  FormFieldController<String>? cityyyyValueController;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (Cancel)] action in Button widget.
  ApiCallResponse? apiResulttl;
  // Stores action output result for [Backend Call - API (Cancel)] action in Button widget.
  ApiCallResponse? apiResulttlt;
  // State field(s) for romtype widget.
  FocusNode? romtypeFocusNode;
  TextEditingController? romtypeTextController;
  String? Function(BuildContext, String?)? romtypeTextControllerValidator;
  String? _romtypeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Type is required';
    }

    return null;
  }

  // State field(s) for pri widget.
  FocusNode? priFocusNode;
  TextEditingController? priTextController;
  String? Function(BuildContext, String?)? priTextControllerValidator;
  String? _priTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Price is required';
    }

    return null;
  }

  // State field(s) for no widget.
  FocusNode? noFocusNode;
  TextEditingController? noTextController;
  String? Function(BuildContext, String?)? noTextControllerValidator;
  String? _noTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Number of room is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (csvExport)] action in Button widget.
  ApiCallResponse? exceldownload;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    romtypeTextControllerValidator = _romtypeTextControllerValidator;
    priTextControllerValidator = _priTextControllerValidator;
    noTextControllerValidator = _noTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    romtypeFocusNode?.dispose();
    romtypeTextController?.dispose();

    priFocusNode?.dispose();
    priTextController?.dispose();

    noFocusNode?.dispose();
    noTextController?.dispose();
  }
}
