import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:map_launcher/map_launcher.dart' as $ml;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_model.dart';
export 'edit_model.dart';

class EditWidget extends StatefulWidget {
  const EditWidget({super.key});

  @override
  State<EditWidget> createState() => _EditWidgetState();
}

class _EditWidgetState extends State<EditWidget> {
  late EditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: StreamBuilder<List<NewPriestsRecord>>(
        stream: queryNewPriestsRecord(
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
          List<NewPriestsRecord> bottomSheetEditNewPriestsRecordList =
              snapshot.data!;
          final bottomSheetEditNewPriestsRecord =
              bottomSheetEditNewPriestsRecordList.isNotEmpty
                  ? bottomSheetEditNewPriestsRecordList.first
                  : null;

          return Container(
            width: 350.0,
            height: 308.0,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Color(0x3B1D2429),
                  offset: Offset(
                    0.0,
                    -3.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: StreamBuilder<List<FacilitiesRecord>>(
                stream: queryFacilitiesRecord(
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
                  List<FacilitiesRecord> columnFacilitiesRecordList =
                      snapshot.data!;
                  final columnFacilitiesRecord =
                      columnFacilitiesRecordList.isNotEmpty
                          ? columnFacilitiesRecordList.first
                          : null;

                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StreamBuilder<List<NotificationsRecord>>(
                        stream: queryNotificationsRecord(
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
                          List<NotificationsRecord>
                              columnNotificationsRecordList = snapshot.data!;
                          final columnNotificationsRecord =
                              columnNotificationsRecordList.isNotEmpty
                                  ? columnNotificationsRecordList.first
                                  : null;

                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 30.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await launchMap(
                                      location:
                                          columnFacilitiesRecord?.guestLocation,
                                      title: '',
                                    );
                                  },
                                  text: 'Get Location',
                                  icon: FaIcon(
                                    FontAwesomeIcons.locationArrow,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 52.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    color: Color(0xFF2F2F2F),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Raleway',
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                              StreamBuilder<List<BookedPriestsRecord>>(
                                stream: queryBookedPriestsRecord(
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<BookedPriestsRecord>
                                      columnBookedPriestsRecordList =
                                      snapshot.data!;
                                  final columnBookedPriestsRecord =
                                      columnBookedPriestsRecordList.isNotEmpty
                                          ? columnBookedPriestsRecordList.first
                                          : null;

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => StreamBuilder<
                                              List<NewPriestsRecord>>(
                                            stream: queryNewPriestsRecord(
                                              queryBuilder:
                                                  (newPriestsRecord) =>
                                                      newPriestsRecord.where(
                                                'new_city',
                                                isEqualTo: valueOrDefault(
                                                    currentUserDocument?.city,
                                                    ''),
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
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<NewPriestsRecord>
                                                  buttonNewPriestsRecordList =
                                                  snapshot.data!;
                                              final buttonNewPriestsRecord =
                                                  buttonNewPriestsRecordList
                                                          .isNotEmpty
                                                      ? buttonNewPriestsRecordList
                                                          .first
                                                      : null;

                                              return FFButtonWidget(
                                                onPressed: () async {
                                                  await ConFacilityRecord
                                                      .collection
                                                      .doc()
                                                      .set(
                                                          createConFacilityRecordData(
                                                        conGuestName:
                                                            columnFacilitiesRecord
                                                                ?.guestName,
                                                        conGuestFacility:
                                                            columnFacilitiesRecord
                                                                ?.guestFacility,
                                                        conGuestNumber:
                                                            columnFacilitiesRecord
                                                                ?.guestNumber,
                                                        conFacilityDate:
                                                            columnFacilitiesRecord
                                                                ?.facilityDate,
                                                        conFacilityCity:
                                                            columnFacilitiesRecord
                                                                ?.facilityCity,
                                                        conGuestEmail:
                                                            columnFacilitiesRecord
                                                                ?.guestEmail,
                                                      ));
                                                  unawaited(
                                                    () async {
                                                      _model.conf =
                                                          await ConfirmCall
                                                              .call(
                                                        email:
                                                            columnFacilitiesRecord
                                                                ?.guestEmail,
                                                      );
                                                    }(),
                                                  );
                                                  await columnFacilitiesRecord!
                                                      .reference
                                                      .delete();
                                                  await columnNotificationsRecord!
                                                      .reference
                                                      .delete();
                                                  Navigator.pop(context);

                                                  setState(() {});
                                                },
                                                text: 'Confirm',
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 52.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color:
                                                            Color(0xFF14181B),
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 30.0, 0.0, 0.0),
                                child: StreamBuilder<List<BookedPriestsRecord>>(
                                  stream: queryBookedPriestsRecord(
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<BookedPriestsRecord>
                                        buttonBookedPriestsRecordList =
                                        snapshot.data!;
                                    final buttonBookedPriestsRecord =
                                        buttonBookedPriestsRecordList.isNotEmpty
                                            ? buttonBookedPriestsRecordList
                                                .first
                                            : null;

                                    return FFButtonWidget(
                                      onPressed: () async {
                                        unawaited(
                                          () async {
                                            _model.canc = await CancelCall.call(
                                              email: columnFacilitiesRecord
                                                  ?.guestEmail,
                                            );
                                          }(),
                                        );
                                        await columnFacilitiesRecord!.reference
                                            .delete();
                                        await buttonBookedPriestsRecord!
                                            .reference
                                            .delete();
                                        await buttonBookedPriestsRecord!
                                            .reference
                                            .delete();
                                        await columnNotificationsRecord!
                                            .reference
                                            .delete();

                                        await buttonBookedPriestsRecord!
                                            .reference
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'pri_counter':
                                                  FieldValue.increment(1),
                                            },
                                          ),
                                        });
                                        Navigator.pop(context);

                                        setState(() {});
                                      },
                                      text: 'Cancel',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 52.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Raleway',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 0.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
