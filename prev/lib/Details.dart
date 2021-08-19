import 'package:flutter/material.dart';
import 'package:prev/Chat.dart';
class Detailpg extends StatefulWidget {
  

  @override
  _DetailpgState createState() => _DetailpgState();
}

class _DetailpgState extends State<Detailpg> {
  String img = "1";
  String price= "10000,0000";
  String place= "Kottayam";
  String rating= "4.5/5";
  String sname= "Damu";
  String srate= "4/5";
  bool selected = false;
  String Address="It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.";
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.black,
            actions: [
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: IconButton(
                  icon: Icon( selected ? Icons.favorite_border_rounded : Icons.favorite),
                  onPressed: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15.0),
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/img$img.jpg", fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text("\$$price/-", style: TextStyle(
                        fontSize:30, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(

                 children: [
                   SizedBox(
                     width: 20,
                   ),
                   Text("Realtor", style: TextStyle(
                       fontSize: 20, fontWeight: FontWeight.bold,color: Colors.green)),
                   SizedBox(
                     width: 10,
                   ),
                   Text("Description:", style: TextStyle(
                       fontSize: 20, fontWeight: FontWeight.bold))
                 ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(width:380,child: Text("$Address ")),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 3,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Details-",style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(
            height: 20,),
                Detarow("House Type","Villa"),
                SizedBox(
                  height: 20,),
                Detarow("Locations","$place"),
                SizedBox(
                  height: 20,),
                Detarow("Ratings / 5","$rating"),
                SizedBox(
                  height: 20,),
                Detarow("SellerName","$sname"),
                SizedBox(
                  height: 20,),
                Detarow("SellerRating","$srate"),
                SizedBox(
                  height: 50,),
                Container(

                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0),
                        bottomLeft: Radius.circular(25.0),
                      )
                  ),
                  child: TextButton(
                      onPressed: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Chater();
                      }));},
                      child: Text("Chat with Seller",style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold,color: Colors.green)),
                  ),
                ),
                SizedBox(
                  height: 20,),
              ],
            ),
          )
      ),
    );
  }
  Row Detarow(String prop,String ans){
    return  Row(children: [
      SizedBox(
        width: 30,
      ),
      Text("$prop",style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold,color: Colors.blueGrey)),
      SizedBox(
        width: 160,
      ),
      Text("$ans",style: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold,)),

    ],);
  }
}
