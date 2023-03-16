import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'myDrawer.dart';
import 'home.dart';
// Main method

// Class person that initialize the data fields
class project {
  int Num, TheCost;
  String ProjectName, Administration, ProjectManager, ProjectState, LastUpdate;
  project(this.Num, this.ProjectName, this.Administration, this.ProjectManager,
      this.ProjectState, this.LastUpdate, this.TheCost);
}

class InsertDataTable extends StatefulWidget {
  @override
  _InsertDataTableState createState() => new _InsertDataTableState();
}

class _InsertDataTableState extends State<InsertDataTable> {
  List<project> PersonsLst = <project>[
    project(1, "تطوير نظام المراسلات", "ادارة الاحلول", "عايشة", "تحت الاجداء",
        "جاري العمل على....", 18000000),
    project(2, "تطوير منصة امن", "ادارة الحلول ", "سارة", "مكتمل",
        "تم الاعتماد من قبل......", 24000000),
  ];

  final formKey = new GlobalKey<FormState>();
  var Num_Controller = new TextEditingController();
  var ProjectName_Controller = new TextEditingController();
  var Administration_Controller = new TextEditingController();
  var ProjectManager_Controller = new TextEditingController();
  var ProjectState_Controller = new TextEditingController();
  var LastUpdate_Controller = new TextEditingController();
  var TheCost_Controller = new TextEditingController();
  var lastID = 2;

  @override
// Method that call only once to initiate the default app.
  void initState() {
    super.initState();
    lastID++;
    Num_Controller.text = lastID.toString();
  }

// Method that is used to refresh the UI and show the new inserted data.
  refreshList() {
    setState(() {
      Num_Controller.text = lastID.toString();
    });
  }

// Method used to validate the user data
  validate() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      String ID = Num_Controller.text;
      String N = ProjectName_Controller.text;
      String LN = Administration_Controller.text;
      String PM = ProjectManager_Controller.text;
      String PS = ProjectState_Controller.text;
      String LU = LastUpdate_Controller.text;
      String A = TheCost_Controller.text;
      project p = project(int.parse(ID), N, LN, PM, PS, LU, int.parse(A));
      PersonsLst.add(p);
      lastID++;
      refreshList();
      ProjectName_Controller.text = "";
      Administration_Controller.text = "";
      ProjectManager_Controller.text = "";
      ProjectState_Controller.text = "";
      LastUpdate_Controller.text = "";
      TheCost_Controller.text = "";
    }
  }

// Method to check the value of the cost, the cost is int or not
  bool NotIntCheck(var N) {
    final V = int.tryParse(N);

    if (V == null) {
      print("Not Int");
      return true;
    } else {
      print("Int");
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp with home as scaffold
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 6, 2, 83),
          title: Text("Board"),
        ),
        body: Center(
          child: ListView(
            addAutomaticKeepAlives: false,
            cacheExtent: 5.0,
            children: <Widget>[
              Form(                     //Creates a container for form fields.
                key: formKey,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,    //determines how Row and Column can position their children on their cross axes
                    children: <Widget>[
                       Container(
                      height: 50,
                      width: 600,
                      color: Colors.grey[100],
                      child:TextField(
                         decoration: InputDecoration(
                            labelText: "project number:",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                        controller: Num_Controller,
                        enabled: false,
                      )),
                       SizedBox(
                     height: 10),
                      
                       Container(
                      height: 50,
                      width: 600,
                      color: Colors.grey[100],
                      child:
                      TextFormField(
                        controller: ProjectName_Controller,
                          decoration: InputDecoration(
                            labelText: "Project name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                        keyboardType: TextInputType.text,
                        validator: (val) =>
                            val?.length == 0 ? 'Enter project Name' : null,
                      )),
                       SizedBox(
                     height: 10),
                      Container(
                      height: 50,
                      width: 600,
                      color: Colors.grey[100],
                      child: 
                      TextFormField(
                        controller: Administration_Controller,
                        decoration: InputDecoration(
                              labelText: "Administration",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8))),
                        keyboardType: TextInputType.text,
                        validator: (val) =>
                            val?.length == 0 ? 'Enter Administration' : null,
                      )),
                       SizedBox(
                     height: 10),
                      Container(
                      height: 50,
                      width: 600,
                      color: Colors.grey[100],
                      child:
                      TextFormField(
                        controller: ProjectManager_Controller,
                        decoration: InputDecoration(
                              labelText: "Project Manager",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8))),
                        keyboardType: TextInputType.text,
                        validator: (val) =>
                            val?.length == 0 ? 'Enter project Manager' : null,
                      )),
                       SizedBox(
                     height: 10),
                      Container(
                      height: 50,
                      width: 600,
                      color: Colors.grey[100],
                      child:
                      TextFormField(
                        controller: ProjectState_Controller,
                        decoration: InputDecoration(
                              labelText: "Project State",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8))),
                        keyboardType: TextInputType.text,
                        validator: (val) =>
                            val?.length == 0 ? 'Enter project State' : null,
                      )),
                       SizedBox(
                     height: 10),
                     Container(
                      height: 50,
                      width: 600,
                      color: Colors.grey[100],
                      child:
                      TextFormField(
                        controller: LastUpdate_Controller,
                         decoration: InputDecoration(
                            labelText: "Last Update",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                        keyboardType: TextInputType.text,
                        validator: (val) =>
                            val?.length == 0 ? 'Enter Last Update' : null,
                      )),
                       SizedBox(
                     height: 10),
                       Container(
                      height: 100,
                      width: 600,
                      color: Colors.grey[100],
                      child: 
                      TextFormField(
                        controller: TheCost_Controller,
                        decoration: InputDecoration(
                            labelText: "The cost",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        validator: (val) => NotIntCheck(val)
                            ? 'Enter The cost ,Number Required'
                            : null,
                      )),
                      SizedBox(
                        width: 200,
                        child: MaterialButton(
                          color: Color.fromARGB(221, 6, 2, 83),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          child: Text( 'Insert Project',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: validate, // Method used to validate the user data
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                DataTable(
                   headingRowColor: MaterialStateColor.resolveWith(
                        (states) => Color.fromARGB(255, 220, 219, 219)),
                  columns: [
                    DataColumn(
                      label: Text("Num"),
                    ),
                    DataColumn(
                      label: Text("Project name"),
                    ),
                    DataColumn(
                      label: Text("Administration"),
                    ),
                    DataColumn(
                      label: Text("Project Manager"),
                    ),
                    DataColumn(
                      label: Text("Project State"),
                    ),
                    DataColumn(
                      label: Text("Last Update"),
                    ),
                    DataColumn(
                      label: Text("The Cost"),
                    ),
                  ],
                  rows: PersonsLst.map(
                    (p) => DataRow(cells: [
                      DataCell(
                        Text(p.Num.toString()),
                      ),
                      DataCell(
                        Text(p.ProjectName),
                      ),
                      DataCell(
                        Text(p.Administration),
                      ),
                      DataCell(
                        Text(p.ProjectManager),
                      ),
                      DataCell(
                        Text(p.ProjectState),
                      ),
                      DataCell(
                        Text(p.LastUpdate),
                      ),
                      DataCell(
                        Text(p.TheCost.toString()),
                      ),
                    ]),
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
