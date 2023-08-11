import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel/page1.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  List image = ["assets/mountain1.jpg","assets/mountain.jpg","assets/travel.jpg",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (context,index){
            return Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage(image[index]),fit: BoxFit.fill
                ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 90,left: 20,right: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text("Trips",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.black),),
                      Text("Mountain",style: TextStyle(fontSize: 55,fontWeight: FontWeight.w400,color: Colors.black),),
                      SizedBox(height: 15,),
                      Text("Mountain hikes give you an incredible \nsense of freedom along with \nendurance test",
                      style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                      SizedBox(height: 30,),
                      GestureDetector(onTap: (){},
                        child: Container(
                          height: 55,width: 100,
                          decoration: BoxDecoration(color: Color.fromARGB(255, 255, 248, 248),borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              MaterialButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                              },
                              child: Image.asset("assets/right-arrow.png",height: 40,width: 40,),
                              ),
                            ],
                          ),
                        ),
                      )
                      ],),
                      Column(children: 
                        List.generate(3, (indexDots) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 3),
                          height: index == indexDots?25:8,width: 8,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: index==indexDots?Colors.orange:Colors.blue),
                        );
                        }
                        )
                      )
                    ],),
                ),
            );
          }
          ),
      ),
    );
  }
}