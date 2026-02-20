import 'package:daily_ramadan_tracker_app/conts/TEXT_STYLE.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        title: Text("Ramadan Tracker"),
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFdad3e1),
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(6),
              child: Icon(Icons.notifications_none, color: Colors.black),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                  image: AssetImage("assets/images/header_bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Today", style: APP_TEXT_STYLE.textWhite16),

                  SizedBox(height: 6),

                  Text("1st Ramadan 4445", style: APP_TEXT_STYLE.textWhite14),

                  SizedBox(height: 6),

                  Text(
                    "Tuesday, 12 Mar 2024",
                    style: APP_TEXT_STYLE.textWhite10,
                  ),

                  SizedBox(height: 15),

                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 25,
                          ),
                          child: Text(
                            "Ifter time-vhg:15 pm",
                            style: APP_TEXT_STYLE.textPerpal10,
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 20,
                          ),
                          child: Text(
                            "Ifter time-vhg:15 pm",
                            style: APP_TEXT_STYLE.textPerpal10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


          Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/category_bg.png"), opacity: 0.2, fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Color(0xFFe6ddf9).withOpacity(0.9),
                  BlendMode.darken,
                ),
              ),
            ),
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Text("Category", style: APP_TEXT_STYLE.textBlack16,),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _categoryCard("assets/images/prayer_time.png", "Prayer Time"),
                    _categoryCard("assets/images/tasbih.png", "Tasbih"),
                    _categoryCard("assets/images/dua.png", "Dua"),
                    _categoryCard("assets/images/quran.png", "Quran"),
                  ],
                )



              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                  image: AssetImage("assets/images/tasbih_count.png"),
                  fit: BoxFit.cover,
                  opacity: 0.5,
                  colorFilter: ColorFilter.mode(Color(0xFF9373b6).withOpacity(1), BlendMode.darken)
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Start Your Day To Count", style: APP_TEXT_STYLE.textWhite16),


                  Text("Tasbih", style: APP_TEXT_STYLE.textWhite16),

                  SizedBox(height: 10),

                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 20,
                    ),
                    child: Text(
                      "Get Started",
                      style: APP_TEXT_STYLE.textPerpal12,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                    image: AssetImage("assets/images/prayer_sec.png"),
                    fit: BoxFit.cover,
                    opacity: 0.25,
                    colorFilter: ColorFilter.mode(Color(0xFF764CA5).withOpacity(0.85), BlendMode.darken)
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Prayer Time", style: APP_TEXT_STYLE.textWhite16),


                  Text("12 Mar 2024", style: APP_TEXT_STYLE.textWhite10),

                  SizedBox(height: 10),

                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 20,
                    ),
                    child: Text(
                      "Get Started",
                      style: APP_TEXT_STYLE.textPerpal12,
                    ),
                  ),
                ],
              ),
            ),
          ),


        ],
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFF764CA5).withOpacity(0.7),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          currentIndex: 0,
          onTap: null,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.schedule),
              label: 'Schedule',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }

   Widget _categoryCard(String img, String text) {
     return Container(
         height: 75,
         width: 85,
         padding: EdgeInsets.all(8),
         decoration: BoxDecoration(
           color: Color(0xFFFFFFFF),
           borderRadius: BorderRadius.circular(5),
         ),
         child: Column(
             children: [
               Image.asset(img),
               SizedBox(height: 8,),
               Text(text, style: APP_TEXT_STYLE.textBlack10,),
             ]
         )
     );
   }



}
