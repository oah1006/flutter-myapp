import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myapp/splash_screen.dart';

class MapSceen extends StatefulWidget {
  @override
  State<MapSceen> createState() => MapSceenState();
}

class MapSceenState extends State<MapSceen> {
  final Set<Marker> markers = new Set();

  Future<Map<String, dynamic>> getPosition() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
    var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    markers.add(Marker( //add second marker
      markerId: MarkerId("Me"),
      position: LatLng(position.toJson()['latitude'], position.toJson()['longitude']), //position of marker
      infoWindow: InfoWindow( //popup info
        title: 'My Custom Title ',
        snippet: 'My Custom Subtitle',
      ),
      icon: BitmapDescriptor.defaultMarker, //Icon for Marker
    ));
    return position.toJson();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: FutureBuilder(
        future: getPosition(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container();
          }
          if (snapshot.hasData) {
            return GoogleMap(
              myLocationButtonEnabled: false,
              zoomGesturesEnabled: true,
              markers: markers,
              initialCameraPosition: CameraPosition(
                target: LatLng(snapshot.data['latitude'], snapshot.data['longitude']),
                zoom: 14.4746,
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}