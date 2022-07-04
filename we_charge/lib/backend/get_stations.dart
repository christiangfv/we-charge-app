import 'package:cloud_firestore/cloud_firestore.dart';

Future getStations() async {
  CollectionReference stations =
      FirebaseFirestore.instance.collection('stations.v1');
  return stations.get();
}
