import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:work_tracker/screens/user_timesheet.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});
  static const route = '/admin-dashboard';

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  bool isVisible = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xD9D9D9ff),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(254, 185, 146, 159),
        centerTitle: true,
        title: const Text(
          "Employees",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
        child: ListView.builder(
          itemBuilder: (ctx, idx) => Container(
            color: const Color(0xEEEEEEff),
            margin: const EdgeInsets.all(10),
            child: ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(UserTimesheet.route);
              },
              title: const Text(
                'Employee Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
              subtitle: const Text(
                "role of employee",
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Last Updated",
                    style: TextStyle(fontFamily: 'Poppins'),
                  ),
                  Text(
                    DateFormat.MMMEd().format(DateTime.now()),
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
          itemCount: 10,
        ),
      ),
      floatingActionButton: isVisible
          ? Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  backgroundColor: const Color.fromARGB(254, 185, 146, 159),
                  onPressed: () {},
                  child: const Icon(Icons.logout),
                ),
                const SizedBox(
                  height: 5,
                ),
                FloatingActionButton(
                  backgroundColor: const Color.fromARGB(254, 185, 146, 159),
                  onPressed: () {},
                  child: const Icon(Icons.person_add_alt_sharp),
                ),
                const SizedBox(
                  height: 5,
                ),
                FloatingActionButton(
                  backgroundColor: const Color.fromARGB(254, 185, 146, 159),
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            )
          : FloatingActionButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              backgroundColor: const Color.fromARGB(254, 185, 146, 159),
              child: const Icon(Icons.add),
            ),
    );
  }
}
