import 'package:flutter/material.dart';
import 'package:tv_remote/ir_service.dart';

class Remote extends StatelessWidget {
  const Remote({super.key});
  @override
  Widget build(BuildContext context) {
    IrService ir = IrService();
    var gap = const SizedBox(
      height: 20,
    );
    var bg = const Color(0xffb7410e);
    var btnCol = const Color.fromARGB(255, 153, 35, 35);
    var btnShadowCol = const Color(0xaab7410e);
    double bigBtn = 60;
    var halfRoundBtnSize = const Size(60, 50);

    var roundBtnStyle = ElevatedButton.styleFrom(
        shadowColor: btnShadowCol,
        backgroundColor: btnCol,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
        fixedSize: const Size(70, 70));
    var biggerBtnStyle = ElevatedButton.styleFrom(
        shadowColor: btnShadowCol,
        backgroundColor: btnCol,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        fixedSize: const Size(90, 90));
    var roundedTopBtn = ElevatedButton.styleFrom(
        shadowColor: btnShadowCol,
        backgroundColor: btnCol,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        fixedSize: halfRoundBtnSize);

    var roundedBottomBtn = ElevatedButton.styleFrom(
        shadowColor: btnShadowCol,
        backgroundColor: btnCol,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        fixedSize: halfRoundBtnSize);
    return MaterialApp(
      home: Container(
        color: bg,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                ElevatedButton(
                    style: roundBtnStyle,
                    onPressed: () {
                      ir.power();
                    },
                    child: Icon(
                      Icons.power_settings_new_outlined,
                      size: bigBtn * 0.6,
                    )),
                ElevatedButton(
                    style: roundBtnStyle,
                    onPressed: () {
                      ir.menu();
                    },
                    child: const Icon(Icons.info_outline)),
              ]),
              gap,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: roundBtnStyle,
                      onPressed: () {
                        ir.btnHome();
                      },
                      child: const Icon(Icons.home)),
                  ElevatedButton(
                      style: roundBtnStyle,
                      onPressed: () {
                        ir.btnBack();
                      },
                      child: const Icon(Icons.arrow_back))
                ],
              ),
              gap,
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      ElevatedButton(
                          style: roundBtnStyle,
                          onPressed: () {
                            ir.arrowUp();
                          },
                          child: const Icon(Icons.arrow_upward)),
                      Padding(
                        padding: const EdgeInsets.all(35.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                style: roundBtnStyle,
                                onPressed: () {
                                  ir.arrowLeft();
                                },
                                child: const Icon(Icons.arrow_back)),
                            ElevatedButton(
                                style: biggerBtnStyle,
                                onPressed: () {
                                  ir.btnOk();
                                },
                                child: const Text('Ok')),
                            ElevatedButton(
                                style: roundBtnStyle,
                                onPressed: () {
                                  ir.arrowRight();
                                },
                                child: const Icon(Icons.arrow_forward))
                          ],
                        ),
                      ),
                      ElevatedButton(
                          style: roundBtnStyle,
                          onPressed: () {
                            ir.arrowDown();
                          },
                          child: const Icon(Icons.arrow_downward))
                    ],
                  ),
                ),
              ),
              gap,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                          style: roundedTopBtn,
                          onPressed: () {
                            ir.channelUp();
                          },
                          child: const Icon(Icons.arrow_drop_up_outlined)),
                      const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Text(
                          'Channel',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      ElevatedButton(
                          style: roundedBottomBtn,
                          onPressed: () {
                            ir.channelDown();
                          },
                          child: const Icon(Icons.arrow_drop_down_outlined))
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                          style: roundedTopBtn,
                          onPressed: () {
                            ir.volUp();
                          },
                          child: const Icon(Icons.arrow_drop_up_outlined)),
                      const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Text(
                          'Volume',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      ElevatedButton(
                          style: roundedBottomBtn,
                          onPressed: () {
                            ir.volDown();
                          },
                          child: const Icon(Icons.arrow_drop_down_outlined))
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
