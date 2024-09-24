// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:smmart_life_new/App%20Helper/color_helper.dart';
// import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/My%20Address/Add%20New%20Address%20Screen/Widget/add_address_text_field.dart';
// import 'package:smmart_life_new/Widgets/Buttons/rounded_button.dart';
//
// import '../../../../../../../App Helper/font_helper.dart';
// import '../Add New Address Screen/add_new_address_scree.dart';
//
// class AddAddressUsingMap extends StatelessWidget {
//   const AddAddressUsingMap({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         leading: IconButton(
//             onPressed: () {
//               Get.back();
//             },
//             icon: ImageIcon(
//               AssetImage('assets/images/back.png'),
//               color: ColorHelper.Black,
//             )),
//       ),
//       body: Card(
//         shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
//         color: Colors.transparent,
//         margin: const EdgeInsets.all(0),
//         child: Column(
//           children: [
//             SizedBox(
//               height: Get.height / 2.5,
//             ),
//             Expanded(
//               child: Container(
//                 width: Get.width,
//                 decoration: const BoxDecoration(
//                     borderRadius:
//                     BorderRadius.vertical(top: Radius.circular(25)),
//                     color: Colors.white),
//                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text('Select your location\nfrom the map',style: TextStyle(
//                         fontSize: 24,
//                         fontFamily: FontHelper.ArvinHavy,
//                       ),
//                         textAlign: TextAlign.center,
//                       ),
//                       SizedBox(height: 10,),
//                       Text('Move the pin on the map to find your location and select delivery address.',style: TextStyle(
//                         fontSize: 14,
//                         fontFamily: FontHelper.AvenirBook,
//                         color: ColorHelper.DoveGray
//                       ),
//                         textAlign: TextAlign.center,),
//                       SizedBox(height: 10,),
//                       CustomTextField(
//                         label: 'Address',
//                         suffix: IconButton(onPressed: (){}, icon: ImageIcon(AssetImage('assets/images/Icons-16px-Direction@3x.png'),size: 15,color: ColorHelper.Brown,)),
//                       ),
//                       SizedBox(height: 20,),
//                       RoundedButton(
//                         btnLabel: 'NEXT',
//                         btnColor: ColorHelper.Brown,
//                         btnOnTap: (){},
//                         fontSize: 16,
//                       ),
//                       SizedBox(height: 15,),
//                       RoundedButton(
//                         btnLabel: 'ADD IT MANUALLY',
//                         btnColor: ColorHelper.Silver.withOpacity(0.3),
//                         btnOnTap: (){
//                           Get.to(()=> AddNewAddressScreen());
//                         },
//                         textColor: ColorHelper.Brown,
//                         fontSize: 16,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
