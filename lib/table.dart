import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum ProjectStatus {
  cancelled,
  review,
  approve,
  completed,
}

class Project {
  String name = "";
  String manager = "";
  int cost = 0;
  ProjectStatus? status;
}

class PageOne extends StatefulWidget {
  PageOne({
    super.key,
  });

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  Project project = Project();
  List<Project> projects = [];

  checkAllData() {
    if (project.name.isEmpty) {
      Fluttertoast.showToast(
          msg: "فضلا قم بادخال اسم للمشروع",
          textColor: Colors.white,
          backgroundColor: Colors.red);
    } else if (project.manager.isEmpty) {
      Fluttertoast.showToast(
          msg: "فضلا قم بتحديد اسم مدير المشروع",
          textColor: Colors.white,
          backgroundColor: Colors.red);
    } else if (project.cost == 0) {
      Fluttertoast.showToast(
          msg: "فضلا قم بتحديد قيمة المشروع",
          textColor: Colors.white,
          backgroundColor: Colors.red);
    } else if (project.status == null) {
      Fluttertoast.showToast(
          msg: "فضلا قم بتحديد حالة المشروع",
          textColor: Colors.white,
          backgroundColor: Colors.red);
    } else {
      Fluttertoast.showToast(
          msg: "تم اضافة المشروع بنجاح",
          textColor: Colors.white,
          backgroundColor: Colors.green);
      projects.add(project);
      setState(() {
        project = Project();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
              Container(
                // العنوان
                padding: EdgeInsets.only(top: 30),
                child: Center(
                  child: Text(
                    'فضلا قم بادخال بيانات المشروع',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                child: TextField(
                  onChanged: (value) {
                    project.name = value;
                  },
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      label: Center(
                        child: Text(
                          "اسم المشروع",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      hintText: "ادخل اسم المشروع"),
                ),
              ),
              Container(
                child: TextField(
                  onChanged: (value) {
                    project.manager = value;
                  },
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      label: Center(
                        child: Text(
                          "اسم مدير المشروع",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      hintText: "فضلا ادخل اسم مدير المشروع"),
                ),
              ),
              Container(
                child: TextField(
                  onChanged: (value) {
                    project.cost =
                        int.tryParse(value) == null ? 0 : int.parse(value);
                  },
                  keyboardType: TextInputType.numberWithOptions(),
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      label: Center(
                        child: Text(
                          "قيمة المشروع",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      hintText: "0"),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              "مقبول",
                              textAlign: TextAlign.right,
                            )),
                            Radio(
                              value: ProjectStatus.approve,
                              groupValue: project.status,
                              onChanged: (value) {
                                setState(() {
                                  project.status = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              "ملغي",
                              textAlign: TextAlign.right,
                            )),
                            Radio(
                              value: ProjectStatus.cancelled,
                              groupValue: project.status,
                              onChanged: (value) {
                                setState(() {
                                  project.status = value;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              "مكتمل",
                              textAlign: TextAlign.right,
                            )),
                            Radio(
                              value: ProjectStatus.completed,
                              groupValue: project.status,
                              onChanged: (value) {
                                setState(() {
                                  project.status = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "تحت المراجعة",
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Radio(
                              value: ProjectStatus.review,
                              groupValue: project.status,
                              onChanged: (value) {
                                setState(() {
                                  project.status = value;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: checkAllData, child: Text("اضافة المشروع"))
            ],
          ),
        ),
      ),
    );
  }
}
