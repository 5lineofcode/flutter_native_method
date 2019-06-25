// import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter_map/model/search_location.dart';

// class SearchLocationPage extends StatefulWidget {
//   @override
//   _SearchLocationPageState createState() => _SearchLocationPageState();
// }

// class _SearchLocationPageState extends State<SearchLocationPage> {
//   SearchLocation items;
//   var search = "";
//   Dio dio = Dio();

//   TextEditingController textEditingController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     // loadData();
//   }

//   void loadData() async {
//     var apiKey = "AIzaSyCbGcmdVmN786X1W42yEK7XWr5ex1kwWrY";
//     var response = await dio.get(
//         "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$search&key=$apiKey&sessiontoken=1234567890");

//     setState(() {
//       items = SearchLocation.fromJson(response.data);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: TextField(
//         onChanged: (text) {
//           search = text;
//           loadData();
//         },
//       )),
//       body: ListView.builder(
//         itemCount: items.predictions.length,
//         itemBuilder: (context, index) {
//           var item = items.predictions[index];
//           return Card(
//             child: Container(
//               child: ListTile(
//                 title: Text("Title"),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
