import 'package:flutter/material.dart';


class HomePage extends StatefulWidget  {
   
   HomePage({super.key});
   

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List img=["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNeDsmvHw8w-d_jgiZUQlnKWqlPUF07uwJ6g&usqp=CAU","https://images.pexels.com/photos/3640930/pexels-photo-3640930.jpeg?cs=srgb&dl=pexels-ena-marinkovic-3640930.jpg&fm=jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt09OafrRCrabmATNvnShwzIf3MMKq2j4ZHA&usqp=CAU"];

String? selection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(
              
              width: 150,
              child: Image(image: NetworkImage("https://logos-download.com/wp-content/uploads/2016/03/Instagram_Logo_2016.png"),
              fit: BoxFit.cover,),
            ),
            PopupMenuButton<String>(
            icon: Icon(
             
             Icons.keyboard_arrow_down, color: Colors.black),
            onSelected: (String value) {
              // Handle the selection here
              print('Selected: $value');
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'item1',
                child: ListTile(
                  title: Text("Following"),
                  contentPadding: EdgeInsets.all(10),
                  trailing: Icon(Icons.group, grade: 20),
                ),
              ),
              
              PopupMenuItem<String>(
                value: 'item2',
                child: ListTile(
                  title: Text("Favorites"),
                  contentPadding: EdgeInsets.all(10),
                  trailing: Icon(Icons.star_border),
                ),
              ),
            ])
          ],
        ),
        actions: [
          Icon(color: Colors.black,Icons.favorite_border_outlined),
          SizedBox(width: 5,),
          Container(
             width: 50,
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: Image(image: NetworkImage("https://socialpros.co/wp-content/uploads/2023/05/2023-05-20_20h36_12.png"),
                    fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: 19,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      child: Text("5", style: TextStyle(fontSize: 10)),
                    ),
                  )
                ],
              ),
            )
          ),
          
          
          
        ],
      ),
      body: Column(
        children: [
          Container(
           
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      
                      radius: 40,
                      backgroundImage: AssetImage("assets/img2.jpg"),
                      backgroundColor: Color(0xffff99cc),
                    ),
                    SizedBox(height: 8,),
                    Text("User"),
                   
                  ],
                ),
              );
              
            },),
          ),
          SizedBox(height: 10,),
           Expanded(
                      child: ListView.builder(itemCount: img.length,itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                               backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa5X9jCWtLIzq43eb6DkurYfgSU-z8qq8GTA&usqp=CAU"),
                              ),
                              title: Text("Shahna_hassan"),
                              trailing: Icon(Icons.more_vert),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height*0.3,
                                width: double.infinity,
                                child: Image(fit: BoxFit.fill,image: NetworkImage(img[index]))),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.favorite, color: Colors.red,),
                                    SizedBox(width: 5,),
                                    Icon(Icons.message),
                                    SizedBox(width: 5,),
                                    Icon(Icons.telegram, ),
                                    SizedBox(width: 5,),

                                  ],
                                ),
                                Icon(Icons.bookmark)

                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("100 likes", style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Username Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt... more "),
                            SizedBox(height: 10,)
                          ],
                        );
                      },),
                    )
         
        ],
      ),
      
      
    );
  }
}