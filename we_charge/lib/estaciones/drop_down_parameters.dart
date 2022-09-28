import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:we_charge/flutter_flow/flutter_flow_theme.dart';

class DropDownParameter extends StatefulWidget {
  const DropDownParameter({Key key}) : super(key: key);

  @override
  State<DropDownParameter> createState() => _DropDownParameterState();
}

class _DropDownParameterState extends State<DropDownParameter> {
  // Initial Selected Value
  String dropdownvalue = 'Distancia';

  // List of items in our dropdown menu
  var items = [
    'Distancia',
    'Velocidad',
    'Tiempo de espera',
    'Precio',
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // Initial Value
      value: dropdownvalue,

      // Down Arrow Icon
      icon: const Icon(Icons.keyboard_arrow_down),

      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(
            items,
            style: FlutterFlowTheme.of(context).title1,
          ),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String newValue) {
        setState(() {
          dropdownvalue = newValue;
        });
      },
    );
  }
}
