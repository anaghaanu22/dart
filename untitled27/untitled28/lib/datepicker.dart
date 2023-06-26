import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Picker extends StatefulWidget {
  const Picker({Key? key}) : super(key: key);

  @override
  State<Picker> createState() => _PickerState();
}

class _PickerState extends State<Picker> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Date",
              ),
              onTap: (){
                  Future<void> _selectDate(BuildContext context) async {
            final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
                  }

              },
                
            ),
          
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(onPressed: ()async{
                TimeOfDay? timepick=await showTimePicker(context: context,
                    initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input,
                );

                if(timepick!=null){

                  print("time selected:${timepick.hour}:${timepick.minute}");
                  }

              }, child: Text("Time")),
            )
          ],
        ),
      ),
    );
  }
}
