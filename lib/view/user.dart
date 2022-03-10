import 'package:ayaproject/widget/widgetUser/test_utilis.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  User({Key? key}) : super(key: key);

  final scrollController = ScrollController(initialScrollOffset: 0);
  bool isText = false;
  bool isIcons = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent.withOpacity(0.3),
        appBar: AppBar(
          title: TextUtilis(
            color: Colors.amberAccent,
            fontSize: 35,
            fontWeight: FontWeight.bold,
            textstring: 'bodour',
            underline: TextDecoration.none,
          ),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.amberAccent,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            imageProfile(),
            Expanded(
              child: ListView.separated(
                controller: scrollController,
                itemCount: 6,
                separatorBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                itemBuilder: (context, index) {
                  return infoUser();
                },
              ),
            ),
          ],
        ));
  }

  Widget imageProfile() {
    return Container(
      height: 150,
    );
  }

  Widget infoUser() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextUtilis(
            color: Colors.black,
            fontSize: 35,
            fontWeight: FontWeight.bold,
            textstring: 'Descreptio',
            underline: TextDecoration.none,
          ),
          isText
              ? TextUtilis(
                  color: Colors.black,
                  fontSize: 100,
                  fontWeight: FontWeight.normal,
                  textstring: 'op manager',
                  underline: TextDecoration.none,
                )
              : isIcons
                  ? IconButton(onPressed: () {}, icon: const Icon(Icons.email))
                  : TextButton(
                      onPressed: () {},
                      child: TextUtilis(
                        color: Colors.black,
                        fontSize: 100,
                        fontWeight: FontWeight.normal,
                        textstring: 'phone number',
                        underline: TextDecoration.none,
                      ),
                    ),
        ],
      ),
    );
  }
}

// onPressed: () async {
//             try {
//               List<UserModel> users = await GetUserServices().usersServices();
//               for (int i = 0; i < users.length; i++) {
//                 UserModel user = users[i];
//                 print(user.nameUser);
//               }
//               // print(users);
//             } catch (e) {
//               print(e);
//             }}
