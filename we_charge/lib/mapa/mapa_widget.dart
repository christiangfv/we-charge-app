import 'package:cloud_firestore/cloud_firestore.dart';

import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class MapaWidget extends StatefulWidget {
  const MapaWidget({Key key}) : super(key: key);

  @override
  _MapaWidgetState createState() => _MapaWidgetState();
}

class _MapaWidgetState extends State<MapaWidget> {
  LatLng googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  Iterable<FlutterFlowMarker> markers = [];

  @override
  void initState() {
    // TODO: implement initState

    _onMapCreated();
    super.initState();
  }

  void _onMapCreated() {
    CollectionReference stations =
        FirebaseFirestore.instance.collection('stations.v1');
    stations.get().then(
      (snapshot) {
        for (var station in snapshot.docs) {
          try {
            print(station.get('address'));
            var marker = FlutterFlowMarker(
                station.get('address'),
                LatLng(double.parse(station.get('latitude')),
                    double.parse(station.get('longitude'))));
            markers = markers.toList()..add(marker);
            setState(() {});
          } catch (e) {
            print(e);
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: FlutterFlowGoogleMap(
            controller: googleMapsController,
            onCameraIdle: (latLng) => googleMapsCenter = latLng,
            initialLocation: googleMapsCenter ??=
                LatLng(-33.447487, -70.673676),
            markerColor: GoogleMarkerColor.violet,
            mapType: MapType.normal,
            style: GoogleMapStyle.standard,
            initialZoom: 14,
            allowInteraction: true,
            allowZoom: true,
            showZoomControls: true,
            showLocation: true,
            showCompass: false,
            showMapToolbar: false,
            showTraffic: true,
            centerMapOnMarkerTap: true,
            markers: markers,
          ),
        ),
      ),
    );
  }
}
