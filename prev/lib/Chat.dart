import 'package:flutter/material.dart';
class Chater extends StatelessWidget {
  const Chater({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.black,
           title:Column(
             children: [
               Text("Seller"),
               Text("online",style: TextStyle(fontSize: 10,color: Colors.green),)
             ],
           )
         ),
          body: Container(
            padding: EdgeInsets.only(top: 40,left: 10,right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.account_circle,size: 45,),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(25.0)

                          )

                      ),
                      child: Text("Hello,I am the seller of the property",style: TextStyle(color: Colors.white),),
                    )
                  ],
                ),

              ],
            ),
          ),
            bottomNavigationBar:BottomAppBar(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.emoji_emotions),
                  ),
                  Container(
                    width: 280,
                    child: TextFormField(
                      cursorColor: Colors.orange,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: "Say Hi",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.send),
                  )
                ],
              ),
              elevation: 0,
            ),
        ),
    );
  }
}
