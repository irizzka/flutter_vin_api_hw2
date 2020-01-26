import 'package:flutter/material.dart';
import 'package:flutter_vin_api_hw2/screens/description_screen.dart';
import 'package:flutter_vin_api_hw2/services/car_data_model.dart';
import 'package:flutter_vin_api_hw2/utilities/constants.dart';

class InputScreen extends StatelessWidget {
  String inputedVinNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBoxDecorationStyle,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          Text('Input VIN Number here', style: kMainTextStyle,),
          Container(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: kTextFieldInputDecoration,
              onChanged: (value) {
                inputedVinNumber = value;
              },
            ),
          ),
      FlatButton(
        color: Colors.blue,
        child: Text('Get info', style: TextStyle(color: Colors.white),),
        onPressed: () async {
          var carData =
          await CarDataModel().getCarInfoByVin(inputedVinNumber);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DescriptionScreen(
                carData: carData,
              ),
            ),
          );
        },
      ),
        ],
      ),
    );
  }
}


