import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var fitur2 = [
    "Request",
    "Send",
    "Bills",
    "Top Up",
    "Withdraw",
    "Games",
    "Split",
    "Mobile"
  ];

  List<Icon> iconhome = [
    Icon(Icons.call_received),
    Icon(Icons.call_made),
    Icon(Icons.receipt_long),
    Icon(Icons.add),
    Icon(Icons.payments),
    Icon(Icons.sports_esports),
    Icon(Icons.splitscreen_outlined),
    Icon(Icons.phone_android)
  ];

  var ItemImages = [
    "https://www.zenicablog.com/wp-content/uploads/2020/06/dan-gold-4_jhDO54BYg-unsplash-1-.jpg",
    "https://images.unsplash.com/photo-1537963447914-dbc04b81de27?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=812&q=80"
  ];

  var promoTitles = [
    "Get your greens for less",
    "Level up your gaming experience",
  ];

  var promoDescriptions = [
    "Enjoy exclusive discounts at Ranch Market, your go-to veggie supermarket",
    "Get exciting cashback offers on topping up your game balance"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 248, 251, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?q=10&h=200"),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hai,",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text("Alkhadafi",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  width: double.infinity,
                  height: 175,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Platinum Member",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Member since 8/23",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Balance",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Rp.4.000.000",
                              style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                width: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  itemCount: fitur2.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 46),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: 
                              iconhome[index]
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            fitur2[index],
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 5.0),
                    child: Row(
                      children: [
                        Text(
                          "Promo",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(), // Mengisi ruang kosong
                        TextButton(
                          onPressed: () {
                            // Tindakan saat tombol "See All" ditekan
                          },
                          child: Text(
                            "See All",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue, // Warna font biru
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              (ItemImages[index]),
                            ),
                          ),
                        ),
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 110,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0,
                                      right: 16.0,
                                      bottom: 8.0), // Tambahkan margin ke bawah
                                  child: Text(
                                    promoTitles[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.0,
                                      right: 16.0,
                                      bottom: 8.0), // Tambahkan margin ke bawah
                                  child: Text(
                                    promoDescriptions[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
