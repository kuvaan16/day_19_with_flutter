import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProCard extends StatefulWidget {
  ProCard({super.key});

  @override
  State<ProCard> createState() => _ProCardState();
}

class _ProCardState extends State<ProCard> {
  final Uri urlGithub = Uri.parse("https://github.com/kuvaan16");
  final Uri urlFacebook = Uri.parse("https://facebook.com/");
  final Uri urlLinkedin =
      Uri.parse("https://www.linkedin.com/in/itz-kovaan-07a02b272");
  final Uri urltwitter = Uri.parse("https://twitter.com/");

  bool follow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(),
          Positioned(
            child: Container(
              child: Image.asset(
                "img/kk.jpg",
              ),
            ),
          ),
          Positioned(
            top: 550,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 50,
                      offset: Offset(0, 70),
                      spreadRadius: 70),
                ],
              ),
              width: 400,
              child: Column(
                children: [
                  Text(
                    "Kuvaan16",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "KD, Duhok",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Web and App developer with more than 4 years of\nexpirience. C#,JS,SQL,HTML5,FLUTTER,PHP.",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () async {
                            if (await canLaunchUrl(urltwitter)) {
                              await launchUrl(urltwitter);
                            } else {
                              throw 'Could not launch $urltwitter';
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Ionicons.logo_twitter,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            if (await canLaunchUrl(urlLinkedin)) {
                              await launchUrl(urlLinkedin);
                            } else {
                              throw 'Could not launch $urlLinkedin';
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              FontAwesomeIcons.linkedinIn,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            if (await canLaunchUrl(urlFacebook)) {
                              await launchUrl(urlFacebook);
                            } else {
                              throw 'Could not launch $urlFacebook';
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            if (await canLaunchUrl(urlGithub)) {
                              await launchUrl(urlGithub);
                            } else {
                              throw 'Could not launch $urlGithub';
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Ionicons.logo_github,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              follow = !follow;
                            });
                            
                          },
                          child: follow? Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 35, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black54,
                                      spreadRadius: 0,
                                      offset: Offset(0, 4),
                                      blurRadius: 6)
                                ]),
                            child: Text(
                              "Following",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ) : Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 35, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black54,
                                      spreadRadius: 0,
                                      offset: Offset(0, 4),
                                      blurRadius: 6)
                                ]),
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    spreadRadius: 0,
                                    offset: Offset(0, 4),
                                    blurRadius: 6)
                              ]),
                          child: Text(
                            "Message",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Container(
                    width: 150,
                    height: 4.5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
