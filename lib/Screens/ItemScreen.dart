import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcdonaldsapp/Data/Data.dart';

class ItemScreen extends StatefulWidget {
  final MenuItem item;

  const ItemScreen({Key key, this.item}) : super(key: key);
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Image.asset(
          'assets/logo.png',
          height: 40,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.shopping_basket,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            widget.item.image,
            height: 200,
          ),
          Text(
            widget.item.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Carbohydrates: ' + widget.item.carbohydrate.toString() + 'g',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
              Text(
                'Proteins: ' + widget.item.protein.toString() + 'g',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Calories: ' + widget.item.calories.toString() + 'Cal',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
              Text(
                'Fats: ' + widget.item.fats.toString() + 'g',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              widget.item.description,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$" + widget.item.price.toString(),
                  style: TextStyle(
                      color: Color(0xfff03536),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xffffcc00),
                    child: MaterialButton(
                      child: Text(
                        'Add to bag',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
