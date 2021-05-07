import 'package:admin/screens/dashbooard/components/chart.dart';
import 'package:admin/screens/dashbooard/components/header.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/storagecardinfo.dart';

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
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.white,
                      height: 500,
                    )),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(defaultPadding),
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Storage Details',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: defaultPadding,
                          ),
                          Chart(pieChartDatas: pieChartDatas),
                          StorageInfoCard(title: 'Documents Files',svgSrc: 'assets/icons/Documents.svg',files: '1.5GB',numOfFiles: 143,),
                      StorageInfoCard(title: 'Media Files',svgSrc: 'assets/icons/media.svg',files: '10.5GB',numOfFiles: 72,),
                 StorageInfoCard(title: 'Documents Files',svgSrc: 'assets/icons/folder.svg',files: '2.5GB',numOfFiles: 201,),
               StorageInfoCard(title: 'Documents Files',svgSrc: 'assets/icons/unknown.svg',files: '4.4GB',numOfFiles: 331,),

                        ],
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> pieChartDatas = [
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

