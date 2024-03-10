import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rooms_model.dart';
export 'rooms_model.dart';

class RoomsWidget extends StatefulWidget {
  const RoomsWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter4,
  });

  final int? parameter1;
  final String? parameter2;
  final double? parameter3;
  final DocumentReference? parameter4;

  @override
  State<RoomsWidget> createState() => _RoomsWidgetState();
}

class _RoomsWidgetState extends State<RoomsWidget> {
  late RoomsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoomsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
      child: AuthUserStreamWidget(
        builder: (context) => StreamBuilder<List<RoomsRecord>>(
          stream: queryRoomsRecord(
            queryBuilder: (roomsRecord) => roomsRecord.where(
              'city',
              isEqualTo: valueOrDefault(currentUserDocument?.selectedCity, ''),
            ),
            singleRecord: true,
          ),
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
            List<RoomsRecord> containerRoomsRecordList = snapshot.data!;
            final containerRoomsRecord = containerRoomsRecordList.isNotEmpty
                ? containerRoomsRecordList.first
                : null;
            return Container(
              height: 120.0,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(
                  color: Color(0xFF322E5C),
                  width: 3.0,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF322E5C),
                                      borderRadius: BorderRadius.circular(15.0),
                                      border: Border.all(
                                        color: Color(0xFF322E5C),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          valueOrDefault<String>(
                                            containerRoomsRecord?.no
                                                ?.toString(),
                                            '00',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w800,
                                              ),
                                        ),
                                        Text(
                                          'Available',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Colors.white,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w800,
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
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                containerRoomsRecord?.roomType,
                                'Type',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Rs. ${valueOrDefault<String>(
                                containerRoomsRecord?.price?.toString(),
                                '00',
                              )}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF322E5C),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Change the no. of \nrooms here',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                        Container(
                          width: 160.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF322E5C),
                            borderRadius: BorderRadius.circular(15.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                          ),
                          child: FlutterFlowCountController(
                            decrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.minus,
                              color: enabled
                                  ? Colors.white
                                  : FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                            incrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.plus,
                              color: enabled
                                  ? Colors.white
                                  : FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                            countBuilder: (count) => Text(
                              count.toString(),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Raleway',
                                  ),
                            ),
                            count: _model.countControllerValue ??=
                                containerRoomsRecord!.no,
                            updateCount: (count) async {
                              setState(
                                  () => _model.countControllerValue = count);
                              await containerRoomsRecord!.reference
                                  .update(createRoomsRecordData(
                                no: _model.countControllerValue,
                              ));
                            },
                            stepSize: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
