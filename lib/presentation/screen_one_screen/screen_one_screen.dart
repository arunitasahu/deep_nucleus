import 'package:figmanucleus/presentation/screen_three_screen/screen_three_screen.dart';

import '../screen_one_screen/widgets/userdiscount_item_widget.dart';
import 'package:figmanucleus/core/app_export.dart';
import 'package:figmanucleus/widgets/app_bar/appbar_image.dart';
import 'package:figmanucleus/widgets/app_bar/appbar_title.dart';
import 'package:figmanucleus/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ScreenOneScreen extends StatelessWidget {
  const ScreenOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 33.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgArrowleft,
            margin: EdgeInsets.only(left: 27.h, top: 20.v, bottom: 24.v),
            onTap: () {},
          ),
          title: AppbarTitle(
            text: "Account - Buy Credits",
            margin: EdgeInsets.only(left: 28.h),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.black, // Set the arrow button's color
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        ScreenThreeScreen(), // Replace with the name of your other screen
                  ),
                );
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: mediaQueryData.size.width,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 10.v, left: 16.h, right: 16.h, bottom: 5.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 69.h),
                            child: Text(
                              "Buy the credits of your choice",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 118.v),
                        ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 17.v);
                          },
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            // Set the background color to blue for the first item (index 0),
                            // and white for all other items.
                            final backgroundColor =
                                index == 0 ? Colors.blue : Colors.white;

                            return Container(
                              color: backgroundColor,
                              child: UserdiscountItemWidget(),
                            );
                          },
                        ),

                        SizedBox(height: 65.v),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowdown,
                          height: 10.v,
                          width: 11.h,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(top: 11.v),
                            child: Divider(
                              color: appTheme.gray500,
                              indent: 17.h,
                              endIndent: 27.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 25.v,
                            right: 72.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 3.v,
                                      bottom: 2.v,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Total Credits :",
                                            style: CustomTextStyles
                                                .labelLargeGray50001,
                                          ),
                                          TextSpan(text: " "),
                                          TextSpan(
                                            text: "5",
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 24.h,
                                      top: 3.v,
                                      bottom: 1.v,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Total Amount :",
                                            style: CustomTextStyles
                                                .labelLargeGray50001,
                                          ),
                                          TextSpan(text: " "),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgVectorOnerror,
                                    height: 12.v,
                                    width: 8.h,
                                    margin: EdgeInsets.only(
                                      left: 3.h,
                                      top: 5.v,
                                      bottom: 6.v,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text(
                                      "965",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        // Add some space between the total and the button

                        // Payment Button
                        Container(
                          width: double.infinity,
                          // Make the button take the full width
                          decoration: BoxDecoration(
                            color: Color(0xFF0A43B1),
                            // Set the background color to blue
                            borderRadius: BorderRadius.circular(
                                8.0), // Optional: Add border radius
                          ),
                          child: TextButton(
                            onPressed: () {
                              // Add your payment logic here
                            },
                            child: Text(
                              "Proceed To Payment",
                              style: TextStyle(
                                color: Colors.white, // Set text color to white
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
