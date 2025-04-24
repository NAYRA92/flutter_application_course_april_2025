import "package:flutter/material.dart";
import "package:flutter_application_16_april/receiving_data_page.dart";

class SendingDataPage extends StatefulWidget {
  const SendingDataPage({super.key});

  @override
  State<SendingDataPage> createState() => _SendingDataPageState();
}

class _SendingDataPageState extends State<SendingDataPage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          padding: EdgeInsets.all(8),
          children: [
            myContainer(Icons.person, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReceivingDataPage(
                          userName: "Nayra", userCity: "Aden")));
            }),
            myContainer(Icons.people_rounded, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReceivingDataPage(
                          userName: "Nayra", userCity: "Aden 2")));
            }),
            myContainer(Icons.person_2, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReceivingDataPage(
                          userName: "Nayra", userCity: "Aden 3")));
            }),
            myContainer(Icons.person_3, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => 
                      ReceivingDataPage(
                          userName: "Nayra", 
                          userCity: "Aden 4")));
            }),
            myContainer(Icons.person_4, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReceivingDataPage(
                          userName: "Nayra", userCity: "Aden 5")));
            }),
            myContainer(Icons.person_add, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReceivingDataPage(
                          userName: "Nayra", userCity: "Aden 5")));
            }),
            myContainer(Icons.home, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReceivingDataPage(
                          userName: "Nayra", userCity: "Aden 6")));
            }),
          ],
        ),

        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [

        //     // Padding(
        //     //   padding: const EdgeInsets.all(30.0),
        //     //   child: TextFormField(
        //     //     controller: _name,
        //     //   ),
        //     // ),
        //     //   Padding(
        //     //   padding: const EdgeInsets.all(30.0),
        //     //   child: TextFormField(
        //     //     controller: _location,
        //     //   ),
        //     // ),

        //     ElevatedButton(
        //      onPressed: (){
        //       Navigator.push(
        //         context,
        //       MaterialPageRoute(
        //         builder: (context)=>
        //         ReceivingDataPage(
        //           userName: _name.text,
        //         ),
        //         ),
        //         );
        //      },
        //      child: Text("Enter"))
        //   ],
        // ),
      ),
    );
  }
}

Widget myContainer(IconData icn, Function() fn) {
  return GestureDetector(
    onTap: fn,
    child: Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(15)),
      child: Icon(
        icn,
        size: 40,
        color: Colors.white,
      ),
    ),
  );
}
