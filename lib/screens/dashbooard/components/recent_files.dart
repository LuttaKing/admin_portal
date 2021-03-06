import 'package:admin/constants.dart';
import 'package:admin/models/RecentFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius:
              const BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Files',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(width: double.infinity,
            child: DataTable(columnSpacing: defaultPadding,horizontalMargin: 0,
              columns: [
              DataColumn(
                label: Text('File Name'),
              ),
              DataColumn(
                label: Text('Date'),
              ),
              DataColumn(
                label: Text('Size'),
              ),
            ],
             rows: List.generate(demoRecentFiles.length, 
             (index) => recentFileDataRow(demoRecentFiles[index]))),
          ),
        ],
      ),
    );
  }
}

  DataRow recentFileDataRow(RecentFile fileinfo) {
    return DataRow(cells: [
                                   DataCell(
                                     Row(children: [
                                       SvgPicture.asset(fileinfo.icon,height: 30,width: 30,),
                                       Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                                         child: Text(fileinfo.title),
                                       )
                                     ],)
                                   ),
                                   DataCell(Text(fileinfo.date)),
                                   DataCell(Text(fileinfo.size)),
                                 ]);
  }
