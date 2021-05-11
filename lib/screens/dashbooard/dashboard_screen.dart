
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashbooard/components/header.dart';
import 'package:admin/screens/dashbooard/components/my_fiels.dart';
import 'package:admin/screens/dashbooard/components/recent_files.dart';
import 'package:admin/screens/dashbooard/components/storage_details.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        MyFiels(),
                        SizedBox(
                          height: defaultPadding,
                        ),
                        RecentFiles(),
                        if (Responsive.isMobile(context))
                          SizedBox(height: defaultPadding,
                          ),
                        if (Responsive.isMobile(context))
                          StorageDetails(pieChartDatas: pieChartDatas),
                      ],
                    )),
                if (!Responsive.isMobile(context))
                  SizedBox(
                    width: defaultPadding,
                  ),
                if (!Responsive.isMobile(context))
                  Expanded(
                      flex: 2,
                      child: StorageDetails(pieChartDatas: pieChartDatas)),
              ],
            )
          ],
        ),
      ),
    );
  }

  final List<PieChartSectionData> pieChartDatas = [
    PieChartSectionData(
      showTitle: false,
      color: primaryColor,
      value: 25.0,
      radius: 25,
    ),
    PieChartSectionData(
      showTitle: false,
      color: Colors.cyan,
      value: 20.0,
      radius: 22,
    ),
    PieChartSectionData(
      showTitle: false,
      color: Colors.yellow,
      value: 17.0,
      radius: 19,
    ),
    PieChartSectionData(
      showTitle: false,
      color: Colors.green,
      value: 12.0,
      radius: 16,
    ),
    PieChartSectionData(
      showTitle: false,
      color: Colors.red,
      value: 7.0,
      radius: 13,
    ),
  ];
}
