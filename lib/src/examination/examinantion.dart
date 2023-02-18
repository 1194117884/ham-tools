import 'package:flutter/material.dart';

/// examination page
class ExaminationWidget extends StatelessWidget {
  const ExaminationWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
            DashboardPanel(),
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
  }
}

/// DashboardPanel
class DashboardPanel extends StatelessWidget {
  const DashboardPanel({super.key});

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
                        icon: Icon(size: 30, Icons.history), text: "历史"),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 120,
                    child: const Tab(
                        icon: Icon(size: 30, Icons.history), text: "历史"),
                  ),
                ],
              ),
            ),
            const ProgressCricle(),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 20,
                color: Colors.blue,
              ),
            ),
          ],
        ),
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
                        icon: Icon(size: 30, Icons.history), text: "历史"),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 120,
                    child: const Tab(
                        icon: Icon(size: 30, Icons.history), text: "历史"),
                  ),
                ],
              ),
            ),
            const ProgressCricle(),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 20,
                color: Colors.blue,
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
  const ProgressCricle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ImageIcon(
        AssetImage('assets/img/progress.png'),
        color: Colors.yellow,
        size: 240,
      ),
    );
  }
}
