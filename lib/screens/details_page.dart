import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: height - 20.0,
                width: width,
                color: const Color(0xFFF3B2B7),
              ),
              Positioned(
                top: height / 2,
                width: width,
                child: Container(
                  height: height / 2 - 20,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Positioned(
                top: height / 2 + 25,
                left: 15.0,
                child: Container(
                  height: height / 2 - 50.0,
                  width: width,
                  child: ListView(
                    children: <Widget>[
                      Text(
                        'Preparation time',
                        style: const TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF726C68),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '5min',
                        style: const TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          color: const Color(0xFFC6C4C4),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 35.0),
                        child: Container(
                          height: 0.5,
                          color: const Color(0xFFC6C4C4),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Ingredients',
                        style: const TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF726B68),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 110.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            IngredientItems(
                              name: 'Water',
                              iconName: Icon(
                                Icons.bubble_chart,
                                size: 18.0,
                                color: const Color(0xFFFFFFFF),
                              ),
                              bgColor: const Color(0xFF6FC5DA),
                            ),
                            IngredientItems(
                              name: 'Brewed Espresso',
                              iconName: Icon(
                                Icons.radio_button_checked,
                                size: 18.0,
                                color: const Color(0xFFFFFFFF),
                              ),
                              bgColor: const Color(0xFF615955),
                            ),
                            IngredientItems(
                              name: 'Sugar',
                              iconName: Icon(
                                Icons.settings_input_svideo,
                                size: 18.0,
                                color: const Color(0xFFFFFFFF),
                              ),
                              bgColor: const Color(0xFFF39595),
                            ),
                            IngredientItems(
                              name: 'Toffee Nut Syrup',
                              iconName: Icon(
                                Icons.sentiment_neutral,
                                size: 18.0,
                                color: const Color(0xFFFFFFFF),
                              ),
                              bgColor: const Color(0xFF8FC28A),
                            ),
                            IngredientItems(
                              name: 'Natural Flavors',
                              iconName: Icon(
                                Icons.lens,
                                size: 18.0,
                                color: const Color(0xFFFFFFFF),
                              ),
                              bgColor: const Color(0xFF3B8079),
                            ),
                            IngredientItems(
                              name: 'Vanilla Syrup',
                              iconName: Icon(
                                Icons.flare,
                                size: 18.0,
                                color: const Color(0xFFFFFFFF),
                              ),
                              bgColor: const Color(0xFFF8B970),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 35.0),
                        child: Container(
                          height: 0.5,
                          color: const Color(0xFFC6C4C4),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Nutrition Information',
                        style: const TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF726B6B),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Calories',
                            style: const TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              color: const Color(0xFFD4D3D2),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            '250',
                            style: const TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF716966),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Proteins',
                            style: const TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              color: const Color(0xFFD4D3D2),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            '10g',
                            style: const TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF716966),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Caffeine',
                            style: const TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              color: const Color(0xFFD4D3D2),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            '150mg',
                            style: const TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF716966),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 35.0),
                        child: Container(
                          height: 0.5,
                          color: const Color(0xFFC6C4C4),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35.0),
                            color: const Color(0xFF473D3A),
                          ),
                          child: Center(
                            child: Text(
                              'Make Order',
                              style: const TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: height / 10,
                left: 75.0,
                child: Container(
                  width: 400.0,
                  height: 400.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/pinkcup.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 25.0,
                left: 15.0,
                child: Container(
                  height: 300.0,
                  width: 250.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: 150.0,
                            child: Text(
                              'Caramel Macchiato',
                              style: const TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
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
                                size: 18.0,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 170.0,
                        child: Text(
                          'Freshly steamed milk with vanila-flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish',
                          style: const TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 13.0,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: const Color(0xFF473D3A),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '4.2',
                                    style: const TextStyle(
                                      fontFamily: 'nunito',
                                      fontSize: 13.0,
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                  ),
                                  Text(
                                    '/5',
                                    style: const TextStyle(
                                      fontFamily: 'nunito',
                                      fontSize: 13.0,
                                      color: const Color(0xFF7C7573),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    height: 35.0,
                                    width: 80.0,
                                  ),
                                  Positioned(
                                    left: 40.0,
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(17.5),
                                        border: Border.all(
                                          color: Colors.black,
                                          style: BorderStyle.solid,
                                          width: 1.0,
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage('assets/man.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20.0,
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(17.5),
                                        border: Border.all(
                                          color: const Color(0xFFF3B3B7),
                                          style: BorderStyle.solid,
                                          width: 1.0,
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage('assets/model.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 35.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17.5),
                                      border: Border.all(
                                        color: const Color(0xFFF3B3B7),
                                        style: BorderStyle.solid,
                                        width: 1.0,
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage('assets/model2.jpg'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              Text(
                                '+ 27 more',
                                style: const TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 12.0,
                                  color: const Color(0xFFFFFFFF),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class IngredientItems extends StatelessWidget {
  final String name;
  final Icon iconName;
  final Color bgColor;

  const IngredientItems({Key key, this.name, this.iconName, this.bgColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: bgColor,
            ),
            child: Center(
              child: iconName,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Container(
            width: 60.0,
            child: Center(
              child: Text(
                name,
                style: const TextStyle(
                  fontFamily: 'nunito',
                  fontSize: 12.0,
                  color: const Color(0xFFC2C0C0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
