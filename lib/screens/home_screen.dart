import 'package:coffee_ui/screens/details_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 15.0),
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Welcome, Nadia',
                style: const TextStyle(
                  fontFamily: 'verela',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF473D3A),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/model.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 45.0),
            child: Container(
              child: Text(
                'Let\'s select the best taste for your next coffee break!',
                style: const TextStyle(
                  fontFamily: 'nunito',
                  fontSize: 17.0,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xFFB0AAA7),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Taste of the week',
                style: const TextStyle(
                  fontFamily: 'verela',
                  fontSize: 17.0,
                  color: const Color(0xFF473D3A),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontFamily: 'verela',
                    fontSize: 15.0,
                    color: const Color(0xFFCEC7C4),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 410.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CustomListCard(
                  imgPath: 'assets/starbucks.png',
                  coffeeName: 'Caffe Misto',
                  shopName: 'CoffeeShop',
                  description:
                      'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                  price: '\$4.99',
                  isFavorite: false,
                ),
                CustomListCard(
                  imgPath: 'assets/starbucks.png',
                  coffeeName: 'Caffe Latte',
                  shopName: 'BrownHouse',
                  description:
                      'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                  price: '\$3.99',
                  isFavorite: true,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Explore nearby',
                style: const TextStyle(
                  fontFamily: 'varela',
                  fontSize: 17.0,
                  color: const Color(0xFF473D3A),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  'See all',
                  style: const TextStyle(
                    fontFamily: 'varela',
                    fontSize: 15.0,
                    color: const Color(0xFFCEC7C4),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 125.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CustomImageCard(
                  imgPath: 'assets/coffee.jpg',
                ),
                CustomImageCard(
                  imgPath: 'assets/coffee2.jpg',
                ),
                CustomImageCard(
                  imgPath: 'assets/coffee3.jpg',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}

class CustomImageCard extends StatelessWidget {
  final String imgPath;

  const CustomImageCard({Key key, this.imgPath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        height: 100.0,
        width: 175.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class CustomListCard extends StatelessWidget {
  final String imgPath, coffeeName, shopName, description, price;
  final bool isFavorite;

  const CustomListCard(
      {Key key,
      this.imgPath,
      this.coffeeName,
      this.shopName,
      this.description,
      this.price,
      this.isFavorite})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        height: 300.0,
        width: 225.0,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 335.0,
                ),
                Positioned(
                  top: 75,
                  child: Container(
                    padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                    height: 260.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: const Color(0xFFDAB68C),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 60.0,
                        ),
                        Text(
                          '$shopName\'s',
                          style: const TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          coffeeName,
                          style: const TextStyle(
                            fontFamily: 'varela',
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          description,
                          style: const TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              price,
                              style: const TextStyle(
                                fontFamily: 'varela',
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF3A4742),
                              ),
                            ),
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: const Color(0xFFFFFFFF),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: isFavorite ? Colors.red : Colors.grey,
                                  size: 15.0,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 60.0,
                  top: 25.0,
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imgPath),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(),
                ),
              ),
              child: Container(
                width: 225,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: const Color(0xFF473D3A),
                ),
                child: Center(
                  child: Text(
                    'Order Now',
                    style: const TextStyle(
                      fontFamily: 'nunito',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
