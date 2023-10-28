import 'package:anubis_sentinel_app/app/shared/utils/color_schema.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        toolbarHeight: 65,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          height: 100,
          width: 100,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors().primaryColor),
            image: const DecorationImage(
              image: NetworkImage(
                'https://avatars.githubusercontent.com/u/31713982?v=4',
              ),
            ),
          ),
        ),
        title: ListTile(
          title: Text(
            'Rodrigo Castro',
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors().primaryTextColor,
            ),
          ),
          subtitle: const Text('27 de outubro de 2023'),
        ),
        actions: [
          SizedBox(
            height: 50,
            width: 70,
            child: Card(
              color: Colors.grey.shade300,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_active,
                  color: AppColors().primaryColor,
                ),
              ),
            ),
          )
        ],
      ),
      body: SizedBox(
        width: sizeW,
        height: sizeH,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: sizeH * 0.2,
                width: sizeW,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors().primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Verifique onde está o pacote',
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                    Text(
                      'Insira o código de rastreio',
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(
                            Icons.my_location_outlined,
                            color: AppColors().primaryColor,
                          ),
                          contentPadding: const EdgeInsets.only(bottom: 5),
                        ),
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Outras remessas',
                    style: GoogleFonts.nunito(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: AppColors().primaryTextColor,
                    ),
                  ),
                  Text(
                    'Ver tudo',
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: sizeH * 0.4,
                width: sizeW,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(18),
                        leading: Container(
                          height: 50,
                          width: 50,
                          padding: const EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Image(
                            height: 24,
                            width: 24,
                            image: AssetImage('assets/icons/truck.png'),
                          ),
                        ),
                        title: Text(
                          'Processador R7',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors().primaryTextColor,
                          ),
                        ),
                        subtitle: Text(
                          'Em trânsito',
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_right,
                            size: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        child: SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.home_filled,
                  color: AppColors().primaryColor,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.settings,
                  color: AppColors().primaryColor,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: AppColors().primaryColor,
            onPressed: () {},
            child: const Image(
              height: 36,
              image: AssetImage('assets/icons/logo.png'),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
