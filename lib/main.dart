import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myapp/location_service.dart';
import 'dart:async';
import 'package:myapp/login.dart';
import 'package:myapp/sign_up.dart';
import 'package:myapp/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      home: Login(),
      routes: <String, WidgetBuilder> {
        "login" : (BuildContext context) => new Login(),
        "signup" : (BuildContext context) => new SignUp(),
      }
    );
  }
}

// class MapScreen extends StatefulWidget {
//   @override
//   State<MapScreen> createState() => _MapScreenState();
// }
//
//
// class _MapScreenState extends State<MapScreen> {
//   Completer<GoogleMapController> _controller = Completer();
//   TextEditingController _searchController = TextEditingController();
//
//   static final CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );
//
//   static final Marker _kGooglePlexMarker = Marker(
//     markerId: MarkerId('_kGooglePlex'),
//     infoWindow: InfoWindow(title: 'Google Plex'),
//     icon: BitmapDescriptor.defaultMarker,
//     position: LatLng(37.42796133580664, -122.085749655962),
//   );
//   static final CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414
//   );
//
//   static final Polyline _kPolyline = Polyline(
//     polylineId: PolylineId('_kPolyline'),
//     points: [
//       LatLng(37.42796133580664, -122.085749655962),
//       LatLng(37.43296265331129, -122.08832357078792),
//     ],
//     width: 5,
//   );
//
//   static final Marker _kLakeMarker = Marker(
//     markerId: MarkerId('_kLakeMarker'),
//     infoWindow: InfoWindow(title: 'Lake'),
//     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
//     position: LatLng(37.43296265331129, -122.08832357078792),
//   );
//
//   static final Polygon _kPolygon = Polygon(
//     polygonId: PolygonId('_kPolygon'),
//     points: [
//       LatLng(37.43296265331129, -122.08832357078792),
//       LatLng(37.42796133580664, -122.085749655962),
//       LatLng(37.418, -122.092),
//       LatLng(37.435, -122.092)
//     ],
//     strokeWidth: 5,
//     fillColor: Colors.transparent,
//   );
//
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: AppBar(title: Text('Google Map')),
//       body: Column(
//         children: [
//           Row(children: [
//             Expanded(
//               child:
//                 TextFormField(
//                 controller: _searchController,
//                 textCapitalization: TextCapitalization.words,
//                 decoration: InputDecoration(hintText: 'Search by city'),
//                 onChanged: (value) {
//                   print(value);
//                 },
//               ),),
//             IconButton(
//                 onPressed: () async {
//                   var place = await LocationService().getPlace(_searchController.text);
//                   _goToPlace(place);
//                 },
//                 icon: Icon(Icons.search),
//             )
//           ],),
//           Expanded(
//           child: GoogleMap(
//             mapType: MapType.normal,
//             markers: {
//             _kGooglePlexMarker,
//             // _kLakeMarker
//             },
//             // polylines: {
//             //   _kPolyline,
//             // },
//             // polygons: {
//             //   _kPolygon,
//             // },
//             initialCameraPosition: _kGooglePlex,
//             onMapCreated: (GoogleMapController controller) {
//             _controller.complete(controller);
//             },
//             ),
//             // floatingActionButton: FloatingActionButton.extended(
//             //   onPressed: _goToTheLake,
//             //   label: Text('To the lake!'),
//             //   icon: Icon(Icons.directions_boat),
//             // ),)
//           )
//         ],
//       )
//     );
//   }
//
//   Future<void> _goToPlace(Map<String, dynamic> place) async {
//     final double lat = place['geometry']['location']['lat'];
//     final double lng = place['geometry']['location']['lng'];
//
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(
//       CameraPosition(
//           target: LatLng(lat, lng),
//           zoom: 12),
//     ));
//   }
//
//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }
// }


