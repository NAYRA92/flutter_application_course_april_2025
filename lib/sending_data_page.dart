import "package:flutter/material.dart";
import "package:flutter_application_16_april/receiving_data_page.dart";

class SendingDataPage extends StatefulWidget {
  const SendingDataPage({super.key});

  @override
  State<SendingDataPage> createState() => _SendingDataPageState();
}

List<String> _names = [
  "Name 1",
  "Name 2",
  "Name 3",
];

List<String> _cities = ["City 1", "City 2", "City 3"];

List<IconData> _icons = [Icons.home, Icons.location_city, Icons.local_activity];

class _SendingDataPageState extends State<SendingDataPage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
          padding: EdgeInsets.all(5),
          itemCount: _names.length,
          itemBuilder: (context, index) {
            return myContainer(_icons[index], () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReceivingDataPage(
                          userName: _names[index], userCity: _cities[index])));
            });
          },
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
