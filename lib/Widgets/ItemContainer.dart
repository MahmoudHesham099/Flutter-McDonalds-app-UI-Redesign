import 'package:flutter/material.dart';
import 'package:mcdonaldsapp/Data/Data.dart';
import 'package:mcdonaldsapp/Screens/ItemScreen.dart';

class ItemContainer extends StatefulWidget {
  final MenuItem item;

  const ItemContainer({Key key, this.item}) : super(key: key);
  @override
  _ItemContainerState createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ItemScreen(
            item: widget.item,
          ),
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              widget.item.image,
              height: 120,
            ),
            Text(
              widget.item.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "\$" + widget.item.price.toString(),
                  style: TextStyle(
                    color: Color(0xfff03536),
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.shopping_basket,
                    color: Colors.black,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
