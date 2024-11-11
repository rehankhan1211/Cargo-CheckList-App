import 'package:flutter/material.dart';

void main() {
  runApp(FreightSearchApp());
}

class FreightSearchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freight Search',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: FreightSearchPage(),
    );
  }
}

class FreightSearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideNavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Search the best Freight Rates',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'History',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(child: buildTextField('Origin')),
                  SizedBox(width: 16),
                  Expanded(child: buildTextField('Destination')),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text("Include nearby origin ports"),
                  Spacer(),
                  Checkbox(value: false, onChanged: (value) {}),
                  Text("Include nearby destination ports"),
                ],
              ),
              SizedBox(height: 16),
              buildTextField('Commodity'),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Shipment Type:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Checkbox(value: true, onChanged: (value) {}),
                  Text("FCL"),
                  Checkbox(value: false, onChanged: (value) {}),
                  Text("LCL"),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      items: [
                        DropdownMenuItem(
                          child: Text("40' Standard"),
                          value: "40' Standard",
                        ),
                        DropdownMenuItem(
                          child: Text("20' Standard"),
                          value: "20' Standard",
                        ),
                      ],
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Container Size",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(child: buildTextField('No of Boxes')),
                  SizedBox(width: 16),
                  Expanded(child: buildTextField('Weight (Kg)')),
                ],
              ),
              SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Container Internal Dimensions:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Length: 39.46 ft"),
                    Text("Width: 7.70 ft"),
                    Text("Height: 7.84 ft"),
                  ],
                ),
              ),
              Spacer(),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text('Search'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
}

class SideNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Center(child: Text("DEMO", style: TextStyle(fontSize: 24))),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Bookings"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.assignment),
            title: Text("Quotations"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),
          Spacer(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
