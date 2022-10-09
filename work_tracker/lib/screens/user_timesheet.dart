import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserTimesheet extends StatefulWidget {
  static const route = '/user-time-sheet';
  const UserTimesheet({super.key});

  @override
  State<UserTimesheet> createState() => _UserTimesheetState();
}

class _UserTimesheetState extends State<UserTimesheet> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xD9D9D9ff),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: const Color.fromARGB(254, 185, 146, 159),
        centerTitle: true,
        title: const Text(
          'Summary',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xEEEEEEFF),
                  border: Border.all(
                    color: const Color(0xEEEEEEFF),
                  ),
                ),
                padding: const EdgeInsets.all(10),
                height: 200,
                width: mediaQuery.width,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          Text(
                            'Employee name',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            'role of employee',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 14),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'Last Updated',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 14),
                          ),
                          Text(
                            DateFormat.MMMEd().format(DateTime.now()),
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Text('User pie chart'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Yesterday',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Today',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ]),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xEEEEEEFF),
                  border: Border.all(
                    color: const Color(0xEEEEEEFF),
                  ),
                ),
                padding: const EdgeInsets.all(10),
                height: 200,
                width: mediaQuery.width,
                child: Column(children: const [
                  Text(
                    'Weekly Timeline',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text('Bargraph'),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
