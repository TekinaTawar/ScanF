import 'package:flutter/material.dart';

// import '../../widgets/input_box.dart';
// import '../../widgets/text_field.dart';
// import '../../widgets/dropdown_country_code.dart';

List<Widget> upperTexts = [
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Create Profile',
        style: TextStyle(fontSize: 32),
      ),
      Text(
        'This helps us to personalize your experience throughout the app.',
        style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
      )
    ],
  ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Advanced BMI',
        style: TextStyle(fontSize: 32),
      ),
      Text(
        'This helps us to personalize your experience throughout the app.',
        style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
      )
    ],
  ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Advanced BMI',
        style: TextStyle(fontSize: 32),
      ),
      Text(
        'This helps us to personalize your experience throughout the app.',
        style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
      )
    ],
  ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Stomach Details',
        style: TextStyle(fontSize: 32),
      ),
      Text(
        'This helps us to personalize your experience throughout the app.',
        style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
      )
    ],
  ),
];

Widget circleAvatar(height) {
  return Container(
    height: height * 0.2,
    alignment: Alignment.center,
    child: Container(
      alignment: Alignment.center,
      height: height * 0.2 - 40,
      width: height * 0.2 - 40,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff518ef8),
            Color(0xff75e3fd),
          ],
        ),
        borderRadius: BorderRadius.circular(height * 0.2 - 40),
      ),
      child: Container(
        alignment: Alignment.center,
        height: height * 0.2 - 55,
        width: height * 0.2 - 55,
        decoration: BoxDecoration(
          color: Color(0xfff5f5f5),
          borderRadius: BorderRadius.circular(height * 0.2 - 55),
        ),
        child: Center(
          child: Icon(
            Icons.person,
            size: height * 0.2 - 80,
            color: Color(0xffdedede),
          ),
        ),
      ),
    ),
  );
}

// final _formKey1 = GlobalKey<FormState>();
// final _formKey2 = GlobalKey<FormState>();
// final _formKey3 = GlobalKey<FormState>();
// bool isMale = false;
// bool isFemale = false;
// bool isOthers = false;
// bool notToSay = false;
// List<Widget> mainBoxes(height, width) {
//   return [
//     Form(
//       key: _formKey1,
//       child: Container(
//         height: double.infinity,
//         width: double.infinity,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Container(
//               height: height * 0.06,
//               width: double.infinity,
//               margin: EdgeInsets.all(5),
//               child: CustomTextField(
//                 hintText: 'Full Name',
//                 inputType: TextInputType.text,
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(5),
//               // color: Colors.green,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Container(
//                     padding: EdgeInsets.only(left: 2),
//                     child: Text(
//                       'Date of Birth',
//                       style: TextStyle(
//                           fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(top: 3),
//                     // color: Colors.indigo,
//                     height: height * 0.06,
//                     child: Row(
//                       children: <Widget>[
//                         Expanded(
//                           flex: 2,
//                           child: CustomTextField(
//                             hintText: 'dd',
//                             inputType: TextInputType.number,
//                           ),
//                         ),
//                         Expanded(
//                           child: SizedBox(),
//                           flex: 1,
//                         ),
//                         Expanded(
//                           flex: 2,
//                           child: CustomTextField(
//                             hintText: 'mm',
//                             inputType: TextInputType.number,
//                           ),
//                         ),
//                         Expanded(
//                           child: SizedBox(),
//                           flex: 1,
//                         ),
//                         Expanded(
//                             flex: 4,
//                             child: CustomTextField(
//                               hintText: 'yyyy',
//                               inputType: TextInputType.number,
//                             ))
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(5),
//               // color: Colors.green,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Container(
//                     padding: EdgeInsets.only(left: 2),
//                     child: Text(
//                       'I am',
//                       style: TextStyle(
//                           fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(top: 3),
//                     // color: Colors.indigo,
//                     height: height * 0.06,
//                     child: Row(
//                       children: <Widget>[
//                         Row(
//                           children: <Widget>[
//                             Checkbox(
//                               value: isMale,
//                               onChanged: (_) {},
//                             ),
//                             Text(
//                               'Male',
//                               style: TextStyle(fontWeight: FontWeight.w600),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: <Widget>[
//                             Checkbox(
//                               value: isFemale,
//                               onChanged: (_) {},
//                             ),
//                             Text(
//                               'Female',
//                               style: TextStyle(fontWeight: FontWeight.w600),
//                             )
//                           ],
//                         ),
//                         Row(
//                           children: <Widget>[
//                             Checkbox(
//                               value: isOthers,
//                               onChanged: (_) {},
//                             ),
//                             Text(
//                               'Others',
//                               style: TextStyle(fontWeight: FontWeight.w600),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Checkbox(
//                         value: notToSay,
//                         onChanged: (_) {},
//                       ),
//                       Column(
//                         children: <Widget>[
//                           Text(
//                             'Prefer not to say',
//                             style: TextStyle(fontWeight: FontWeight.w600),
//                           ),
//                           Text(
//                             'Just Hungry',
//                             style: TextStyle(fontSize: 8),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               height: height * 0.06,
//               width: double.infinity,
//               margin: EdgeInsets.all(5),
//               child: CustomTextField(
//                 hintText: 'Illness/ Allergies',
//                 inputType: TextInputType.text,
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//     Container(
//       height: double.infinity,
//       width: double.infinity,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Container(
//                 child: Text(
//                   'Your Body Mass Index',
//                   style: TextStyle(
//                       fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
//                 ),
//                 padding: EdgeInsets.all(5),
//               ),
//               Row(
//                 children: <Widget>[
//                   Expanded(
//                     flex: 10,
//                     child: InputBox(
//                         text: 'Approx. Weight',
//                         keyboardStyle: TextInputType.number),
//                   ),
//                   Expanded(
//                     child: SizedBox(),
//                     flex: 1,
//                   ),
//                   Expanded(
//                     flex: 10,
//                     child: InputBox(
//                         text: 'Approx. Height',
//                         keyboardStyle: TextInputType.number),
//                   )
//                 ],
//               )
//             ],
//           ),
//           Container(
//             padding: EdgeInsets.all(5),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   margin: EdgeInsets.only(bottom: 10, top: 10),
//                   child: Text(
//                     'Some More Details',
//                     style: TextStyle(
//                         fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(5),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//                       Container(
//                         child: Text(
//                           'Shirt Size',
//                           style: TextStyle(
//                               fontSize: 16,
//                               color: Color.fromRGBO(0, 0, 0, 0.38)),
//                         ),
//                       ),
//                       Container(
//                         height: height * 0.06,
//                         width: 200,
//                         child: Column(
//                           children: <Widget>[
//                             Expanded(
//                               child: InputBox(
//                                 text: 'XS/S/M/L/XL/XXL',
//                               ),
//                               flex: 1,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(5),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//                       Container(
//                         child: Text(
//                           'Waist Size',
//                           style: TextStyle(
//                               fontSize: 16,
//                               color: Color.fromRGBO(0, 0, 0, 0.38)),
//                         ),
//                       ),
//                       Container(
//                         height: height * 0.06,
//                         width: 200,
//                         child: Column(
//                           children: <Widget>[
//                             Expanded(
//                               child: InputBox(
//                                   text: '10 - 50',
//                                   keyboardStyle: TextInputType.number),
//                               flex: 1,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//     Container(
//       height: double.infinity,
//       width: double.infinity,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.all(5),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   child: Text(
//                     'Your Family Belongs to',
//                     style: TextStyle(
//                         fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
//                   ),
//                   padding: EdgeInsets.all(5),
//                 ),
//                 Container(
//                   height: height * 0.06,
//                   child: InputBox(
//                       text: 'State', keyboardStyle: TextInputType.text),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.all(5),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   child: Text(
//                     'Currently you are Living in',
//                     style: TextStyle(
//                         fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
//                   ),
//                   padding: EdgeInsets.all(5),
//                 ),
//                 Container(
//                   height: height * 0.06,
//                   child: Row(
//                     children: <Widget>[
//                       Expanded(
//                         flex: 6,
//                         child: InputBox(
//                             text: 'City', keyboardStyle: TextInputType.text),
//                       ),
//                       Expanded(
//                         child: SizedBox(),
//                         flex: 1,
//                       ),
//                       Expanded(
//                         flex: 12,
//                         child: InputBox(
//                             text: 'State', keyboardStyle: TextInputType.text),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.all(5),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   child: Text(
//                     'Three other states you lived',
//                     style: TextStyle(
//                         fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
//                   ),
//                   padding: EdgeInsets.all(5),
//                 ),
//                 Container(
//                   height: height * 0.06,
//                   child: Row(
//                     children: <Widget>[
//                       Expanded(
//                         flex: 6,
//                         child: InputBox(
//                             text: 'City', keyboardStyle: TextInputType.text),
//                       ),
//                       Expanded(
//                         child: SizedBox(),
//                         flex: 1,
//                       ),
//                       Expanded(
//                         flex: 12,
//                         child: InputBox(
//                           text: 'State',
//                           keyboardStyle: TextInputType.text,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(top: 10),
//                   height: height * 0.06,
//                   child: Row(
//                     children: <Widget>[
//                       Expanded(
//                         flex: 2,
//                         child: InputBox(
//                             text: 'Years', keyboardStyle: TextInputType.number),
//                       ),
//                       Expanded(
//                         child: SizedBox(),
//                         flex: 1,
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.add),
//                         onPressed: null,
//                         color: Color(0xfffeb729),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   ];
// }
