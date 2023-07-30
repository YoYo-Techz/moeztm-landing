import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IndexWidget extends StatefulWidget {
  const IndexWidget({super.key});

  @override
  State<IndexWidget> createState() => _IndexWidgetState();
}

class _IndexWidgetState extends State<IndexWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBB03F),
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox(
          height: 45,
          child: Image.asset(
            "assets/logo/logo_auth.png",
            fit: BoxFit.cover,
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/logo/background.png",
                ),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Text(
                "MoeZ(TM)",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                    fontSize: 27, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 8),
              Text(
                "မင်္ဂလာပါ ကြိုဆိုပါတယ်ခင်ဗျာ",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSansMyanmar(
                    fontSize: 18, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    child: Image.asset(
                      "assets/logo/play-store.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    height: 45,
                    child: Image.asset(
                      "assets/logo/testflight.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    height: 45,
                    child: Image.asset(
                      "assets/logo/direct.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                "ကျွန်တော့် Offical ချန်နယ် များ",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSansMyanmar(
                    fontSize: 17, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  item(
                      title: "Facebook",
                      image: "assets/logo/facebook.png",
                      url: ""),
                  const SizedBox(width: 10),
                  item(
                      title: "YouTube",
                      image: "assets/logo/youtube.png",
                      url: ""),
                  const SizedBox(width: 10),
                  item(title: "Viber", image: "assets/logo/viber.png", url: ""),
                  const SizedBox(width: 10),
                  item(
                      title: "Telegram",
                      image: "assets/logo/telegram.png",
                      url: ""),
                ],
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "နောက်ဆုံးရ အချက်အလက်များအား အချိန်မရွေးသိနိင်အောင် Join ထားပါရန်",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSansMyanmar(
                      fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "ကျွန်တော့်အား တိုက်ရိုက်ဆက်သွယ်ရန်",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSansMyanmar(
                      fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white24),
                child: Column(
                  children: [
                    citem(
                        title: "Viber 1",
                        image: "assets/logo/viber.png",
                        num: "09123456789"),
                    const SizedBox(height: 10),
                    citem(
                        title: "Viber 2",
                        image: "assets/logo/viber.png",
                        num: "09123456789"),
                    const SizedBox(height: 10),
                    citem(
                        title: "Telegram 1",
                        image: "assets/logo/telegram.png",
                        num: "09123456789"),
                    const SizedBox(height: 10),
                    citem(
                        title: "Telegram 2",
                        image: "assets/logo/telegram.png",
                        num: "09123456789"),
                    const SizedBox(height: 10),
                    citem(
                        title: "Telegram 3",
                        image: "assets/logo/telegram.png",
                        num: "09123456789")
                  ],
                ),
              ),
              const SizedBox(height: 35)
            ],
          ),
        ),
      ),
    );
  }

  Widget item(
      {required String title, required String image, required String url}) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55),
              image: DecorationImage(image: AssetImage(image))),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: GoogleFonts.dmSans(fontWeight: FontWeight.bold, fontSize: 13),
        )
      ],
    );
  }

  Widget citem(
      {required String title, required String image, required String num}) {
    return Row(
      children: [
        Container(
          height: 38,
          width: 38,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55),
              image: DecorationImage(image: AssetImage(image))),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: Text(
            title,
            style:
                GoogleFonts.dmSans(fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            num,
            style:
                GoogleFonts.dmSans(fontWeight: FontWeight.bold, fontSize: 13),
          ),
        )
      ],
    );
  }
}
