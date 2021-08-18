import 'package:flutter/material.dart';
class Sell extends StatefulWidget {
  const Sell({Key? key}) : super(key: key);

  @override
  _SellState createState() => _SellState();
}

class _SellState extends State<Sell> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Property Details",style: TextStyle(color: Colors.white),),
        ),
        body: Column(
          children: [
            SizedBox(height: 30,),
            Center(
              child: Container(
                padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    shape: BoxShape.circle
                  ),

                  child:
                  IconButton(onPressed:(){print("camera pop");}, icon: Icon(Icons.camera_alt_outlined,size: 35,))),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),

                        )
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Det("House Type"),
                            Det("Address 1"),
                            Det("Address 2"),
                            Det("Place"),
                            Container(
                              padding: EdgeInsets.all(20.0),
                              child: TextFormField(
                                cursorColor: Colors.orange,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: "Price in \$(Available for Negotiation)",
                                ),
                              ),),
                            Container(
                              child: TextButton(
                                onPressed: (){print("submitted");},
                                child: Text("Submit",style: TextStyle(fontSize: 20),),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
  Container Det(String head1){
    return Container(
      padding: EdgeInsets.all(20.0),
      child: TextFormField(
        cursorColor: Colors.orange,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: "$head1",
        ),
      ),
    );
  }
}
