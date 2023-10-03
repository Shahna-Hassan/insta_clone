import 'package:flutter/material.dart';
class AcctScreen extends StatefulWidget {
  const AcctScreen({super.key});

  @override
  State<AcctScreen> createState() => _AcctScreenState();
}

class _AcctScreenState extends State<AcctScreen> {
  @override
  Widget build(BuildContext context) {
    return 
    
    DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
         
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.lock, color: Colors.black,),
          title: Text("shahna_hassan",style: TextStyle(color: Colors.black),),
          actions: [
            Icon(Icons.add_box_outlined,color: Colors.black,),
            SizedBox(width: 20,),
            Icon(Icons.menu, color: Colors.black,)
          ],
        ),
        body:
        
            ListView(
              shrinkWrap: true,
              children: [
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        CircleAvatar(
                          radius: 40,
                      backgroundColor: Colors.amber,
                        ),
                        Column(
                         children: [
                           Text("3", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Posts")
                         ],
                        ),
                        Column(
                         children: [
                           Text("380", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Followers")
                         ],
                        ),
                        Column(
                         children: [
                           Text("345", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Following")
                         ],
                        )
                                    ],),
                      ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Text("Shahna_Hassan", style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(height: 2,),
                              Text("Creating my own sunshine")
                          ],
                          ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey[400]),
                                  fixedSize:MaterialStatePropertyAll(Size(160, 10), ) ),onPressed: (){}, child: Text("Edit profile",style: TextStyle(color: Colors.black),)),
                                 ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey[400]),fixedSize:MaterialStatePropertyAll(Size(160, 10)) ),onPressed: (){}, child: Text("Share profile",style: TextStyle(color: Colors.black))),
                                 Container(
                                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[400],),
                                  child: IconButton(onPressed: (){}, icon: Icon(Icons.person_add_alt_1_outlined)))
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text("Story highlights", style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("Keep your favourite stories on your profile"),
                            SizedBox(height:5),
                            Container(
                              height: 80,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                return 
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        radius: 30,
                                      ),
                                    );
                                    
                                    
                                  
                              },),
                            )
                            
                            
                          ],
                         ),
                       ),
                     Column(
                           children: [
                             TabBar(
                        tabs: [
                          Tab(child: Icon(Icons.grid_on, color: Colors.black,)),
                          Tab(child: Icon(Icons.assignment_ind, color: Colors.black,)),
                        ],
                             ),
                             SizedBox(
                        height: 500, // Adjust the height according to your content
                        child: Expanded(
                          child: TabBarView(
                            children: [
                              // First tab: User's posts
                              Center(child: Text('User\'s Posts')),
                              // Second tab: User's tagged posts
                              Center(child: Text('User\'s Tagged Posts')),
                            ],
                          ),
                        ),
                             ),
                           ],
                         ),
                       
                          
                    ],
                  ),
                ),
              ],
            )
          
      ),
    );
  }
}