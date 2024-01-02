import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: ListView(
            children: [
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(100)),
                                    ),
                                    child: Center(
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(100)),
                                        child: Image.asset('assets/user.png'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 10),
                              SizedBox(
                                width: 150,
                                child: Column(
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          "안녕하세요",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(top: 15),
                                              width: 115,
                                              height: 8,
                                              color: Colors.lightGreen.shade200,
                                            ),
                                            Text(
                                              'KIMJINNY님! 👋',
                                              style: TextStyle(
                                                color: Colors.green.shade900,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100)),
                                ),
                                child: const Center(
                                  child: Icon(Icons.calendar_today),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100)),
                                ),
                                child: const Center(
                                  child:
                                  Icon(Icons.notifications_none, size: 30),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          "어디가시나요?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 280,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.place,
                                        color: Colors.grey, size: 30),
                                    Flexible(
                                      flex: 1,
                                      child: TextField(
                                        cursorColor: Colors.blue,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 3,
                                          ),
                                          hintText: '검색',
                                          hintStyle:
                                          TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                          ),
                          child: const Center(
                            child: Icon(Icons.search,
                                color: Colors.grey, size: 30),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade300,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                          ),
                          child: const Center(
                            child: Text(
                              "검색어",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade300,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                          ),
                          child: const Center(
                            child: Text(
                              "검색어",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade300,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                          ),
                          child: const Center(
                            child: Text(
                              "검색어",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade300,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                          ),
                          child: const Center(
                            child: Text(
                              "검색어",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "핫플레이스 🔥",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "모두보기",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 300,
                            height: 320,
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 320,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset('assets/spot1_image.png',
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      BlurryContainer(
                                        width: 60,
                                        height: 60,
                                        blur: 5,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100)),
                                        child: Center(
                                          child: Text(
                                            "❤️",
                                            style: TextStyle(
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        BlurryContainer(
                                          width: 280,
                                          height: 130,
                                          blur: 5,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                            bottomLeft: Radius.circular(50),
                                            bottomRight: Radius.circular(50),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "서울 경복궁",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 25,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.place_outlined,
                                                        color: Colors.white),
                                                    Text(
                                                      "서울특별시 종로구 효자로 12",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "서울특별시 종로구 사직로에\n위치한 조선 왕조의 법궁",
                                                      style: TextStyle(
                                                        color: Colors.white70,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          SizedBox(
                            width: 300,
                            height: 320,
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 320,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset('assets/spot2_image.png',
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      BlurryContainer(
                                        width: 60,
                                        height: 60,
                                        blur: 10,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100)),
                                        child: Center(
                                          child: Text(
                                            "❤️",
                                            style: TextStyle(
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        BlurryContainer(
                                          width: 280,
                                          height: 130,
                                          blur: 5,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                            bottomLeft: Radius.circular(50),
                                            bottomRight: Radius.circular(50),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "부산 해동용궁사",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 25,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.place_outlined,
                                                        color: Colors.white),
                                                    Text(
                                                      "부산광역시 기장군 용궁길86",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "부산광역시 기장군 기장읍 시랑리에 있는 절이다.\n바다와 가장 가까운 사찰로 알려져 있다.",
                                                      style: TextStyle(
                                                        color: Colors.white70,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "인기 ❤",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "모두보기",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 300,
                            height: 320,
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 320,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset('assets/spot3_image.png',
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      BlurryContainer(
                                        width: 60,
                                        height: 60,
                                        blur: 5,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100)),
                                        child: Center(
                                          child: Text(
                                            "❤",
                                            style: TextStyle(
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        BlurryContainer(
                                          width: 280,
                                          height: 130,
                                          blur: 5,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                            bottomLeft: Radius.circular(50),
                                            bottomRight: Radius.circular(50),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "서울 북촌 한옥마을",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 25,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.place_outlined,
                                                        color: Colors.white),
                                                    Text(
                                                      "서울특별시 종로구 계동길",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "북촌한옥마을은 600년 수도의 역사를\n자랑하듯 전통 한옥들이 즐비한 동네이다",
                                                      style: TextStyle(
                                                        color: Colors.white70,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          SizedBox(
                            width: 300,
                            height: 320,
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 320,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset('assets/spot4_image.png',
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      BlurryContainer(
                                        width: 60,
                                        height: 60,
                                        blur: 5,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100)),
                                        child: Center(
                                          child: Text(
                                            "❤",
                                            style: TextStyle(
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        BlurryContainer(
                                          width: 280,
                                          height: 130,
                                          blur: 10,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                            bottomLeft: Radius.circular(50),
                                            bottomRight: Radius.circular(50),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "경주 동궁과 월지",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 25,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.place_outlined,
                                                        color: Colors.white),
                                                    Text(
                                                      "경상북도 경주시 원화로 102",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "경상북도 경주시에 있는 남북국시대\n통일신라의 별궁이 자리했던 궁궐터.",
                                                      style: TextStyle(
                                                        color: Colors.white70,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "홈",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home_work_outlined),
                label: "호텔",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.map_outlined),
                label: "지도",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.create),
                label: "후기",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "설정",
              ),
            ],
            selectedItemColor: Colors.green,
          ),
        ),
      ),
    );
  }
}