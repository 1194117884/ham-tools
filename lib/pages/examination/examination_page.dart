import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ham_tools/pages/examination/examination_controller.dart';

/// examination page
class ExaminationPage extends GetView<ExaminationController> {
  const ExaminationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExaminationController>(builder: (controller) {
      return DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('考试'),
            centerTitle: true,
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'A类',
                ),
                Tab(
                  text: 'B类',
                ),
                Tab(
                  text: 'C类',
                ),
                Tab(
                  text: '设台',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              DashboardPanel(tab: 'A'),
              Center(
                child: Text("It's rainy here"),
              ),
              Center(
                child: Text("It's sunny here"),
              ),
              Center(
                child: Text("It's sunny here"),
              ),
            ],
          ),
        ),
      );
    });
  }
}

/// DashboardPanel
class DashboardPanel extends StatelessWidget {
  const DashboardPanel({super.key, required this.tab});

  /// A B C
  final String tab;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(0.5),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(0.5),
      },
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 120,
                    child: const Tab(
                      icon: Icon(size: 30, Icons.history),
                      text: "错题",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 120,
                    child: const Tab(
                      icon: Icon(size: 30, Icons.history),
                      text: "专项",
                    ),
                  ),
                ],
              ),
            ),
            ProgressCricle(
              type: 1,
              tab: tab,
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 120,
                    child: const Tab(
                      icon: Icon(size: 30, Icons.history),
                      text: "收藏",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 120,
                    child: const Tab(
                      icon: Icon(size: 30, Icons.history),
                      text: "图标",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

/// ProgressCricle
class ProgressCricle extends StatelessWidget {
  ProgressCricle({super.key, required this.tab, required this.type});

  ExaminationController controller = Get.put(ExaminationController());

  /// type: 顺序 = 1, 模拟 = 2
  final int type;

  /// tab: A B C
  final String tab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        controller.takeExam(
          tab: tab,
          type: type,
        )
      },
      child: const Center(
        child: ImageIcon(
          AssetImage('assets/img/progress.png'),
          color: Colors.yellow,
          size: 240,
        ),
      ),
    );
  }
}
