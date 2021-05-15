import 'package:flutter/material.dart';

class BookConsultantForm extends StatefulWidget {
  @override
  _BookConsultantFormState createState() => _BookConsultantFormState();
}

class _BookConsultantFormState extends State<BookConsultantForm> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _contactNoController = TextEditingController();
  TextEditingController _queryTextFieldController = TextEditingController();
  var _selectedTeamKey = "Company Registration";

  var listOfSupportTeam = {
    "Company Registration": false,
    "GST Related": false,
    "MSME/Udyog Aadhar": false,
    "Trademark Registration": false,
    "Food License/FSSAI": false,
    "Annual Filing Pvt Ltd/LLP": false,
    "Others": false,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          singleTextField(
              _nameController, "Name", "Steve Jobs", "Type Your good name"),
          singleTextField(_emailController, "E-mail", "steve@apple.com",
              "Type You valid Email"),
          singleTextField(_contactNoController, "Contact Number", "8092456455",
              "Insert Only Indian Numbers"),
          supportTeamRadioButtonsList(),
          queryTextField(
            _queryTextFieldController,
            "Query",
            "",
            "Let us know your query in detail",
          )
        ],
      ),
    );
  }

  queryTextField(
    TextEditingController controller,
    String fieldName,
    String hintText,
    String labelText,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 400,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              child: Row(
                children: [
                  Text(fieldName),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TextField(
                controller: controller,
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: hintText,
                  helperText: labelText,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  contentPadding: EdgeInsets.only(top:10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  supportTeamRadioButtonsList() {
    return Container(
      width: 400,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 50,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text("Support Team \nCategory"),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "*",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: listOfSupportTeam.keys
                  .toList()
                  .map(
                    (key) => RadioListTile(
                      value: key,
                      groupValue: _selectedTeamKey,
                      onChanged: (value) {
                        // print(value);
                        setState(() {
                          _selectedTeamKey = value;
                        });
                      },
                      title: Text("$key"),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  singleTextField(
    TextEditingController controller,
    String fieldName,
    String hintText,
    String labelText,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 400,
        child: Row(
          children: [
            Container(
              width: 150,
              child: Row(
                children: [
                  Text(fieldName),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: hintText,
                  helperText: labelText,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
