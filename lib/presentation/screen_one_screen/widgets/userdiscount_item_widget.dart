import 'package:figmanucleus/core/app_export.dart';
import 'package:flutter/material.dart';


class UserdiscountItemWidget extends StatelessWidget {
  const UserdiscountItemWidget({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.gradientOnPrimaryContainerToPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 17.v),
            child: Text(
              "Get 10 % off on one credit",
              style: CustomTextStyles.bodySmallOnPrimary,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgVector,
                        height: 10.v,
                        width: 6.h,
                        margin: EdgeInsets.symmetric(vertical: 5.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "81",
                          style: CustomTextStyles.titleSmallOnPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  height: 18.v,
                  width: 31.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgVector,
                                height: 9.v,
                                width: 6.h,
                                margin: EdgeInsets.symmetric(vertical: 4.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text(
                                  "73",
                                  style: CustomTextStyles.bodySmallOnPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 7.v),
                          child: SizedBox(
                            width: 31.h,
                            child: Divider(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillLightGreenA,
            child: Column(
              children: [
                Text(
                  "10 %",
                  style: theme.textTheme.labelLarge,
                ),
                Text(
                  "Off",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          Container(
            height: 19.adaptSize,
            width: 19.adaptSize,
            padding: EdgeInsets.all(5.h),
            decoration: AppDecoration.outlineOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder9,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.imgPlus,
              height: 9.adaptSize,
              width: 9.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 17.v),
            child: Text(
              "6",
              style: CustomTextStyles.labelLargeOnPrimary,
            ),
          ),
          Container(
            height: 19.adaptSize,
            width: 19.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.outlineOnPrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder9,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.imgVectorOnprimary,
              height: 1.v,
              width: 9.h,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
