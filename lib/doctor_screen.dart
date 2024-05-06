import 'package:flutter/material.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232528),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(
            15,
          ),
          child: Column(
            children: [
              const Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzzWc0vYExVjSevm5jypdwMavx3RWvEtAXtgANP9HOmw&s",
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome Back",
                          style: TextStyle(
                            color: Color(0xffAAB6C3),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text("Dr. John Doe",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.search,
                      color: Color(0xffAAB6C3),
                      size: 35,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.heat_pump,
                      color: Color(0xffAAB6C3),
                      size: 35,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Upcoming Appointments",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                          padding: const EdgeInsets.only(top: 20),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff2E6FF3),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            height: double.infinity,
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ListTile(
                                  title: Text(
                                    "data",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "SUBTITEL",
                                        style: TextStyle(
                                          color: Color(0XFFC0D4FB),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "4.8",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 18,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  trailing: Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                  ),
                                  leading: CircleAvatar(
                                    radius: 20,
                                    backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzzWc0vYExVjSevm5jypdwMavx3RWvEtAXtgANP9HOmw&s",
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.ac_unit_outlined),
                                    Text(
                                      "data",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(Icons.ac_unit_outlined),
                                    Text(
                                      "data",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.zero,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Categories",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          //7D8A95
                          Text(
                            "See all",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff7D8A95),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: GridView.builder(
                            padding: const EdgeInsets.all(5),
                            itemCount: 40,
                            scrollDirection: Axis.horizontal,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              childAspectRatio: 1 / 1,
                            ),
                            itemBuilder: (context, index) => Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        15,
                                      ),
                                    ),
                                    color: Color(0xff333D4D),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.dangerous_sharp,
                                          color: Colors.white),
                                      Text(
                                        "data",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "All Doctors",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          //7D8A95
                          Text(
                            "See all",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff7D8A95),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView.separated(
                          padding: const EdgeInsets.all(10),
                          itemBuilder: (context, index) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.25,
                              decoration: BoxDecoration(
                                color: const Color(0xff333D4D),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const ListTile(
                                    title: Text(
                                      "data",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "SUBTITEL",
                                          style: TextStyle(
                                            color: Color(0XFFC0D4FB),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "4.8",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 18,
                                            ),
                                            Spacer(),
                                            Icon(Icons.ac_unit_outlined,
                                                color: Colors.white),
                                            Text(
                                              "data",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Spacer(),
                                            Icon(Icons.ac_unit_outlined,
                                                color: Colors.white),
                                            Text(
                                              "data",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    trailing: Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    ),
                                    leading: CircleAvatar(
                                      radius: 20,
                                      backgroundImage: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzzWc0vYExVjSevm5jypdwMavx3RWvEtAXtgANP9HOmw&s",
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff7D8A95),
                                      foregroundColor: Colors.white,
                                      fixedSize: Size(
                                        MediaQuery.of(context).size.width *
                                            0.80,
                                        50,
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text("data"),
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 10),
                          itemCount: 100,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
