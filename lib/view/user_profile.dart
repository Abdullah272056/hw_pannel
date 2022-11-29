
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../Colors.dart';
import '../controller/submit_assignment_page_controller.dart';
import 'background.dart';

class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:  backGroundColor,
        // backgroundColor: Colors.backGroundColor,
        body:SizedBox(
            width: double.infinity,
            height: double.infinity,
            child:Stack(
              children: [
                Background(),
                Column(
                  children: [

                    Container(
                      margin:  EdgeInsets.fromLTRB(00, 15, 00, 10),

                      child: Row(
                        children: [
                          const SizedBox(width: 10,),
                          InkWell(
                            onTap: (){
                              Get.back();
                            },
                            child:  Container(

                              margin: EdgeInsets.only(left: 20,top: 10,right: 10,bottom: 10),

                              child:const Icon(Icons.arrow_back_ios,
                                size: 22,
                                color: awsEndColor,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Expanded(child:
                          Text(
                            "My Profile",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: awsEndColor
                            ),
                          ))
                        ],
                      ),
                    ),

                    Container(height: 0.3,
                    color: Colors.white,
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                      child: Column(
                        children: [
                          SizedBox(height: 30,),


                          CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor: awsStartColor,
                              backgroundImage: AssetImage('assets/images/person_male.png'),
                              // backgroundImage: AssetImage('assets/images/profile.jpg'),
                              radius: 59.5,
                            ),
                          ),


                          const SizedBox(
                            height: 20,
                          ),

                          Row(
                            children: [
                             Expanded(child: _buildUserInformationSection(),)
                            ],
                          ),


                          Container(
                            margin: EdgeInsets.only(left: 10,right: 10,top: 30),
                            child:  _buildEditButton(),),

                          const SizedBox(
                            height: 20,
                          ),


                        ],
                      ),
                    )

                  ],
                )

              ],
            )



        ),
      ),
    );


  }


  Widget _buildEditButton() {
    return ElevatedButton(
      onPressed: () {

      },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7))),
      child: Ink(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [awsStartColor,awsEndColor],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(7.0)
        ),
        child: Container(

          height: 50,
          alignment: Alignment.center,
          child: Text(
            "Edit Profile",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'PT-Sans',
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildUserInformationSection() {
    return Container(
       // height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0)),
        color: Colors.black.withOpacity(.1),
      ),


      child: Column(
        children: [



          _buildCardItem(
            fieldName: 'Full Name',
            fieldValue: "Abdullah",
            textColor: Colors.black,
            fieldNameTextColor: Colors.black.withOpacity(.6),
          ),
          Container(
            height: 1,
            color: Colors.white,
          ),

          _buildCardItem(
            fieldName: 'Gender',
            fieldValue: "Male",
            textColor: Colors.black,
            fieldNameTextColor: Colors.black.withOpacity(.6),
          ),
          Container(
            height: 1,
            color: Colors.white,
          ),

          _buildCardItem(
            fieldName: 'Phone Number',
            fieldValue: "01994215664",
            textColor: Colors.black,
            fieldNameTextColor: Colors.black.withOpacity(.6),
          ),
          Container(
            height: 1,
            color: Colors.white,
          ),
          _buildCardItem(
            fieldName: 'FB Profile URL',
            fieldValue: "http://facebook.com/test",
            textColor: Colors.black,
            fieldNameTextColor: Colors.black.withOpacity(.6),
          ),



        ],
      ),
    );
  }

  Widget _buildCardItem({
    required String fieldValue,
    required String fieldName,
    required Color textColor,
    required Color fieldNameTextColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0)),
       // color: Colors.black.withOpacity(.1),
      ),
      padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 15,
          bottom: 15
      ),

      child:Row(
        children: [
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    fieldName,
                    style: TextStyle(
                      fontWeight:
                      FontWeight.w500,
                      color: textColor,
                      fontSize: 18,
                    ),
                  ),

                ],
              ),
              SizedBox(height: 6,),
              Row(
                children: [
                  Text(
                    fieldValue,
                    style: TextStyle(
                      fontWeight:
                      FontWeight.normal,
                      color:fieldNameTextColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

            ],)

          ),


        ],
      ),
    );
  }

  _showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: awsMixedColor,
        textColor: Colors.white,
        fontSize: 16.0);
  }


}
