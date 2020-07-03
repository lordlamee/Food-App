import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/styles.dart';
import 'package:food_app/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: lightRed,
        ),
        elevation: 6,
        title: Container(
          child: Column(
            children: <Widget>[
              Text(
                'Daskar\'s',
                style: textStyle1,
              ),
              Text(
                'Cafe',
                style: textStyle1,
              )
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        constraints: BoxConstraints.tight(screenSize),
        child: Column(
          children: <Widget>[
            Text('What is your favourite food?'),
            Container(
              constraints:
                  BoxConstraints.tightFor(width: screenSize.width, height: 100),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  FoodTile(
                    image: AssetImage('assets/pizzaicon.png'),
                    heading: 'Pizza',
                    subHeading: '10 flavours',
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(25),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search Specific Food',
                    contentPadding: EdgeInsets.fromLTRB(8, 5, 0, 5),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            RowHeading(
              heading: 'Most Popular',
            ),
            Container(
              constraints:
                  BoxConstraints.tightFor(height: 150, width: screenSize.width),
              child: ListView(
                children: <Widget>[FoodCard()],
              ),
            ),
            RowHeading(
              heading: 'All The Dishes',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        elevation: 30,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                title: Text(
                  'Favorites',
                  style: textStyle1,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.perm_identity,
                  color: Colors.red,
                ),
                title: Text(
                  'Profile',
                  style: textStyle1,
                )),
//            BottomNavigationBarItem(
//                icon: Transform.translate(
//                  child: Material(
//                    elevation: 0,
//                    color: Colors.white,
//                    shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(100)),
//                    child: Icon(
//                      Icons.home,
//                      color: Colors.red,
//                     // size: 50,
//                    ),
//                  ),
//                  offset: Offset(0, -30),
//                ),
//                title: Text(
//                  'Home',
//                  style: textStyle1,
//                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                ),
                title: Text(
                  'Order',
                  style: textStyle1,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance_wallet,
                  color: Colors.red,
                ),
                title: Text(
                  'Wallet',
                  style: textStyle1,
                )),
          ],
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.local_pizza),
//            Image(
//              image: image,
//            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Pizza',
                  style: textStyle2.copyWith(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                Text('10 flavors'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FoodTile extends StatelessWidget {
  const FoodTile({Key key, this.heading, this.subHeading, this.image})
      : super(key: key);
  final String heading;
  final String subHeading;
  final image;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(
              image: image,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  heading,
                  style: textStyle2.copyWith(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                Text(subHeading),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RowHeading extends StatelessWidget {
  const RowHeading({Key key, this.heading}) : super(key: key);
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            heading,
            style: textStyle2.copyWith(color: Colors.black, fontSize: 20),
          ),
          Text('View all')
        ],
      ),
    );
  }
}
