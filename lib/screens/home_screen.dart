import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
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
//            Container(
//              height: 30,
//              child: ListView.builder(
//                  scrollDirection: Axis.horizontal,
//                  itemCount: 10,
//                  itemBuilder: (context, index) {
//                    return Text('Olamide');
//                  }),
//            ),
//            Container(
//              child: ListView(
//                scrollDirection: Axis.horizontal,
//                children: <Widget>[
//                    ListTile(
//                      leading: Icon(Icons.fastfood),
//                      title: Text('Pizza'),
//                      subtitle: Text('10 flavours'),
//                    ),
//                    ListTile(
//                      leading: Icon(Icons.fastfood),
//                      title: Text('Pizza'),
//                      subtitle: Text('10 flavours'),
//                    ),                ListTile(
//                    leading: Icon(Icons.fastfood),
//                    title: Text('Pizza'),
//                    subtitle: Text('10 flavours'),
//                  ),
//                  ListTile(
//                    leading: Icon(Icons.fastfood),
//                    title: Text('Pizza'),
//                    subtitle: Text('10 flavours'),
//                  ),
//                ],
//              ),
//            ),
            Material(
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
            RowHeading(
              heading: 'Most Popular',
            ),
//          ListView(
//            children: <Widget>[
//              ListTile(
//                leading: Icon(Icons.image),
//                title: Column(
//                  children: <Widget>[
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                      children: <Widget>[
//                        Text('Meat'),
//                        Icon(Icons.stars),
//                      ],
//                    ),
//                    Text('Beef BBQ'),
//                    Text('Lorem Ipsum'),
//                  ],
//                ),
//              )
//            ],
//          ),
            RowHeading(
              heading: 'All The Dishes',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
              icon: Transform.translate(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                ),
                offset: Offset(0, -30),
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

class RowHeading extends StatelessWidget {
  const RowHeading({Key key, this.heading}) : super(key: key);
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[Text(heading), Text('View all')],
    );
  }
}
