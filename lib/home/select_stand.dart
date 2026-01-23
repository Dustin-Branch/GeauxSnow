import 'package:flutter/material.dart';
import 'package:geaux_snow/models/stand.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class SelectStand extends StatefulWidget {
  final List<StandDto> stands;

  const SelectStand({super.key, required this.stands});

  @override
  State<SelectStand> createState() => _SelectStandState();
}

class _SelectStandState extends State<SelectStand> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(30.4515, -90.4848); // Hammond, LA

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text(
          'Select a Stand',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            tooltip: 'Close',
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11.0,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.stands.length,
              itemBuilder: (context, index) {
                final stand = widget.stands[index];
                return Material(
                  color: Colors.white,
                  child: ListTile(
                    title: Text(stand.name),
                    hoverColor: Colors.grey.shade200,
                    selectedTileColor: Colors.grey.shade300,
                    splashColor: Theme.of(context).splashColor,
                    onTap: () {
                      Provider.of<SelectedStandProvider>(
                        context,
                        listen: false,
                      ).setSelectedStand(stand);
                      Navigator.of(context).pop();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
