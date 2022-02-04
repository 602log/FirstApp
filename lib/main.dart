import 'package:flutter/material.dart';

//컴파일할 때 main함수를 가장 먼저 참조함
//=> 코딩을 간결하게 하기 위한 기호 여기에서는 main함수가 다른 함수를 호출한다.
//runApp : 최상위 함수 (반드시 위젯을 argument로 가져야 함)
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),//app의 기본적인 디자인 테마를 지정하는 곳
      home: MyHomePage(),//app이 정상적으로 실행되었을 때 가장 먼저 화면에 보여주는 경로
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {//다른 위젯을 리턴하는 역할
    return Scaffold(
      appBar: AppBar(
        title: Text('First app'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello'),
            Text('Hello'),
            Text('Hello')
          ],
        ),
      ),
    );
  }
}