import 'package:flutter/material.dart';
import 'package:search_filter/model.dart';

class AddFriend extends StatefulWidget {
  const AddFriend({Key? key}) : super(key: key);

  @override
  State<AddFriend> createState() => _AddFriendState();
}

class _AddFriendState extends State<AddFriend> {
  TextEditingController searchController = TextEditingController();
  String search = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Container(
                constraints: BoxConstraints.expand(),
                decoration: const BoxDecoration(
                    // image: DecorationImage(
                    //     image:
                    //         AssetImage("assets/images/backgroundtransperant.png"),
                    //     fit: BoxFit.cover),
                    ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios)),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "Search Filter",
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 30),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: searchController,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide:
                                BorderSide(width: 1, color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintText: 'Search',
                          hintStyle:
                              TextStyle(fontSize: 15.0, color: Colors.white),
                        ),
                        //
                        onChanged: (String? value) {
                          print(value);
                          setState(() {
                            search = value.toString();
                          });
                        },

                        //
                      ),
                    ),
                    // InkWell(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => AddFriendResultScreen()),
                    //     );
                    //   },
                    //   child: Container(
                    //     height: 50,
                    //     width: 120,
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(40),
                    //         color: AppColours.custom_pinkk),
                    //     child: Center(
                    //       child: Text(
                    //         "Search",
                    //         style: TextStyle(color: Colors.white),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: addfriendresult.length,
                          itemBuilder: (context, index) {
                            late String positiontitle =
                                addfriendresult[index].title.toString();
                            late String positionsubtitle =
                                addfriendresult[index].substitle.toString();

                            if (searchController.text.isEmpty) {
                              return ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    addfriendresult[index].img,
                                  ),
                                ),
                                title: Text(
                                  addfriendresult[index].title,
                                  style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                subtitle: (Text(
                                  addfriendresult[index].substitle,
                                  style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      color: Colors.white),
                                )),
                                //
                                trailing: IconButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           (RequestSendScreen())),
                                      // );
                                    },
                                    icon: Icon(
                                      Icons.group_add,
                                      color: Colors.white,
                                    )),
                              );
                            } else if (positiontitle.toLowerCase().contains(
                                    searchController.text.toLowerCase()) ||
                                positionsubtitle.toLowerCase().contains(
                                    searchController.text.toLowerCase())) {
                              return ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    addfriendresult[index].img,
                                  ),
                                ),
                                title: Text(
                                  addfriendresult[index].title,
                                  style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                subtitle: (Text(
                                  addfriendresult[index].substitle,
                                  style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      color: Colors.white),
                                )),
                                trailing: IconButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) => (BookingPreview1())),
                                      // );
                                    },
                                    icon: Icon(
                                      Icons.group_add,
                                      color: Colors.white,
                                    )),
                              );
                            } else {
                              return Container(
                                  //child: Text('No Data is Found! '),
                                  );
                            }
                            // return ListTile(
                            //   leading: CircleAvatar(
                            //     backgroundImage: AssetImage(
                            //       addfriendresult[index].img,
                            //     ),
                            //   ),
                            //   title: Text(
                            //     addfriendresult[index].title,
                            //     style: TextStyle(
                            //         fontFamily: 'OpenSans',
                            //         fontWeight: FontWeight.w700,
                            //         color: AppColours.custom_purplee),
                            //   ),
                            //   subtitle: (Text(
                            //     addfriendresult[index].substitle,
                            //     style: TextStyle(
                            //         fontFamily: 'OpenSans',
                            //         color: AppColours.custom_purplee),
                            //   )),
                            //   trailing: IconButton(
                            //       onPressed: () {
                            //         // Navigator.push(
                            //         //   context,
                            //         //   MaterialPageRoute(
                            //         //       builder: (context) => (BookingPreview1())),
                            //         // );
                            //       },
                            //       icon: Icon(
                            //         Icons.group_add,
                            //         color: AppColours.custom_purplee,
                            //       )),
                            // );
                          }),
                    )
                  ],
                ))));
  }
}
