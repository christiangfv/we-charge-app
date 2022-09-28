import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilWidget extends StatefulWidget {
  const PerfilWidget({Key key}) : super(key: key);

  @override
  _PerfilWidgetState createState() => _PerfilWidgetState();
}

class _PerfilWidgetState extends State<PerfilWidget> {
  double sliderValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          'Aplicar Filtro',
          style: FlutterFlowTheme.of(context).title2,
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 48,
              icon: Icon(
                Icons.close_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Distancia',
                    style: FlutterFlowTheme.of(context).subtitle2,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Slider(
                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                        inactiveColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        min: 25,
                        max: 250,
                        value: sliderValue ??= 125,
                        label: sliderValue.toString(),
                        divisions: 23,
                        onChanged: (newValue) {
                          setState(() => sliderValue = newValue);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Duración',
                    style: FlutterFlowTheme.of(context).subtitle2,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Slider(
                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                        inactiveColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        min: 25,
                        max: 250,
                        value: sliderValue ??= 125,
                        label: sliderValue.toString(),
                        divisions: 23,
                        onChanged: (newValue) {
                          setState(() => sliderValue = newValue);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Tiempo de espera',
                    style: FlutterFlowTheme.of(context).subtitle2,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Slider(
                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                        inactiveColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        min: 25,
                        max: 250,
                        value: sliderValue ??= 125,
                        label: sliderValue.toString(),
                        divisions: 23,
                        onChanged: (newValue) {
                          setState(() => sliderValue = newValue);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Precio',
                    style: FlutterFlowTheme.of(context).subtitle2,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Slider(
                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                        inactiveColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        min: 25,
                        max: 250,
                        value: sliderValue ??= 125,
                        label: sliderValue.toString(),
                        divisions: 23,
                        onChanged: (newValue) {
                          setState(() => sliderValue = newValue);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Save Changes',
                  options: FFButtonOptions(
                    width: 300,
                    height: 50,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    elevation: 2,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 8,
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
