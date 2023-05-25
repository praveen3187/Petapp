import 'package:flutter/material.dart';
import 'package:petapp/main.dart';
import 'package:petapp/size_config.dart';
import 'package:petapp/app_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
 class PetDetailsPage extends StatelessWidget {
  const PetDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(onPressed: (){

      }, 
      label: const Text('add to cart'
      ),
       icon: SvgPicture.asset('assets/add_to_cart_icon.svg'
       ),
      ),
      backgroundColor: kWhite,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: SizeConfig.blockSizeVertical!*50,
              child: Stack(
                children: [
                  Image.asset('assets/images/dog_marly_cover.png',
                  height: SizeConfig.blockSizeVertical! *60,
                  width: double.infinity,
                  fit:BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child:Container(
                      
                      height:40 ,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42),
                               ),
                        color:kWhite,
        
                      ),
                    ),
                    
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding:EdgeInsets.only(
                        top: SizeConfig.blockSizeVertical!*8,
                        left:SizeConfig.blockSizeHorizontal!*8,
                      ) ,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset('assets/arrow_left_icon.svg',)),
                    ),
        
                  )
                ],
              ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Marly',style: kSourceSansProBold.copyWith(fontSize: SizeConfig.blockSizeHorizontal!*6)),
                          Row(
                            children: [
                              SvgPicture.asset('assets/pin_point_icon.svg'),
                              SizedBox(width: 8,),
                              Text('Arizona Us'),
                            ],
                          )
                        ],
                      ),
                      GestureDetector
                      (
                        onTap: () {
                          debugPrint('favourite');
                        },
                        child: SvgPicture.asset('assets/favorite_icon.svg',)),
                    ],
                  ),
        
                ]),
              ),
              SizedBox(
                height: KPaddingHorizontal,
              ),
            // Padding(padding: EdgeInsets.symmetric(horizontal: KPaddingHorizontal),
            
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: KPaddingHorizontal),
               child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 237, 201, 173),   
                    ),
                    width: 85,
                    
                    child: Column(children: [
                      Text('6Months',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.w900),),
                      SizedBox(height: 1,),
                      Text('Age')
                    ],)
                  ),
                 
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 237, 201, 173),   
                    ),
                    width: 85,
                    
                    child: Column(children: [
                      Text('Brown',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.w900),),
                      SizedBox(height: 1,),
                      Text('color')
                    ],)
                  ),
                
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 237, 201, 173),   
                    ),
                    width: 85,
                    
                    child: Column(children: [
                      Text('6kgs',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.w900),),
                      SizedBox(height: 1,),
                      Text('weight')
                    ],)
                  ),
                  
                ],
                       ),
             ),
             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 7),
               child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About me',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
               ),
             ),
          
              
               
             
             SizedBox(height: 20,),
             Padding(padding: EdgeInsets.symmetric(horizontal: 10),
             
             child: Text('A person can learn a lot from a dog, even a loopy one like ours.\n\n Marley taught me about living each day with unbridled exuberance and joy, about seizing the moment and following your heart.\n\n He taught me to appreciate the simple things-a walk in the woods, a fresh snowfall, a nap in a shaft of winter sunlight. And as he grew old and achy, he taught me about optimism in the face of adversity. Mostly, he taught me about friendship and selflessness and, above all else, unwavering loyalty'),
             
             ),
             
              
          ],
          ),
        ),
      ),
    );
  }
}
