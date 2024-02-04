import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const nameRoute = '/profilepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF1F1F1),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF222158),
          ),
        ),
        title: Text(
          "My Profile",
          style: TextStyle(
            color: Color(0xFF222158),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz_sharp,
              color: Color(0xFF222158),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        "assets/images/profile.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "Neelesh Chaudhary",
                      style: TextStyle(
                        color: Color(0xFF22215B),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "UI / UX Designer",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF22215B).withOpacity(0.6),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 50,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF317B),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "PRO",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Folders",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/plus.png"),
                      Image.asset("assets/icons/setting.png"),
                      Image.asset("assets/icons/panah-kanan2.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folder-415EB6.png"),
                  title: "Mobile Apps",
                  date: "December 20.2020",
                  color: Color(0xFF415EB6),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folder-FFB110.png"),
                  title: "SVG Icons",
                  date: "December 14.2020",
                  color: Color(0xFFFFB110),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folder-AC4141.png"),
                  title: "Prototypes",
                  date: "November 22.2020",
                  color: Color(0xFFAC4141),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folder-23B0B0.png"),
                  title: "Avatars",
                  date: "November 10.2020",
                  color: Color(0xFF23B0B0),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Uploads",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset("assets/icons/sort.png"),
              ],
            ),
          ),
          SizedBox(height: 5,),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              child: Image.asset(
                "assets/icons/msword.png",
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              "Projects.docx",
            ),
            subtitle: Text(
              "November 22.2020",
            ),
            trailing: Text(
              "300kb",
            ),
          ),
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  CardFolder({
    Key? key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,
  }) : super(key: key);

  final String title;
  final String date;
  final Color color;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width * 0.4,
      height: 120,
      decoration: BoxDecoration(
        color: color.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          SizedBox(height: 15,),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 2,),
          Text(
            date,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}