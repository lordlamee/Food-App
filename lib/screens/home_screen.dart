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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 15),
          constraints: BoxConstraints.tight(screenSize),
          child: Column(
            children: <Widget>[
              Text(
                'What is your favourite food?',
                style: textStyle2.copyWith(color: Colors.black, fontSize: 24),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                constraints:
                    BoxConstraints.tightFor(width: screenSize.width, height: 70),
                child: ListView(
                  addAutomaticKeepAlives: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    FoodTile(),
                    FoodTile(),
                    FoodTile(),
                    FoodTile(),
                    FoodTile(),
                    FoodTile(),
                    FoodTile(),
                    FoodTile(),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Material(
                  elevation: 6,
                  borderRadius: BorderRadius.circular(25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search Specific Food',
                      hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7)),
                      contentPadding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none),
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              RowHeading(
                heading: 'Most Popular',
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                constraints:
                    BoxConstraints.tightFor(height: 120, width: screenSize.width),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  addAutomaticKeepAlives: true,
                  children: <Widget>[
                    FoodCard(),
                    FoodCard(),
                    FoodCard(),
                    FoodCard(),
                    FoodCard()
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              RowHeading(
                heading: 'All The Dishes',
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                constraints:
                    BoxConstraints.tightFor(height: 180, width: screenSize.width),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    FoodImage(),FoodImage(),FoodImage(),FoodImage(),FoodImage(),FoodImage(),FoodImage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        showUnselectedLabels: true,
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
          BottomNavigationBarItem(
              icon: Material(
                elevation: 0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                child: Icon(
                  Icons.home,
                  color: Colors.red,
                  // size: 50,
                ),
              ),
              title: Text(
                'Home',
                style: textStyle1,
              )),
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
    );
  }
}

class FoodImage extends StatelessWidget {
  const FoodImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            constraints: BoxConstraints.tightFor(height: 170,width: 140),
            decoration: BoxDecoration(
             // shape: BoxShape.circle,
             borderRadius: BorderRadius.circular(10)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage('assets/pizza.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints.tightFor(
                height: 50,width: 140 ),
           decoration: BoxDecoration(
             color: Colors.grey.withOpacity(0.9),
               borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft:  Radius.circular(10))
           ),
            child: Icon(Icons.add,
            color: Colors.white,),
          )
        ],
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
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.image,
              color: Colors.red,
              size: 100,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Meat BBQ',
                  style: textStyle2.copyWith(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Quantity:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '1',
                      style: textStyle1.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Material(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3)),
                      child: Icon(
                        Icons.add,
                        size: 15,
                        color: lightRed,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '100\$',
                        style: textStyle1.copyWith(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        elevation: 5,
                        onPressed: () {},
                        fillColor: lightRed,
                        child: Text('Order now',
                            style: textStyle2.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 13)),
                      )
                    ],
                  ),
                )
//                   Text(
//                        'Some long random text describing whatever the hell the food on this particular tile is talking the hell about cause man..I don\'t know'
//                   ,
//                   softWrap: true,),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FoodTile extends StatelessWidget {
  const FoodTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(5, 0, 35, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Transform.rotate(
                angle: 11 / 14,
                child: Icon(
                  Icons.local_pizza,
                  color: Colors.red,
                  size: 45,
                ),
              ),
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
                  Text('10 flavours'),
                ],
              )
            ],
          ),
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
