import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../backend/get_stations.dart';
import '../flutter_flow/flutter_flow_theme.dart';

class GetStations extends StatelessWidget {
  GetStations();

  @override
  Widget build(BuildContext context) {
    CollectionReference stations =
        FirebaseFirestore.instance.collection('stations.v1');

    return FutureBuilder<QuerySnapshot<Object>>(
      future: stations.get(),
      builder: (BuildContext context,
          AsyncSnapshot<QuerySnapshot<Object>> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        // if (snapshot.hasData && !snapshot.data.exists) {
        //   return Text("Document does not exist");
        // }

        if (snapshot.connectionState == ConnectionState.done) {
          return ListView.builder(
            itemCount: snapshot.data.docs.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x430F1113),
                        offset: Offset(0, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                snapshot.data.docs[index].get('municipality'),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 1,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                snapshot.data.docs[index].get('name'),
                                style: FlutterFlowTheme.of(context).subtitle1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Text(
                                'Conector: ${snapshot.data.docs[index].get('connector')}',
                                style: FlutterFlowTheme.of(context).bodyText2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                              child: Icon(
                                Icons.schedule,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 20,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                              child: Text(
                                '${snapshot.data.docs[index].get('curret')}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(24, 0, 0, 4),
                              child: Icon(
                                Icons.location_on_sharp,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 20,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                              child: Text(
                                '${snapshot.data.docs[index].get('address')}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
          Map<String, dynamic> data = snapshot.data as Map<String, dynamic>;
          return Text(data.toString());
        }

        return Text("loading");
      },
    );
  }
}

// ListTile(
//                 title: Text(snapshot.data.docs[index].get('address')),
//                 subtitle: Text(snapshot.data.docs[index].get('municipality')),
//               );