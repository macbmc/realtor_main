import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prev/Details.dart';
import 'package:prev/Sell.dart';


void main() {
  runApp(Prev());
}
 class Prev extends StatelessWidget {
   const Prev({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
         debugShowCheckedModeBanner: false ,
         home:SafeArea(
           child: Scaffold(
               body: Home(),
             floatingActionButton: Act(),
           ),
         )
     );
   }
}
class Act extends StatelessWidget {
  const Act({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 80,
      child: FittedBox(
        child: FloatingActionButton(

            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return Sell();
              }));
            },
            child: Padding( padding:EdgeInsets.all(3), child: Text("Sell Property",style: TextStyle(fontSize: 10,color: Colors.yellow,fontWeight: FontWeight.bold),)),
            backgroundColor: Colors.blueGrey
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: 125,
                  ),
                  Text("Location ↓", style: TextStyle(color: Colors.white54,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.location_on, color: Colors.red,),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Kerala,India", style: TextStyle(color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 140,
              ),
              Container(
                padding: EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.notifications_active, color: Colors.greenAccent,
                        size: 30,),
                      onPressed: () {
                        print("icon pressed");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.account_circle_outlined, color: Colors.white,
                        size: 30,),
                      onPressed: () {
                        print("icon pressed");
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              RaisedButton(
                textColor: Colors.black,
                color: Colors.yellow,
                child: Text("Flats", style: TextStyle(),),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(80.0),
                ),
              ),

              RaisedButton(
                textColor: Colors.white,
                color: Colors.blueGrey,
                child: Text("Homes"),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(80.0),
                ),
              ),

              RaisedButton(
                textColor: Colors.black,
                color: Colors.yellow,
                child: Text("Land"),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(80.0),
                ),
              ),
              RaisedButton(
                textColor: Colors.black,
                color: Colors.yellow,
                child: Text("Commercial"),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(80.0),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("Realtor",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight
                              .bold),),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Verified", style: TextStyle(color: Colors.green,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          buildColumnWithRow("1", "Nikal Apartments", "100","Kozhikode","4.5",context),
                          buildColumnWithRow("2", "Nikal Apartments", "100","Kozhikode","4.5",context),
                          buildColumnWithRow("3", "Nikal Apartments", "100","Kozhikode","4.5",context),
                          buildColumnWithRow("4", "Nikal Apartments", "100","Kozhikode","4.5",context),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text("Recommended ",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight
                              .bold),),
                        Text("For You", style: TextStyle(fontSize: 20,),),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment. spaceBetween,
                      children: [
                        buildRowwithColumn(
                            "4", "Nikal Apartmnets", "Kozhikode", "4.5",
                            "400.5",context),
                        SizedBox(
                          height: 20,
                        ),
                        buildRowwithColumn(
                            "3", "Nikal Apartmnets", "Kozhikode", "4.5",
                            "400.5",context),
                        SizedBox(
                          height: 20,
                        ),
                        buildRowwithColumn(
                            "2", "Nikal Apartmnets", "Kozhikode", "4.5",
                            "400.5",context),
                        SizedBox(
                          height: 20,
                        ),
                        buildRowwithColumn(
                            "6", "Nikal Apartmnets", "Kozhikode", "4.5",
                            "400.5",context),
                        SizedBox(
                          height: 20,
                        ),
                        buildRowwithColumn(
                            "1", "Nikal Apartmnets", "Kozhikode", "4.5",
                            "400.5",context),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

        ],
      ),

    );
  }


  GestureDetector buildColumnWithRow(String img1, String title1, String pricing1,String place1,String rating1,BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return Detailpg();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 250,
              width: 160,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.white54,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      "assets/img$img1.jpg", fit: BoxFit.cover, height: 120,),
                  ),

                  Text(
                    "\$ $pricing1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  Container(
                    height: 2,
                    width: 140,
                    color: Colors.grey,
                  ),

                  Text(
                    title1, style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    place1,
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Icon(Icons.star, color: Colors.red,),
                      SizedBox(
                        width: 10,
                      ),
                      Text("$rating1", style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold))
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  GestureDetector buildRowwithColumn(String img2, String title2, String place2,
      String rating2, String pricing2,BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return Detailpg();
        }));
      },
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Container(
            height: 180,
            width: 372,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: Colors.white54,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(

              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset("assets/img$img2.jpg", fit: BoxFit.cover,
                    height: 180,
                    width: 200,),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Text("$title2", style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold)),

                    Text("$place2", style: TextStyle(fontSize: 15,)),

                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.red,),
                        SizedBox(
                          width: 10,
                        ),
                        Text("$rating2", style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))
                      ],
                    ),

                    Text("\$ $pricing2", style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}



