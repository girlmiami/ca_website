import 'package:flutter/material.dart';

class LlpForm extends StatefulWidget {
  @override
  _LlpFormState createState() => _LlpFormState();
}

class _LlpFormState extends State<LlpForm> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _contactNoController = TextEditingController();
  TextEditingController _queryTextFieldController = TextEditingController();
  var _selectedTeamKey = "Company Registration";

  var listOfCategory = {
    "Pvt Ltd Company (2 Person)": false,
    "LLP (2 Person)": false,
    "OPC (1 Person)": false,
    "Help Me to Choose": false,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          singleTextField(
              _nameController, "Name", "Mukesh Ambani", "Type Your good name"),
          singleTextField(_emailController, "E-mail", "mukesh@reliance.com",
              "Type You valid Email"),
          singleTextField(_contactNoController, "Contact Number", "8092456455",
              "Insert Only Indian Numbers"),
          radioButtonsList(),
          queryTextField(
            _queryTextFieldController,
            "Your Message",
            "Want To Start Telecom and  Petrochemical Company.Help me to setup my Private Limited Company In Mumbai",
            "Let us know your Requirements in Details",
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
                  labelText: labelText,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  contentPadding: EdgeInsets.only(
                    top: 20,
                    left: 10,
                    right: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  radioButtonsList() {
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
                  child: Text("Choose Category"),
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
              children: listOfCategory.keys
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
