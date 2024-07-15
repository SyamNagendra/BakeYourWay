import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uidesign06/core/color.dart';
import 'package:uidesign06/core/text_style.dart';
import 'package:uidesign06/model/cart_model.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your cart'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (context, index) {
                  final item = cart.items[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            item.image,
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.name,
                                  style: txtHeading.copyWith(
                                    fontSize: 18,
                                    color: black,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text('Egg/Eggless: ${item.eggless ? 'Eggless' : 'Egg'}'),
                                Text('Theme: ${item.theme}'),
                                Text('Flavor: ${item.flavour}'),
                                Text('Weight: ${item.weight}'),
                                Text('Rs. ${item.price.toStringAsFixed(2)}'),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(Icons.remove),
                                          onPressed: () {
                                            if (item.quantity > 1) {
                                              cart.updateQuantity(item, item.quantity - 1);
                                            } else {
                                              cart.remove(item);
                                            }
                                          },
                                        ),
                                        Text('${item.quantity}'),
                                        IconButton(
                                          icon: Icon(Icons.add),
                                          onPressed: () {
                                            cart.updateQuantity(item, item.quantity + 1);
                                          },
                                        ),
                                      ],
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.delete),
                                      onPressed: () {
                                        cart.remove(item);
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Divider(),
            buildSummary(cart),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement checkout logic
              },
              child: Text('Check out'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSummary(CartModel cart) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: txtSubHeading),
            Text('Rs. ${cart.totalPrice.toStringAsFixed(2)}', style: txtSubHeading),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
              onPressed: () {
                // Implement local delivery logic
              },
              child: Text('Local Delivery'),
            ),
            OutlinedButton(
              onPressed: () {
                // Implement store pickup logic
              },
              child: Text('Store Pickup'),
            ),
          ],
        ),
        SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter your address',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(
            hintText: 'Notes (Add cake message here)',
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}

//choeae

