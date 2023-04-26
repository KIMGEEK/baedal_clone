import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
// This is the theme of your application.
//
// Try running your application with "flutter run". You'll see the
// application has a blue toolbar. Then, without quitting the app, try
// changing the primarySwatch below to Colors.green and then invoke
// "hot reload" (press "r" in the console where you ran "flutter run",
// or simply save your changes to "hot reload" in a Flutter IDE).
// Notice that the counter didn't reset back to zero; the application
// is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const BaeminHome(),
    );
  }
}

class BaeminHome extends StatelessWidget {
  const BaeminHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar() {
      return SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Color.fromARGB(255, 93, 190, 187)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
              ),
              Container(
                width: 50,
                height: 50,
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: Text(
                      '충북 청주시 충대로 1',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              )),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_alert_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
      );
    }

    Widget _search() {
      return Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 93, 190, 187),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2),
              boxShadow: [
                BoxShadow(
                  color: Colors.transparent.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Row(children: const [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(Icons.search, color: Colors.grey),
              ),
              Expanded(
                  child: Text('닭발? 순대? 곱창?',
                      style: TextStyle(color: Colors.grey, fontSize: 16)))
            ]),
          ),
        ),
      );
    }

    Widget _delivery() {
      Widget _square(String title, String desc) {
        double squareSize = (MediaQuery.of(context).size.width - 48) / 2;
        return Container(
          width: squareSize,
          height: squareSize,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 16),
                Text(
                  desc,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )
              ],
            ),
          ),
        );
      }

      return Row(
        children: [
          _square('배달1', '세상은 넓고\n맛집은 많다'),
          const SizedBox(width: 16),
          _square('배달2', '한 번에 한 집만\n빠르게 배달해요!'),
        ],
      );
    }

    Widget _packaging() {
      return Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '포장',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                '가까운 가게는 직접 가지러 가지요',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
          Image.network(
            'https://media.vlpt.us/images/kongsub/post/96e23619-25ab-4d99-a5fd-6e31a9e7fa8b/100600104.2.jpg',
            width: 60,
          ),
        ]),
      );
    }

    Widget _commerce() {
      Widget _item(String image, String title) {
        return Expanded(
          flex: 1,
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Column(
                  children: [
                    Image.network(
                      image,
                      width: 60,
                      height: 40,
                    ),
                    const SizedBox(height: 8),
                    Text(title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              )),
        );
      }

      return Row(
        children: [
          _item(
            'https://i0.wp.com/www.levapelier.com/wp-content/uploads/2016/08/inauguration-retransmise-en-live.png?fit=1200%2C539',
            '쇼핑라이브',
          ),
          const SizedBox(width: 16),
          _item(
            'https://assets.picspree.com/variants/ZGfjhX7PP6jFBsQzQjzaxTDM/f4a36f6589a0e50e702740b15352bc00e4bfaf6f58bd4db850e167794d05993d',
            '선물하기',
          ),
          const SizedBox(width: 16),
          _item(
            'https://image.shutterstock.com/image-illustration/restaurant-icon-main-course-menu-600w-1884359215.jpg',
            '전국별미',
          ),
        ],
      );
    }

    Widget _advertisement() {
      Widget _page(String image) {
        return Image.network(image, fit: BoxFit.cover);
      }

      return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 140,
          child: Stack(
            children: [
              PageView(
                children: [
                  _page(
                      'https://www.dailypop.kr/news/photo/201810/35546_58614_2549.jpg'),
                  _page(
                      'http://www.safetimes.co.kr/news/photo/202112/104558_86910_138.jpg')
                ],
              ),
              Positioned(
                right: 8,
                bottom: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text('1 / 6 모두보기'),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget _additional() {
      Widget _item(IconData icon, String title) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Column(children: [
              Icon(icon, color: Colors.black, size: 20),
              SizedBox(height: 4),
              Text(
                title,
                style: TextStyle(color: Colors.black),
              )
            ]),
          ),
        );
      }

      return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.white,
          child: IntrinsicHeight(
              child: Row(
            children: [
              _item(Icons.local_parking, '포인트'),
              VerticalDivider(color: Colors.grey.shade300),
              _item(Icons.airplane_ticket_outlined, '쿠폰함'),
              VerticalDivider(color: Colors.grey.shade300),
              _item(Icons.shopping_bag_outlined, '선물함'),
              VerticalDivider(color: Colors.grey.shade300),
              _item(Icons.favorite_border, '찜'),
            ],
          )),
        ),
      );
    }

    Widget _contents() {
      double squreSize =
          (MediaQuery.of(context).size.width - 48) / 2; // 배민 박스 크기
      return Expanded(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: Color.fromARGB(255, 93, 190, 187),
              child: _search(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                Container(child: _delivery()),
                SizedBox(height: 16),
                Container(child: _packaging()),
                SizedBox(height: 16),
                Container(child: _commerce()),
                SizedBox(height: 16),
                Container(
                  child: _advertisement(),
                ),
                SizedBox(height: 16),
                Container(
                  child: _additional(),
                )
              ]),
            ),
          ]),
        ),
      );
    }

    return Scaffold(
      body: Column(children: [
        _appBar(),
        _contents(),
      ]),
    );
  }
}
