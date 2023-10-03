import 'package:flutter/material.dart';
import 'package:insta_clone/bottom_navigation.dart';
class ReelScreen extends StatelessWidget {
   const ReelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
         height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
          
          return ReelsPage();
        },),
      ),
    );
  }
}

class ReelsPage extends StatelessWidget {
  const ReelsPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          
          Center(
            child: Container(
              height:
              MediaQuery.of(context).size.height*1,
              width: MediaQuery.of(context).size.width*1,
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/img2.jpg"),fit: BoxFit.cover,)),
              
              ),
          ),
          Positioned(
            right: 5,
            bottom: 50,
            child: Column(
            
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
            IconButton(
              icon: Icon(Icons.favorite, color: Colors.white,),
              onPressed: () {
                // Handle favorite button press
              },
            ),
            IconButton(
              icon: Icon(Icons.comment, color: Colors.white,),
              onPressed: () {
                // Handle comment button press
              },
            ),
            IconButton(
              icon: Icon(Icons.send, color: Colors.white,),
              onPressed: () {
                // Handle send button press
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white,),
              onPressed: () {
                // Handle more options button press
              },
            ),
            SizedBox(height: 10,),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/img5.jpg"),fit: BoxFit.cover,)),
            ),
            
                ],
              ),
          ),
            Positioned(
            
             left: 10,
              bottom: 5,
              child: Container(
               
                width: 300,
                height: 100,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/img6.jpg"),
                  ),
                title: Text("doodledosangh", style: TextStyle(color: Colors.white),),
                trailing: Container(
                  width: 60,
                  height: 30,
                  
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text("Follow",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
                ),
              ),
             
              ),
              IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BottomNavigationScreen();
              },));
            },
            icon: Icon(Icons.abc, color: Colors.white,) ,
          ),
         
              
      
        ],
      ),
    );
  }
}