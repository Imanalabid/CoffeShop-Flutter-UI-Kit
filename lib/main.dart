import 'package:coffeeshop/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  //     localizationsDelegates: [
  //   GlobalCupertinoLocalizations.delegate,
  //   GlobalMaterialLocalizations.delegate,
  //   GlobalWidgetsLocalizations.delegate,
  // ],
  // supportedLocales: [
  //   Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
  // ],
  // locale: Locale("fa", "IR") ,// OR Locale('ar', 'AE') OR Other RTL locales,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      
      body:ListView(
        padding: EdgeInsets.only(left: 15.0),
        children:<Widget> [
          SizedBox(height: 50.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,   
            children:<Widget>[
              Text('Welcome Nour ',
              style: TextStyle(fontFamily: 'varela',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF473D3A),

              
              ),),
            Padding(padding: EdgeInsets.only(right: 15.0),
            child: Container(height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(image: AssetImage('assets/model.jpg'),
              fit: BoxFit.cover,
              )
            ),),
            )

            ] ),
            SizedBox(height: 10.0,),
            Padding(padding: EdgeInsets.only(right: 45.0),
            child: Container(
              child:   Text('Let\'s select  the best taste for your next coffee break !',
              style: TextStyle(fontFamily: 'nunito',
              fontSize: 17.0,
              fontWeight: FontWeight.w300,
              color: Color(0xFFB0AAA7), ),),
            ),),
            SizedBox(height: 25.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Taste of the week',
               style: TextStyle(fontFamily: 'varela',
              fontSize: 17.0,
              color: Color(0xFF473D3A),
              )),
                Text('See all',
               style: TextStyle(fontFamily: 'varela',
              fontSize: 15.0,
              color: Color(0xFFCEC7C4),
              )),
            ],),
            SizedBox(height: 15,),
            Container(
              height: 410,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _coffeeListCard('assets/starbucks.png',
                  'Coffe Misto',
                  'CoffeeShop',
                  'Our dark , rich espresso balanced with steamed milk and  light  layer of foam ',
                  '\$4.99',
                  false,
                  ),
                  _coffeeListCard('assets/starbucks.png',
                  'Coffe Latte ',
                  'BrownHouse',
                  'Rich , full -bodied espresso with bittersweet milk suace and steamd milk',
                  '\$3.99',
                  false,
                  )

                ],
              ),
            ),
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Explore nearby',
                  style: TextStyle(
                                        fontFamily: 'varela',
                                        fontSize: 17.0,
                                        color: Color(0xFF473D3A)),
                ),
                Padding(padding: 
                EdgeInsets.only(right: 15.0),
                child: Text(
                  'See All',
                  style: TextStyle(
                                        fontFamily: 'varela',
                                        fontSize: 15.0,
                                        color: Color(0xFFCEC7C4)),
                
                ),
              ),
              ],
            ),
            SizedBox(height: 15,),
            Container(
              height: 125.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildImage('assets/coffee3.jpg'),
                  _buildImage('assets/coffee2.jpg'),
                  _buildImage('assets/coffee.jpg'),
                ],
              ),
            ),
            SizedBox(height: 20,)





        ],

      ) ,
    );
  }
  _buildImage(String imgPath){
    return Padding(padding: EdgeInsets.only(right: 15.0),
    child: Container(
      height: 100.0,
      width: 175,
      decoration: BoxDecoration(
     
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(image: AssetImage(imgPath),
        )
      ),
    
      ),);
  }


  _coffeeListCard(String imgPath,String coffeeName,String shopName,String description,String price , bool isFavorite){
    return Padding(
      padding:EdgeInsets.only(right: 15.0,left: 15.0),
      child: Container(
        height: 300,
        width: 225.0,
        child: Column(
          children:<Widget> [
            Stack(
              children: [
                Container(
                  height: 335.0,
                
                                ),
                                Positioned(
                                  top: 75.0,
                                child: Container(
                                  padding: EdgeInsets.only(left: 10.0,right: 20.0),
                                  height: 260,
                                  width: 225.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: Color(0xFFDAB68C)
                                  
                                  ),
                                  child: 
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:<Widget> [
                                      SizedBox(height: 60.0,),
                                      Text(shopName + '\'s',
                                      style: TextStyle(
                                        fontFamily: 'nunito',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white ),
                                      ),
                                        SizedBox(height: 10.0,),
                                        Text(coffeeName,
                                      style: TextStyle(
                                        fontFamily: 'varela',
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white ),
                                      ),
                                        Text(description,
                                      style: TextStyle(
                                        fontFamily: 'nunito',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white ),
                                      ),
                                        SizedBox(height: 10.0,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children:<Widget> [
                                            Text(
                                              price,
                                        style: TextStyle(
                                        fontFamily: 'varela',
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3A4742)),

                                            ),
                                            Container(
                                              height: 40.0,
                                              width: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(20.0),  
                                              ),
                                              child: Center(child:
                                              Icon(Icons.favorite,
                                              color: isFavorite?Colors.red:Colors.grey,
                                              size: 15.0,)),
                                            )



                                        ],)




                                  ]),
                                  

                                ),

                                ),
                                Positioned(
                                  left: 60.0,
                                  top: 25.0,
                                  child: Container(
                                    height: 100.0,
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage(imgPath),
                                      fit: BoxFit.contain)
                                    ),
                                    ),

                                )
              ],
            ),
            SizedBox(height: 20.0,),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage(),

                ));
                
              },
              child: Container(
                height: 50.0,
                width: 225.0,
                decoration: BoxDecoration(
                 color: Color(0xFF473D3A),
                 borderRadius: BorderRadius.circular(25.0),  
               ),
               child: Center(child:
               Text(
                'Order Now ',
                style: TextStyle(
                                        fontFamily: 'nunito',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color:Colors.white),
                
               )),
                
              ),
            )

        ]),
        
              ),
      
       );
  }
  }