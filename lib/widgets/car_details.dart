import 'package:flutter/material.dart';
import 'package:flutter_vin_api_hw2/models/Car.dart';
import 'package:flutter_vin_api_hw2/utilities/constants.dart';

class CarDetails extends StatefulWidget {
   CarDetails({@required this.car});

   Car car;

  @override
  _CarDetailsState createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBoxDecorationStyle,
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Text(widget.car.vin, style: kSecondaryTextStyle ),
            Text('${widget.car.make} ${widget.car.model}', style: kSecondaryTextStyle),
            Text(widget.car.year, style: kSecondaryTextStyle),
            Text(widget.car.engine, style: kSecondaryTextStyle),
            Text(widget.car.madeIn, style: kSecondaryTextStyle),
          ],
        ),
      ),
    );
  }
}