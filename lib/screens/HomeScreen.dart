import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: InkWell(
              onTap: (){},
              child: Icon(Icons.favorite)),label: 'Fav'),
          BottomNavigationBarItem(icon: InkWell(
              onTap: (){},
              child: Icon(Icons.shopping_cart)),label: 'Cart'),

        ],
      ),
      key: scaffoldKey,
      drawer: Drawer(),
      body: ListView(
        children: [
          Padding(
            padding:const EdgeInsets.all(8.0),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: Icon(Icons.list),
                ),
                Badge(
                    badgeContent: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 5,
                      child: Text('0',style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.bold),),
                    ),
                    position: BadgePosition(top: -13.sp,end: -4.sp),
                    child: Icon(Icons.shopping_cart,size: 30.sp)),
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.all(15),
            child:Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.sp),
                  color: Colors.grey[300]
              ),
              child:TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,color: Colors.black,),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            height: .15.sh,
            width: double.infinity,
            child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){},
                    child: Column(
                      children: [
                        Padding(padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 30.sp,
                            backgroundImage:AssetImage('assets/images/in.jpg'),
                          ),
                        ),
                        Text('Clothes',style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 16.sp),),
                      ],
                    ),
                  );
                }
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("New Arrival",style: TextStyle(
                    fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.red),),
                Text("See All",style: TextStyle(
                    fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.red),),
              ],
            ),
          ),
          Container(
            height: .27.sh,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: .18.sh,
                        width: .3.sw,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          image: DecorationImage(
                            image: AssetImage('assets/images/in.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Casual',
                        style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold),),
                      Text('200 LE', style: TextStyle(
                          fontSize: 20, color: Colors.deepPurple),),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Container(
              height: .3.sh,
              child: Swiper(
                  autoplay: true,
                  pagination: SwiperPagination(),
                  itemCount: 4,
                  itemBuilder: (context,index){
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/in.jpg'),
                        ),
                      ),
                    );
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }
}
