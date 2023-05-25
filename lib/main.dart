//import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';
import 'package:petapp/app_styles.dart';
import 'package:petapp/pet_details-page.dart';
import 'package:petapp/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int _selectedIndex=0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home:PetDetailsPage()
      home: Scaffold(
        body: HomeScreen(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kWhite,
          items:[
            BottomNavigationBarItem(
              icon:_selectedIndex==0?SvgPicture.asset('assets/home_selected.svg'): 
              SvgPicture.asset('assets/home_unselected.svg'),
              label: '',
              ),
              BottomNavigationBarItem(
              icon:_selectedIndex==1 ?SvgPicture.asset('assets/cart_selected.svg'): 
              SvgPicture.asset('assets/cart_unselected.svg'),
              label: '',
              ),
              BottomNavigationBarItem(
              icon:_selectedIndex==2 ? SvgPicture.asset('assets/profile_selected.svg'): 
              SvgPicture.asset('assets/profile_unselected.svg'),
              label: '',
              ),

          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
      );
      
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    List<String>dogs=[
      'dog_marly.png',
      'dog_cocoa.png',
      'dog_walt.png'
    ];
    List<String>cats=[
      'cat_alyx.png',
      'cat_brook.png',
      'cat_marly.png',
    ];
    List<String>cat_name=[
      'alyx',
      'brook',
      'marly',
    ];
    List dogs_name=[
       'Marly',
       'Cocoa',
       'Walt',
    ];
    return SafeArea(
      child: ListView(
        children: [
          Row(
            children: [
              SizedBox(width: 20,),
              SvgPicture.asset(
                'assets/nav_icon.svg',
                ),
                SizedBox(width: 250,),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: kRed,
                  backgroundImage: NetworkImage('https://www.getillustrations.com/photos/pack/3d-avatar-male_lg.png'),
                )
            ],
          ),
           const SizedBox(height:2,
           ),
           SizedBox(height: 200,
           child:Stack(children: [
            Positioned(
              left:0,
              top: 0,
              right: 0,
              bottom: 0,
              child: Image.asset('assets/images/welcome_message.png',)
            ),
            Positioned(
              left: SizeConfig.blockSizeHorizontal!*38,
              top:0,
              right: 0,
              bottom: 0,

child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.center,
children:[
       Text('Hello Osama'),
      Text('Ready for an amazing and lucky experience',style: kSourceSansProregular.copyWith(fontSize: SizeConfig.blockSizeHorizontal!*3.5,),
)
           ],
           
), // Column
)// Positioned
           ],) 
           ),
  Container(
    height:30,
    child:Row(
      children: [
        SizedBox(width: 10,),
       Text('Dogs',style:kSourceSansProBold.copyWith(
          fontSize: SizeConfig.blockSizeHorizontal!*6,
          ),
        )
        ]

    )
  ),
  const SizedBox (
    height: 10,
), // SizedBox
SizedBox(
height: 169,
child: ListView.builder(
itemCount: dogs.length,
scrollDirection: Axis.horizontal,
itemBuilder: (context, index) {
return Container(
height: 169,
width: 150,
margin: EdgeInsets.only(
   left: index == 0 ? 30 :15,
   right: index == dogs.length-1 ? 30: 0,
), 
padding:EdgeInsets.all(10),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(kBorderRadiusList),
color: kWhite,),
child: GestureDetector(
  // onTap: () {
  //    Navigator.push(context, MaterialPageRoute(builder: ((context) => PetDetailsPage())));
  // },

  child:   Column(
  
    children: [
  
  ClipRRect(
  
  borderRadius: BorderRadius.circular(kBorderRadiusList),
  
  child: GestureDetector(
    
    onTap: (){
      if(dogs[index]=='dog_marly.png')
      {
         Navigator.push(context, MaterialPageRoute(builder: ((context) => PetDetailsPage())));
      }

    },
    child: Image.asset('assets/images/${dogs[index]}',
    
    fit: BoxFit.cover),
  ), 
  
  ),
  
  SizedBox(height: 10,
  
  ),
  
  Row(
  
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    children: [
  
    Container(
  
      height: SizeConfig.blockSizeHorizontal!*2,
  
      
  
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.5),
  
      color: kLightOrange,
  
      ),
  
      padding: EdgeInsets.symmetric(horizontal: 7,
  
      ),
  
      child: Center(
  
        child:Text('BANANA',style: kSourceSansProBold.copyWith(fontSize: SizeConfig.blockSizeHorizontal! *2.5,),
  
        ),
  
      ),
  
       ),
  
        const Icon(Icons.favorite_outline,color:kRed,size: 16,),
  
  ],
  
  ),
  
  const SizedBox(height:6 ,),
  
  Row(
  
    children: [
  
          Text(dogs_name[index],maxLines: 1,
  
      
  
      overflow: TextOverflow.ellipsis,
  
      
  
      style: kSourceSansProBold.copyWith(
  
      
  
      fontSize: SizeConfig.blockSizeHorizontal! * 3,
  
      
  
      color:kLightGrey,
  
      
  
      ),
  
      
  
      ),
  
    ],
  
  )
  
  ]),
), 
); 
},
), 
),
  const SizedBox (
    height: 10,
), 
  Container(
    height:30,
    child:Row(
      children: [
        SizedBox(width: 10,),
       Text('Cats',style:kSourceSansProBold.copyWith(
          fontSize: SizeConfig.blockSizeHorizontal!*6,
          ),
        )
        ]

    )
  ),
SizedBox(height: 7,),
SizedBox(
height: 169,
child: ListView.builder(
itemCount: cats.length,
scrollDirection: Axis.horizontal,
itemBuilder: (context, index) {
return Container(
height: 169,
width: 150,
margin: EdgeInsets.only(
   left: index == 0 ? 30 :15,
   right: index == cats.length-1 ? 30: 0,
), 
padding:EdgeInsets.all(10),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(kBorderRadiusList),
color: kWhite,),
child: Column(
  children: [
ClipRRect(
borderRadius: BorderRadius.circular(kBorderRadiusList),
child: Image.asset('assets/images/${cats[index]}',fit: BoxFit.cover), 
),
SizedBox(height: 10,
),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Container(
    height: SizeConfig.blockSizeHorizontal!*2,
    
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.5),
    color: kLightOrange,
    ),
    padding: EdgeInsets.symmetric(horizontal: 7,
    ),
    child: Center(
      child:Text('BANANA',style: kSourceSansProBold.copyWith(fontSize: SizeConfig.blockSizeHorizontal! *2.5,),
      ),
    ),
     ),
      const Icon(Icons.favorite_outline,color:kRed,size: 16,),
],
),
const SizedBox(height:6 ,),
Row(
  children: [
        Text(cat_name[index],maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: kSourceSansProBold.copyWith(
        fontSize: SizeConfig.blockSizeHorizontal! * 3,
        color:kLightGrey,
            ),
    ),
  ],
)

]), 
); 
},
), 
),


         
          
        ],
      ),
      
    );
  }
}