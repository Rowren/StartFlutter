import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});
  @override
  State<StatefulWidget> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  int _weigth = 30;
  int _height = 120;

  Color _color = const Color.fromARGB(255, 99, 215, 230);
  String _result = 'Result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //result
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _result,
                  style: TextStyle(
                    color: _color,
                    fontSize: 22,
                  ),
                )),
            //ส่วนแสดงการทำงานเลือกค่านำ้หนักแล้วส่วนสูง
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('โปรดเลือกน้ำหนักแล้วส่วนสูงของท่าน'),
            ),

            //Row
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // column weigth
                Column(
                  children: [
                    //title
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('น้ำหนัก'),
                    ),
                    //ตัวเลือกตัวเลข number picker
                    NumberPicker(
                      minValue: 20,
                      maxValue: 150,
                      value: _weigth,
                      onChanged: (value) {
                        setState(() {
                          _weigth = value;
                          calculate();
                        });
                      },
                    )
                  ],
                ),

                //column hight
                Column(
                  children: [
                    //title
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('ส่วนสูง'),
                    ),
                    //ตัวเลือกตัวเลข number picker
                    NumberPicker(
                      minValue: 100,
                      maxValue: 200,
                      value: _height,
                      onChanged: (value) {
                        setState(() {
                          _height = value;
                          calculate();
                        });
                      },
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  //ส่วนของ function คำนวณ BMI
  calculate() {

  }
}
