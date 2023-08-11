import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Details.dart';


  class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> with TickerProviderStateMixin{

  List image = ["assets/ice.jpg","assets/ice1.jpg","assets/ice2.jpg","assets/ice3.jpg",];

  List images = ["assets/hiking.png","assets/kayak.png","assets/balloon.png","assets/mask.png"];

  List text = ["Hiking","Kayak","Balloon","mask"];

  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 3,
      child: Scaffold(
     drawer: Drawer(
      child: Column(children: [
        Container(
          height: 200,width: MediaQuery.of(context).size.width,
          color: Colors.blue,
          child: Center(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ClipRRect(borderRadius: BorderRadius.circular(50),
                  child: Container(
                    height: 100,width: 100,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Image.asset("assets/traveller.png",fit: BoxFit.cover,),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Text("Venky",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
              Text("Venky.123@gmail.com",style: TextStyle(fontSize: 12,color: Colors.white),),
            ]),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person,size: 30,),
          title: Text("Profile",style: TextStyle(fontSize: 20),),
          onTap: () {
          },
        ),
         ListTile(
          leading: Icon(Icons.settings,size: 30,),
          title: Text("Settings",style: TextStyle(fontSize: 20),),
          onTap: () {
          },
        ),
          ListTile(
          leading: Icon(Icons.logout,size: 30,),
          title: Text("Logout",style: TextStyle(fontSize: 20),),
          onTap: () {
          },
        ),
      ],),
     ),
       appBar: AppBar(title: Container(
        margin: EdgeInsets.only(left: 270),
          height: 50,width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Color.fromARGB(255, 143, 139, 139),borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage("assets/passenger.png"))
          ),
          ),
          ),
        body: SafeArea(
             child: Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 10),
            child: Column(
              children: [
              Row(
                children: [
              Text("Discover",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),),
               ],),
               SizedBox(height: 20,),
               Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  child: Align(alignment: Alignment.centerLeft,
                    child: TabBar(
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Tab(child: Text("Places",style: TextStyle(color: Colors.black),),),
                        Tab(child: Text("Inspiration",style: TextStyle(color: Colors.black),),),
                        Tab(child: Text("Emotions",style: TextStyle(color: Colors.black),),),
                      ],),
                    ),
                  ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 300,width: double.maxFinite,
                  decoration: BoxDecoration(color: Colors.white,border: Border.all(width: 2),borderRadius: BorderRadius.circular(20),),
                  child: TabBarView(
                    children: [
                      ListView.builder(
                        itemCount: image.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return
                            GestureDetector( onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 20,),
                            height: 290,width: 190,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: AssetImage(image[index]),fit: BoxFit.cover)),
                            ),
                          );},  
                      ),
                      Tab(child: Text("Inspiration",style: TextStyle(color: Colors.black),),),
                      Tab(child: Text("Emotions",style: TextStyle(color: Colors.black),),),
                  ]),
                ),
               ],),
               SizedBox(height: 40,),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Explore more",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                Text("See all",style: TextStyle(fontSize: 20,color: Colors.black),)
               ],),
               SizedBox(height: 15,),
               Container(
                
                height: 160,width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                            height: 100,width: 100,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(color: Color.fromARGB(255, 235, 209, 209),borderRadius: BorderRadius.circular(30),),
                            child: Image.asset(images[index],fit: BoxFit.contain,),
                            ),
                        SizedBox(height: 5,),
                         Text(text[index],style: TextStyle(fontSize: 15,color: Colors.black),)
                          ],);
                      },
                ),
                )
            ],),
          ),
        )
          
      ),
    );
  }
}