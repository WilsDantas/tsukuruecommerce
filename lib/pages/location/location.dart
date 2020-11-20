import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatefulWidget {
  LocationPage({Key key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  GoogleMapController mapController;
  Set<Marker> markers = new Set<Marker>();
  double lat = -7.9110001;
  double long = -34.8337839;

  void _onMapCreated(GoogleMapController controller) async{
    mapController = controller;
    
    mapController.moveCamera(
      CameraUpdate.newLatLng(
        LatLng(lat, long),
      ),
    );

    mapController.setMapStyle(await loadAsset());

    final Marker marker = Marker(
        markerId: MarkerId("123456"),
        position: LatLng(lat, long),
        infoWindow: InfoWindow(
          title: "Onde Estamos?",
          snippet: "Recife/PE",
        ));

    setState(() {
      markers.add(marker);
    });
  }

  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/map_style.json');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onde Estamos?'),
      ),
      body: bodyPage(),
    );
  }

  Widget bodyPage() {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: LatLng(lat, long),
        zoom: 15.0,
      ),
      markers: markers,
    );
  }
}
