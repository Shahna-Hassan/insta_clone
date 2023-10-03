import 'package:flutter/material.dart';
import 'package:insta_clone/imagelist.dart';
class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.close, color:  Colors.black,)),
        title: Text("New post", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
        actions: [
          TextButton(onPressed: (){}, child: Text("Next"))
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  width: double.infinity,
                  color: Colors.amber,
                  child: Image(image: AssetImage("assets/img2.jpg"), fit: BoxFit.cover,),
                ),
                SizedBox(height: 10,),
                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Recents",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.grey,
                      child: Row(children: [
                      Icon(Icons.filter_none, color: Colors.white,),
                      Text("SELECT MULTIPLE",style: TextStyle(color: Colors.white),)
                      ]),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.photo_camera,color: Colors.white,),
                    ),
                    
                  ],

                )


            ],)

              ],
            ),
           

          ),
           Expanded(
            child: GridView.builder(
            
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Image.asset(imageList[index],fit: BoxFit.cover),
                  color: Colors.amber,
                  margin: EdgeInsets.all(2.0), // Add some margin for spacing
                );
              },
            ),
          ),
        ],
      ),




    );
  }
}