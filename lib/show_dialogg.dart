import 'package:flutter/material.dart';

class ShowDialogg extends StatefulWidget {
  const ShowDialogg({Key? key}) : super(key: key);

  @override
  State<ShowDialogg> createState() => _ShowDialoggState();
}

class _ShowDialoggState extends State<ShowDialogg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(color: Colors.red[900]!, width: 10),
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'SimpleDialog',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    '어떤 아이스크림을 드시겠습니까?',
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 30),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[Color(0xFF0D47A1), Color(0xFF1976D2), Color(0xFF42A5F5)],
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(16.0),
                              primary: Colors.white,
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            onPressed: () async {
                              print('-start-');
                              final x = await _showSimpleDialog();
                              print(x);
                              print('-end-');
                            },
                            child: Text('선택하기')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.yellow, width: 10),
              ),
              child: Column(
                children: <Widget>[
                  const Text(
                    'AlertDialog',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    '계약하시겠습니까?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 30),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[Color(0xFF0D47A1), Color(0xFF1976D2), Color(0xFF42A5F5)],
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(16.0),
                              primary: Colors.white,
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            onPressed: () async {
                              final x = await _showAlertDialog();
                              print(x);
                            },
                            child: Text('계약하기')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> _showSimpleDialog() {
    return showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('아이스크림 선택하기'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('스크류 바'),
              onPressed: () {
                print(1);
                Navigator.pop(context, '스크류 바');
              },
            ),
            SimpleDialogOption(
              child: Text('메로나'),
              onPressed: () {
                print(2);
                Navigator.pop(context, '메로나');
              },
            ),
            SimpleDialogOption(
              child: Text('요맘떼'),
              onPressed: () {
                print(3);
                Navigator.pop(context, '요맘떼');
              },
            ),
          ],
        );
      },
    );
  }

  Future<dynamic> _showAlertDialog() {
    return showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('20년 장기계약'),
          content: const Text('계약을 파기할 수 없습니다'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
