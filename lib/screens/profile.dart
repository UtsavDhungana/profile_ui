import 'package:flutter/material.dart';

import './app_drawer.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  Widget contactMeListTile(IconData iconName, String text) {
    return ListTile(
      leading: CircleAvatar(
        radius: 16,
        backgroundColor: Colors.black,
        child: Icon(
          iconName,
        ),
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 25,
          letterSpacing: 2,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget followMeLogo(String url) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 27,
      backgroundImage: NetworkImage(
        url,
      ),
    );
  }

  Widget titleStack(String title) {
    return Stack(
      children: <Widget>[
        const Divider(
          height: 50,
          thickness: 3,
          color: Colors.pink,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 30,
          ),
          decoration: const BoxDecoration(
            color: Colors.pink,
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 30,
            letterSpacing: 2,
            fontWeight: FontWeight.normal,
          ),
        ),
        elevation: 0,
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              width: deviceSize.width,
              height: 210,
              child: Column(
                children: <Widget>[
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F28%2F2020%2F10%2F13%2Fcorgi-dog-POPDOGNAME1020.jpg',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: Text(
                      'user_name',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Text(
                    'user_designation',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 25,
                        ),
                        child: const Text(
                          'user_age',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 25,
                        ),
                        child: const Text(
                          'user_reg.no',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            titleStack('Contact Me'),
            contactMeListTile(Icons.mail, 'user_mail@gmail.com'),
            contactMeListTile(Icons.call, 'user_number'),
            const SizedBox(
              height: 10,
            ),
            titleStack('Follow Me'),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  followMeLogo(
                    'https://cdn.icon-icons.com/icons2/2429/PNG/512/linkedin_logo_icon_147268.png',
                  ),
                  followMeLogo(
                    'https://www.danoneinstitute.org/wp-content/uploads/2020/06/logo-rond-twitter.png',
                  ),
                  followMeLogo(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGFP43sKUQ49OsY5AJxoqs0_R43CoGv9izSw&usqp=CAU',
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  followMeLogo(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Facebook_icon_2013.svg/1024px-Facebook_icon_2013.svg.png',
                  ),
                  followMeLogo(
                    'https://i.pinimg.com/originals/80/2a/19/802a19bdfaec18f714d44db59b456a6e.png',
                  ),
                  followMeLogo(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwLHPO20r35_XVI3Ryk4vaJvP-E-lvrGvfTV1JkC2uLr-EyqUEkEffa9Fii9mwE_l1_Xo&usqp=CAU',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
