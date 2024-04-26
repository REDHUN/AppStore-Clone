import 'package:appstoreclone/core/list/home_games.dart';
import 'package:flutter/material.dart';

class HomeGameView extends StatelessWidget {
  const HomeGameView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 320,
        child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: homegames.length,
            itemBuilder: (contex, index) => SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        child: Text(
                          homegames[index].heading,
                          style: TextStyle(color: Colors.blue, fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          homegames[index].gameName,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          homegames[index].subHeading,
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ),
                      Stack(alignment: Alignment.bottomLeft, children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 220,
                            width: MediaQuery.of(context).size.width - 10,
                            child: Image.asset(
                              homegames[index].imageUrl,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Positioned(
                            left: 15,
                            bottom: 20,
                            child: Container(
                              width: MediaQuery.of(context).size.width - 10,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.4),
                                      blurRadius: 10,
                                      spreadRadius: 10,
                                      offset: Offset(-10, 13))
                                ],
                                // gradient: LinearGradient(
                                //   colors: [
                                //     Colors.green.withOpacity(0.5),
                                //     Colors.blue.withOpacity(0.5)
                                //   ],
                                // ),
                              ),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      homegames[index].icon,
                                      height: 40,
                                      width: 40,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                      width:
                                          10), // Add some spacing between image and text
                                  Container(
                                    width: MediaQuery.of(context).size.width -
                                        80, // Adjust width as needed
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 200,
                                              child: Text(
                                                homegames[index].gameName,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              homegames[index].gameDescription,
                                              style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.white
                                                            .withOpacity(0.6)),
                                              ),
                                              onPressed: () {},
                                              child: Text(
                                                'Get',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                            Text(
                                              'in-App Purchases',
                                              style: TextStyle(
                                                fontFamily: 'Raleway',
                                                fontSize: 11,
                                                color: Colors.white
                                                    .withOpacity(0.9),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ))
                      ])
                    ],
                  ),
                )),
      ),
    );
  }
}
