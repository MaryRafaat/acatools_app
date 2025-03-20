import 'package:flutter/material.dart';
import 'package:acatools/data/database/database_controller.dart';

class DatabaseTest extends StatefulWidget {
  const DatabaseTest({super.key});

  @override
  _DatabaseTestState createState() => _DatabaseTestState();
}

class _DatabaseTestState extends State<DatabaseTest> {
  final _line_1_controller = TextEditingController();
  final _line_2_controller = TextEditingController();
  final _city_controller = TextEditingController();
  final _governorate_controller = TextEditingController();
  final _zip_controller = TextEditingController();
  final _country_controller = TextEditingController();
  var key = GlobalKey<FormState>();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _line_1_controller,
                decoration: InputDecoration(
                  labelText: 'Line 1',
                ),
              ),
              TextFormField(
                controller: _line_2_controller,
                decoration: InputDecoration(
                  labelText: 'Line 2',
                ),
              ),
              TextFormField(
                controller: _city_controller,
                decoration: InputDecoration(
                  labelText: 'City',
                ),
              ),
              TextFormField(
                controller: _governorate_controller,
                decoration: InputDecoration(
                  labelText: 'Governorate',
                ),
              ),
              TextFormField(
                controller: _zip_controller,
                decoration: InputDecoration(
                  labelText: 'Zip',
                ),
              ),
              TextFormField(
                controller: _country_controller,
                decoration: InputDecoration(
                  labelText: 'Country',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  DatabaseController.writeAddress({
                    'line_1': _line_1_controller.text,
                    'line_2': _line_2_controller.text,
                    'city': _city_controller.text,
                    'governorate': _governorate_controller.text,
                    'zip': _zip_controller.text,
                    'country': _country_controller.text,
                  });
                },
                child: const Text('Add Address'),
              ),
              ElevatedButton(
                onPressed: () {
                  DatabaseController.readAddresses();
                },
                child: const Text('Read Addresses'),
              ),
            ],
          ),
        ),
      ),
    );
  }

}