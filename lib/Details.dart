import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Details extends StatefulWidget {


  const Details({super.key}); 

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
 // get gottenStars => 4;
  // int selectedIndex=-1;



  @override
  Widget build(BuildContext context) {
   return Scaffold(
  body: Container(
    height: double.maxFinite,width: double.maxFinite,
    child: Stack(
      children: [
      Positioned(
        child: Container(
          height: 275,width: double.maxFinite,
          alignment: Alignment.center,
          child: Image.asset("assets/ice.jpg"),
        ),
        ),
        Positioned(left: 30,top: 45,
          child: IconButton(onPressed: (){},
          icon: Icon(Icons.menu,size: 30,))
          ),
          Positioned(top:45,left: 330,
            child: Container(
              height: 50,width: 50,
              alignment: Alignment.center,
              child: Image.asset("assets/traveller.png"),
              ),
              ),
              Positioned(
              top: 250,
                child: Container(
                  height: 700,width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))),
                  child: Padding(padding: EdgeInsets.only(top: 35,left: 20,right: 20),
                  child: Column(
                    children: [
                   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Jammu and Kashmir",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text("50K",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),)
                   ],),
                   SizedBox(height: 20,),
                   Row(
                    children: [
                    Icon(Icons.location_on,color: Colors.grey,),
                    SizedBox(width: 5,),
                    Text("Location of kashmir",style: TextStyle(fontSize: 15,color: Colors.black),)
                   ],),
                   SizedBox(height:15,),
                   Row(children: [
                    Wrap(
                      children: List.generate(5, (index) {
                        return Icon(Icons.star,color: index<4?Colors.green: Colors.yellow,shadows: [
                          BoxShadow(color: Colors.orange,offset: Offset(5, 5),blurRadius: 15,spreadRadius: 2)
                        ],);
                      }),
                    ),
                    SizedBox(width: 10,),
                    Text("(5.0)",style: TextStyle(color: Colors.black),)
                   ],),
                   SizedBox(height: 55), 
                  Row(
                    children: [
                      Text("People",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],), 
                   SizedBox(height: 5),  
                   Row(
                     children: [
                       Text("Number of people in group",style: TextStyle(color: Colors.black),),
                     ],),
                     SizedBox(height: 40),
                     Row(children: [
                      Wrap(
                        children: List.generate(5, (index) {
                        return InkWell(onTap: (){
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 50,width: 50,
                          alignment: Alignment.center,
                        decoration: BoxDecoration(color:Colors.orange,borderRadius: BorderRadius.circular(15),border: Border.all(width: 2)),
                        child: Text((index+1).toString()),
                        )
                        );
                      }),
                      )
                     ],),
                     SizedBox(height: 45,),
                     Row(
                    children: [
                      Text("Description",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],),
                    SizedBox(height: 5),  
                   Row(
                     children: [
                       Text("A journey to a place and back again, either for \npleasure or for a particular purpose",style: TextStyle(color: Colors.black),),
                     ],),
                     SizedBox(height: 40,),
                     Row(
                      children: [
                      Container(
                        height: 60,width: 60,
                        decoration: BoxDecoration(color: Colors.white,border: Border.all(width: 2),borderRadius: BorderRadius.circular(20)),
                        child: Icon(Icons.favorite_border),
                      ),
                      SizedBox(width: 50),
                      Container(
                        height: 60,width: 200,
                      decoration: BoxDecoration(color: Color.fromARGB(255, 210, 226, 240),borderRadius: BorderRadius.circular(15),border: Border.all(width: 2)),
                        child: MaterialButton(onPressed: (){},
                        child: Row(
                          children: [
                            Text("Book Trip Now"),
                            SizedBox(width: 20,),
                            Image.asset("assets/right-arrow.png",height: 40,width: 40),
                          ],
                        ),
                      ),
                      ),
                     ],)
                  ],),
                  ),
                ),
                ),
    ],),
    ),
    );
    
    
  }
}