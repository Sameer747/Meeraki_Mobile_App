import 'package:flutter/material.dart';

class Size_Chart extends StatefulWidget {
  const Size_Chart({Key? key}) : super(key: key);

  @override
  State<Size_Chart> createState() => _Size_ChartState();
}

class _Size_ChartState extends State<Size_Chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 50,
        centerTitle: true,
        title: const Text(
          'Size Chart',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/size_chart_1.jpg'),
              Image.asset('assets/size_chart_2.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
