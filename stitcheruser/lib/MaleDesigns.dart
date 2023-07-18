import 'package:flutter/material.dart';
import 'package:stitcher/measurementForMale.dart';
import 'package:stitcher/shalwarQameezMeasurement.dart';
import 'krutaMeasurement.dart';

class MaleDesigns extends StatefulWidget {
  const MaleDesigns({Key? key}) : super(key: key);

  @override
  State<MaleDesigns> createState() => _MaleDesignsState();
}

class _MaleDesignsState extends State<MaleDesigns> {
  var titleList = ["Kurta", "Shalwar Qameez", "Sada Kurta"];
  var imageList = [
    "assets/images/kurta.png",
    "assets/images/shalwar.png",
    "assets/images/male.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Male Desings"),
        backgroundColor: Color(0xFF6F35A5),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 5.0,
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
          ),
          itemCount: titleList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () async {
                if (index == 0) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => krutaMeasurement()));
                } else if (index == 1) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => shalwarQameezMeasurement()));
                } else if (index == 2) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => measurementForMale()));
                }
              },
              child: Card(
                elevation: 10.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color(0xFF6F35A5).withOpacity(0.9),
                  ),
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.all(6.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        imageList[index],
                        //  scale: 8.0,
                        width: 80.0,
                        height: 80.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        titleList[index],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
