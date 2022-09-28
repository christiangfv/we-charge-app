import 'package:we_charge/estaciones/action_button_fnid.dart';
import 'package:we_charge/estaciones/drop_down_asc_desc.dart';
import 'package:we_charge/estaciones/drop_down_parameters.dart';
import 'package:we_charge/estaciones/list_widget.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EstacionesWidget extends StatefulWidget {
  const EstacionesWidget({Key key}) : super(key: key);

  @override
  _EstacionesWidgetState createState() => _EstacionesWidgetState();
}

class _EstacionesWidgetState extends State<EstacionesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          'Explorar',
          style: FlutterFlowTheme.of(context).title1,
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
            child: Icon(
              Icons.filter_alt,
              color: FlutterFlowTheme.of(context).primaryColor,
              size: 24,
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropDownParameter(),
                DropDownAscDesc(),
                ButtonFind(),
              ],
            ),
          ),
          Expanded(child: GetStations()),
        ],
      ),
    );
  }
}
