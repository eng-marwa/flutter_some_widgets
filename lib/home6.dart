import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: SafeArea(
        child: Column(children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Colors.white,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://w7.pngwing.com/pngs/178/419/png-transparent-man-illustration-computer-icons-avatar-login-user-avatar-child-web-design-face-thumbnail.png')),
              shape: BoxShape.circle,
            ),
          ),
          Stack(
            children: [
              Container(
                color: Colors.green,
                width: 200,
                height: 200,
              ),
              Container(
                color: Colors.yellow,
                width: 200,
                height: 200,
                margin: EdgeInsets.only(top: 50),
              ),
              Container(
                color: Colors.purple,
                width: 200,
                height: 200,
                margin: EdgeInsets.symmetric(vertical: 70, horizontal: 120),
              ),
            ],
          ),
          Container(
            height: 100,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Positioned(
                    left: 85,
                    child: Stack(
                      children: [
                        CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                'https://cdn.imgbin.com/12/17/15/imgbin-computer-icons-avatar-user-profile-people-icon-7RDMPHWU7eMSmGcdYktEZZDtE.jpg')),
                        Padding(
                          padding: const EdgeInsets.only(top: 32.0, left: 32),
                          child: Text(
                            '+20',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )),
                Positioned(
                    left: 35,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://cdn.imgbin.com/6/3/1/imgbin-computer-icons-avatar-child-user-profile-blog-childrens-BWctkFwabpPPrK5PiZZEShp64.jpg'),
                    )),
                Positioned(
                    child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://w7.pngwing.com/pngs/178/419/png-transparent-man-illustration-computer-icons-avatar-login-user-avatar-child-web-design-face-thumbnail.png'),
                )),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
