import 'package:figmanucleus/core/app_export.dart';
import 'package:figmanucleus/widgets/custom_elevated_button.dart';
import 'package:figmanucleus/widgets/custom_switch.dart';
import 'package:figmanucleus/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ScreenThreeScreen extends StatelessWidget {
  ScreenThreeScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  bool isSelectedSwitch = false;

  TextEditingController phoneController = TextEditingController();

  TextEditingController genderController = TextEditingController();

  TextEditingController ownerController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Column(children: [
                      SizedBox(
                          height: 199.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: SizedBox(
                                        height: 133.v,
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle295,
                                                  height: 133.v,
                                                  width: 375.h,
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              27.h,
                                                              21.v,
                                                              16.h,
                                                              92.v),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowleft,
                                                                height: 11.v,
                                                                width: 6.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top:
                                                                            4.v,
                                                                        bottom:
                                                                            5.v),
                                                                onTap: () {
                                                                  onTapImgArrowleftone(
                                                                      context);
                                                                }),
                                                            CustomElevatedButton(
                                                                height: 20.v,
                                                                width: 48.h,
                                                                text: "Save",
                                                                buttonStyle:
                                                                    CustomButtonStyles
                                                                        .outlineOnPrimary,
                                                                buttonTextStyle:
                                                                    CustomTextStyles
                                                                        .labelMediumOnPrimary)
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 53.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 8.v),
                                        decoration: AppDecoration.outlineBlack
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1.h, top: 3.v),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle297,
                                                            height:
                                                                53.adaptSize,
                                                            width: 53.adaptSize,
                                                            radius: BorderRadius
                                                                .circular(2.h)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 13.h,
                                                                    bottom:
                                                                        15.v),
                                                            child: Column(
                                                                children: [
                                                                  Text(
                                                                      "Sheetal Sharma",
                                                                      style: CustomTextStyles
                                                                          .labelLargeBlack900),
                                                                  SizedBox(
                                                                      height:
                                                                          2.v),
                                                                  Text(
                                                                      "Pune , Maharashtra ",
                                                                      style: CustomTextStyles
                                                                          .bodySmallGray50001)
                                                                ]))
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 9.h, top: 12.v),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        1.v),
                                                            child: Column(
                                                                children: [
                                                                  Text("2000",
                                                                      style: CustomTextStyles
                                                                          .labelLargeBlack900),
                                                                  Text(
                                                                      "Followers",
                                                                      style: CustomTextStyles
                                                                          .bodySmallGray50001)
                                                                ])),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 31.h),
                                                            child: Column(
                                                                children: [
                                                                  Text("2000",
                                                                      style: CustomTextStyles
                                                                          .labelLargeBlack900),
                                                                  Text(
                                                                      "Following",
                                                                      style: CustomTextStyles
                                                                          .bodySmallGray50001)
                                                                ])),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 31.h,
                                                                    bottom:
                                                                        1.v),
                                                            child: Column(
                                                                children: [
                                                                  Text("3.25",
                                                                      style: CustomTextStyles
                                                                          .labelLargeBlack900),
                                                                  Text("Rated",
                                                                      style: CustomTextStyles
                                                                          .bodySmallGray50001)
                                                                ])),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgStar,
                                                            height: 8.adaptSize,
                                                            width: 8.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 1.h,
                                                                    top: 3.v,
                                                                    bottom:
                                                                        21.v)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 2.h,
                                                                    top: 3.v,
                                                                    bottom:
                                                                        18.v),
                                                            child: Text(
                                                                "(2,000)",
                                                                style: CustomTextStyles
                                                                    .bodySmallGray500018))
                                                      ]))
                                            ])))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 31.h, top: 22.v),
                              child: Text("Accounts Settings",
                                  style: theme.textTheme.titleSmall))),
                      SizedBox(height: 11.v),
                      SizedBox(
                          height: 42.v,
                          width: 299.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            CustomTextFormField(
                                width: 299.h,
                                controller: nameController,
                                hintText: "Name",
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 5.h, bottom: 1.v),
                                    child: Text("Shyamala",
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    height: 16.v,
                                    width: 47.h,
                                    margin:
                                        EdgeInsets.only(top: 1.v, right: 2.h),
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 2.v),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 7.h),
                                                  decoration: AppDecoration
                                                      .fillGreen
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder4),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(height: 1.v),
                                                        Text("Public",
                                                            style: CustomTextStyles
                                                                .poppinsOnPrimary)
                                                      ]))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: appTheme.gray50,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.h))))
                                        ])))
                          ])),
                      SizedBox(height: 14.v),
                      SizedBox(
                          height: 43.v,
                          width: 299.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            CustomTextFormField(
                                width: 299.h,
                                controller: emailController,
                                hintText: "Email",
                                textInputType: TextInputType.emailAddress,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 5.h, bottom: 1.v),
                                    child: Text("Shyamala@gmail.com",
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    height: 16.v,
                                    width: 44.h,
                                    margin: EdgeInsets.only(right: 5.h),
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomSwitch(
                                              alignment: Alignment.center,
                                              value: isSelectedSwitch,
                                              onChange: (value) {
                                                isSelectedSwitch = value;
                                              }),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 3.v, right: 4.h),
                                                  child: Text("Private",
                                                      style: CustomTextStyles
                                                          .poppinsGreen600)))
                                        ])))
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 33.h, top: 15.v),
                              child: Text("Phone",
                                  style:
                                      CustomTextStyles.bodySmallGray50001_1))),
                      CustomTextFormField(
                          controller: phoneController,
                          margin: EdgeInsets.only(
                              left: 33.h, top: 4.v, right: 43.h),
                          hintText: "1235371514",
                          textInputType: TextInputType.phone,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 4.h)),
                      SizedBox(height: 15.v),
                      SizedBox(
                          height: 42.v,
                          width: 299.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("DOB",
                                        style: CustomTextStyles
                                            .bodySmallGray50001_1)),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 1.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 4.h, right: 5.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 10.v),
                                                            child: Text(
                                                                "25 feb 2000",
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall)),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgGroup,
                                                            height:
                                                                14.adaptSize,
                                                            width: 14.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        14.v))
                                                      ])),
                                              SizedBox(height: 2.v),
                                              Divider(color: appTheme.gray500)
                                            ])))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 33.h, top: 15.v),
                              child: Text("Gender",
                                  style:
                                      CustomTextStyles.bodySmallGray50001_1))),
                      CustomTextFormField(
                          controller: genderController,
                          margin: EdgeInsets.only(
                              left: 33.h, top: 4.v, right: 43.h),
                          hintText: "Female",
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 4.h)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 33.h, top: 15.v),
                              child: Text("Status",
                                  style:
                                      CustomTextStyles.bodySmallGray50001_1))),
                      CustomTextFormField(
                          controller: ownerController,
                          margin: EdgeInsets.only(
                              left: 33.h, top: 4.v, right: 43.h),
                          hintText: "Owner",
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 4.h)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 33.h, top: 15.v, right: 43.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("City",
                                        style: CustomTextStyles
                                            .bodySmallGray50001_1),
                                    Container(
                                        height: 16.v,
                                        width: 47.h,
                                        margin: EdgeInsets.only(bottom: 2.v),
                                        child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          bottom: 2.v),
                                                      padding: EdgeInsets.symmetric(
                                                          horizontal: 7.h),
                                                      decoration: AppDecoration
                                                          .fillGreen
                                                          .copyWith(
                                                              borderRadius: BorderRadiusStyle
                                                                  .roundedBorder4),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            SizedBox(
                                                                height: 1.v),
                                                            Text("Public",
                                                                style: CustomTextStyles
                                                                    .poppinsOnPrimary)
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                      height: 16.adaptSize,
                                                      width: 16.adaptSize,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              appTheme.gray50,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.h))))
                                            ]))
                                  ]))),
                      CustomTextFormField(
                          controller: cityController,
                          margin: EdgeInsets.only(
                              left: 33.h, top: 2.v, right: 43.h),
                          hintText: "Indore",
                          textInputAction: TextInputAction.done,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 4.h)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 33.h, top: 14.v, right: 43.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("About",
                                        style: CustomTextStyles
                                            .bodySmallGray50001_1),
                                    Container(
                                        height: 16.v,
                                        width: 47.h,
                                        margin: EdgeInsets.only(bottom: 2.v),
                                        child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          bottom: 2.v),
                                                      padding: EdgeInsets.symmetric(
                                                          horizontal: 7.h),
                                                      decoration: AppDecoration
                                                          .fillGreen
                                                          .copyWith(
                                                              borderRadius: BorderRadiusStyle
                                                                  .roundedBorder4),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            SizedBox(
                                                                height: 1.v),
                                                            Text("Public",
                                                                style: CustomTextStyles
                                                                    .poppinsOnPrimary)
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                      height: 16.adaptSize,
                                                      width: 16.adaptSize,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              appTheme.gray50,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.h))))
                                            ]))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 267.h,
                              margin: EdgeInsets.only(
                                  left: 38.h, top: 5.v, right: 69.h),
                              child: Text(
                                  "Lorem ipsum dolor sit amet consectetur. Leo congue et orci scelerisque mi morbi enim eu pulvinar.",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall!
                                      .copyWith(height: 1.50)))),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.v),
                          child: Divider(
                              color: appTheme.gray500,
                              indent: 33.h,
                              endIndent: 43.h))
                    ]))))));
  }

  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
