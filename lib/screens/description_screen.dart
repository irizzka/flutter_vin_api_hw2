import 'package:flutter/material.dart';
import 'package:flutter_vin_api_hw2/models/Car.dart';
import 'package:flutter_vin_api_hw2/widgets/car_details.dart';
import 'package:flutter_vin_api_hw2/utilities/constants.dart';

class DescriptionScreen extends StatefulWidget {
  final carData;

  DescriptionScreen({@required this.carData});

  @override
  _DescriptionScreenState createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  Car car = Car();

  @override
  void initState() {
    super.initState();
    setState(() {});
    updateUI(widget.carData);
  }

  void updateUI(dynamic carData) {
    setState(
      () {
        if (carData != null) {
          car.vin = carData['specification']['vin'];
          car.year = carData['specification']['year'];
          car.make = carData['specification']['make'];
          car.model = carData['specification']['model'];
          car.engine = carData['specification']['engine'];
          car.madeIn = carData['specification']['made_in'];
        } else {
          car.vin = '';
          car.year = '';
          car.make = '';
          car.model = '';
          car.engine = '';
          car.madeIn = '';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CAR DETAILS', style: kMainTextStyle),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: CarDetails(car: car),
    );
  }
}
