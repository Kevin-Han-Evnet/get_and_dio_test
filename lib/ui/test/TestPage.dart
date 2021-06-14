import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_and_dio_test/controller/TestController.dart';
import 'package:get_and_dio_test/data/dtos/something/SomethingFuckedDto.dart';

class TestPage extends GetView<TestController> {

  Widget _fuckedItemView (FuckedItemDto dto) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container (
        width: double.maxFinite,
        height: 100,
        decoration: BoxDecoration (
          borderRadius: BorderRadius.all(Radius.circular (15)),
          color: Colors.amberAccent,
        ),
        padding: EdgeInsets.all(10),
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text (
              "${dto.NM} 약수터",
              style: TextStyle (
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.deepOrange
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: double.maxFinite,
              child: Stack (
                children: [
                  Text ("주소 : ${dto.ADDR_OLD}", style: TextStyle (color: Colors.green),),
                  Positioned(
                      child: Text (
                        "수질 : ${dto.CHECK_RSLT}",
                        style: TextStyle (
                          fontWeight: FontWeight.bold,
                          color: Colors.pink
                        ),
                      ),
                      right: 0
                  )
                ],
              )
            ),
            SizedBox(height: 6,),
            Align(
                child: Text ("${dto.IMPROPT_ITEM}", style: TextStyle (fontWeight: FontWeight.bold),),
                alignment: Alignment.centerRight,
            )
          ],
        ),
      ),
    );

  }


  @override
  Widget build(BuildContext context) {

    controller.getData();

    return Scaffold(
      appBar: AppBar (
        title: Text ("히히"),
      ),
      body: Center(
          child: Obx(() => ListView.separated(
              padding: EdgeInsets.only(top: 10, bottom: 50),
              itemCount: controller.list.length,
              itemBuilder: (context, index) {
                return _fuckedItemView (controller.list[index]);
              },
              separatorBuilder: (context, index){
                return SizedBox (height: 10);
              },
          ))),
      backgroundColor: Colors.white,
    );
  }
}