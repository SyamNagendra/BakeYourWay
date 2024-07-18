import 'package:flutter/material.dart';

class CustomizationScreen extends StatefulWidget {
  @override
  _CustomizationScreenState createState() => _CustomizationScreenState();
}

class _CustomizationScreenState extends State<CustomizationScreen> {
  String selectedFlavor = 'Vanilla';
  List<String> toppings = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customize Your Cake'),
      ),
      body: Column(
        children: [
          // Cake Preview
          Container(
            height: 200,
            color: Colors.brown[200],
            child: Center(
              child: Text(
                'Cake with $selectedFlavor flavor',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          // Flavor Selector
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: ['Vanilla', 'Chocolate', 'Strawberry'].map((flavor) {
              return ChoiceChip(
                label: Text(flavor),
                selected: selectedFlavor == flavor,
                onSelected: (selected) {
                  setState(() {
                    selectedFlavor = flavor;
                  });
                },
              );
            }).toList(),
          ),
          // Toppings Selector
          Wrap(
            spacing: 8.0,
            children: ['Sprinkles', 'Fruits', 'Nuts'].map((topping) {
              return FilterChip(
                label: Text(topping),
                selected: toppings.contains(topping),
                onSelected: (selected) {
                  setState(() {
                    if (selected) {
                      toppings.add(topping);
                    } else {
                      toppings.remove(topping);
                    }
                  });
                },
              );
            }).toList(),
          ),
          // Save Button
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, {
                'flavor': selectedFlavor,
                'toppings': toppings,
              });
            },
            child: Text('Save Cake'),
          ),
        ],
      ),
    );
  }
}
