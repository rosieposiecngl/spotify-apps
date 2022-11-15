import 'package:flutter/material.dart';
import 'package:spot_apps/tema.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: bottomNavBar(),
      body: body(),
    );
  }

  Widget bottomNavBar() {
    return Container(
      color: kBottomNavBarColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 1,
            color: kGreyColor,
          ),
          Row(
            children: [
              Image.asset(
                'assets/image3.png',
                width: 53,
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Gone ',
                          style: whiteTextStyle.copyWith(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          '• Roseanne Park',
                          style: greyTextStyle.copyWith(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon_device.png',
                          width: 13,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Devices Available',
                          style: whiteTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/icon_love.png',
                width: 24,
              ),
              SizedBox(
                width: 8,
              ),
              Image.asset(
                'assets/icon_play.png',
                width: 24,
              ),
              SizedBox(
                width: defaultMargin,
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: kBackgroundColor,
          ),
          BottomNavigationBar(
            backgroundColor: kBottomNavBarColor,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            selectedItemColor: kWhiteColor,
            unselectedItemColor: kGreyColor,
            elevation: 1,
            items: [
              BottomNavigationBarItem(
                label: 'home',
                icon: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_home.png'),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_search.png'),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Koleksi Kamu',
                icon: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/koleksi.png'),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Premium',
                icon: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/spotify.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget body() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(
                  0xff544a4b,
                ),
                kBackgroundColor,
                kBackgroundColor,
              ],
            ),
          ),
        ),
        ListView(
          children: [
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning, Cindy!',
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.history,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Icon(
                        Icons.account_circle_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  Row(
                    children: [
                      CardItem(
                        title: 'Ikimonogakari',
                        imageUrl: 'assets/image1.png',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CardItem(
                        title: 'Kei Takebuchi',
                        imageUrl: 'assets/image2.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      CardItem(
                        title: 'Roseanne Park',
                        imageUrl: 'assets/image3.png',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CardItem(
                        title: 'Jennie Ndut',
                        imageUrl: 'assets/image4.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      CardItem(
                        title: 'Manobal',
                        imageUrl: 'assets/image5.png',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CardItem(
                        title: 'Turtle Rabbit\nKim',
                        imageUrl: 'assets/image6.png',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Text(
                'Recently Played',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RecentlyItem(
                    imageUrl: 'assets/image7.png',
                    title: 'Celebrity',
                  ),
                  RecentlyItem(
                    imageUrl: 'assets/image8.png',
                    title: 'Carnival',
                  ),
                  RecentlyItem(
                    imageUrl: 'assets/image9.png',
                    title: 'Pretties Girl',
                  ),
                  RecentlyItem(
                    imageUrl: 'assets/image0.png',
                    title: 'One Call Away',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Text(
                'Story behind school',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReleaseItem(
                    imageUrl: 'assets/album1.png',
                    title: 'BLACKPINK',
                    subtitle: 'Album • Born Pink',
                  ),
                  ReleaseItem(
                    imageUrl: 'assets/album2.png',
                    title: 'BLACKPINK',
                    subtitle: 'Album • Born Pink',
                  ),
                  ReleaseItem(
                    imageUrl: 'assets/album3.png',
                    title: 'Playgoose',
                    subtitle: 'Album • One Night',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Text(
                'Your top mixes',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReleaseItem(
                    imageUrl: 'assets/album4.png',
                    title: 'Kobasolo',
                    subtitle: 'Album • New One',
                  ),
                  ReleaseItem(
                    imageUrl: 'assets/album5.png',
                    title: 'Kobasolo',
                    subtitle: 'Album • Morning Tags',
                  ),
                  ReleaseItem(
                    imageUrl: 'assets/album6.png',
                    title: 'Kobasolo',
                    subtitle: 'Album • One Call',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ],
    );
  }
}

class ReleaseItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ReleaseItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    this.subtitle = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 148,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 12,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            subtitle,
            style: greyTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class RecentlyItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const RecentlyItem({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 100,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 12,
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CardItem({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        defaultRadius,
      ),
      child: Container(
        width: 174,
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 56,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                height: 56,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: kCardColor,
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(defaultRadius),
                  ),
                ),
                child: FittedBox(
                  child: Text(
                    title,
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
