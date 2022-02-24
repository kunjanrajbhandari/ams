import 'package:amss/view/kconstant.dart';
import 'package:amss/view/more/online_class/online_class.dart';
import 'package:amss/view/more/payment/payment.dart';
import 'package:amss/view/more/profile/profile.dart';
import 'package:amss/view/more/result/main.dart';
import 'package:amss/view/more/result/main2.dart';
import 'package:amss/view/more/result/result.dart';
import 'package:amss/view/more/settings/setting.dart';
import 'package:flutter/material.dart';

import 'payment/widget/custom_table.dart';
import 'result/teacher_portal/result.dart';

class ViewMore extends StatefulWidget {
  const ViewMore({Key? key}) : super(key: key);

  @override
  _ViewMoreState createState() => _ViewMoreState();
}

class _ViewMoreState extends State<ViewMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 55,
            ),
            Center(
                child: Image(
              image: AssetImage("assets/image/college_logo.png"),
              height: 188,
            )),
            SizedBox(
              height: 55,
            ),
            Padding(
              padding: leftPadding * 4,
              child: Text(
                "More Menu",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: leftPadding * 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: moreItem(context,
                          image: 'profile.png', title: 'Profile')),
                  const Divider(
                    endIndent: 11,
                    indent: 11,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => OnlineClass()));
                      },
                      child: moreItem(context,
                          image: 'webinar.png', title: 'Online Class')),
                  const Divider(
                    endIndent: 11,
                    indent: 11,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ExamTeacherPortal()));
                      },
                      child: moreItem(context,
                          image: 'result.png', title: 'Result')),
                  const Divider(
                    endIndent: 11,
                    indent: 11,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CustomTable()));
                      },
                      child: moreItem(context,
                          image: 'payment.png', title: 'Payment')),
                  const Divider(
                    endIndent: 11,
                    indent: 11,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Setting()));
                      },
                      child: moreItem(context,
                          image: 'setting.png', title: 'Settings')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding moreItem(BuildContext context, {String? image, String? title}) {
    return Padding(
      padding: const EdgeInsets.only(top: 11.0, bottom: 11),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        //color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage("assets/icons/$image"),
              height: 29,
              width: 29,
            ),
            Padding(
              padding: leftPadding * 4,
              child: Text(
                "$title",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
