import 'package:flutter/material.dart';
import 'package:geaux_snow/models/stand.dart';
import 'package:provider/provider.dart';

class SelectStand extends StatelessWidget {
  final List<StandDto> stands;

  const SelectStand({super.key, required this.stands});

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
      body: ListView.builder(
        itemCount: stands.length,
        itemBuilder: (context, index) {
          final stand = stands[index];
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
    );
  }
}
