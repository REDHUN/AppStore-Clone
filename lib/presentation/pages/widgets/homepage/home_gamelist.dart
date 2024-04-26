import 'package:appstoreclone/core/list/home_games.dart';
import 'package:flutter/material.dart';

class HomeGameList extends StatelessWidget {
  const HomeGameList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 500,
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: homegames.length,
          itemBuilder: ((context, index) => Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                'Must-Play Games ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Text(
                                'See All',
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        Container(
                          child: ListTile(
                            horizontalTitleGap: 10,
                            contentPadding:
                                EdgeInsets.only(left: 10, right: 10),
                            leading: Container(

                                //   margin: EdgeInsets.only(left: 3),
                                height: 50,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                width: 50,
                                child: Image.asset(
                                  homegames[index].imageUrl,
                                  fit: BoxFit.fill,
                                )),
                            title: Text(
                              homegames[index].gameName,
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              homegames[index].gameDescription,
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color.fromARGB(127, 59, 51, 51))),
                                onPressed: () {},
                                child: Text(
                                  'Get',
                                  style: TextStyle(color: Colors.blue),
                                )),
                          ),
                        ),
                        Divider(
                          indent: 50,
                          color: Color.fromARGB(255, 49, 44, 44),
                        ),
                        Container(
                          child: ListTile(
                            horizontalTitleGap: 10,
                            contentPadding:
                                EdgeInsets.only(left: 10, right: 10),
                            leading: Container(

                                //   margin: EdgeInsets.only(left: 3),
                                height: 50,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                width: 50,
                                child: Image.asset(
                                  homegames[2].imageUrl,
                                  fit: BoxFit.fill,
                                )),
                            title: Text(
                              homegames[2].gameName,
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              homegames[2].gameDescription,
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color.fromARGB(127, 59, 51, 51))),
                                onPressed: () {},
                                child: Text(
                                  'Get',
                                  style: TextStyle(color: Colors.blue),
                                )),
                          ),
                        ),
                        Divider(
                          indent: 50,
                          color: Color.fromARGB(255, 49, 44, 44),
                        ),
                        Container(
                          child: ListTile(
                            horizontalTitleGap: 10,
                            contentPadding:
                                EdgeInsets.only(left: 10, right: 10),
                            leading: Container(

                                //   margin: EdgeInsets.only(left: 3),
                                height: 50,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                width: 50,
                                child: Image.asset(
                                  homegames[1].imageUrl,
                                  fit: BoxFit.fill,
                                )),
                            title: Text(
                              homegames[1].gameName,
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              homegames[1].gameDescription,
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color.fromARGB(127, 59, 51, 51))),
                                onPressed: () {},
                                child: Text(
                                  'Get',
                                  style: TextStyle(color: Colors.blue),
                                )),
                          ),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 49, 44, 44),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
