import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
                "Moe Z (TM)",
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
              const SizedBox(height: 18),
            
              // Text(
              //   "ကျွန်တော့် App အား Download ဆွဲရန်",
              //   textAlign: TextAlign.center,
              //   style: GoogleFonts.notoSerifMyanmar(
              //       fontSize: 16, fontWeight: FontWeight.bold,color: Colors.red.shade600),
              // ),
              //   const SizedBox(height: 5),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     InkWell(
              //       onTap: () {
              //         ontap(
              //             url:
              //                 "https://play.google.com/store/apps/details?id=com.yoyo.trip.moez");
              //       },
              //       child: SizedBox(
              //         height: 45,
              //         child: Image.asset(
              //           "assets/logo/play-store.png",
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //     ),
              //     // const SizedBox(width: 10),
              //     // SizedBox(
              //     //   height: 45,
              //     //   child: Image.asset(
              //     //     "assets/logo/testflight.png",
              //     //     fit: BoxFit.cover,
              //     //   ),
              //     // ),
              //     const SizedBox(width: 10),
              //     SizedBox(
              //       height: 45,
              //       child: Image.asset(
              //         "assets/logo/direct.png",
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(height: 20),
              Text(
                "ကျွန်တော့် Official ချန်နယ် များ",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSansMyanmar(
                    fontSize: 17, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  item(
                      title: "Facebook",
                      image: "assets/logo/facebook.png",
                      url: "https://www.facebook.com/moez2dlive?mibextid="),
                  const SizedBox(width: 10),
                  item(
                      title: "YouTube",
                      image: "assets/logo/youtube.png",
                      url: "https://youtube.com/@moeztm2d3d"),
                  const SizedBox(width: 10),
                  item(
                      title: "Viber",
                      image: "assets/logo/viber.png",
                      url:
                          "https://invite.viber.com/?g2=AQA%2FETDhdpDxp1EdCZjLMMRSzGF%2FCJSNdanGekeZl9XrhsApB8nB6t%2BM5pFt3o6h"),
                  const SizedBox(width: 10),
                  item(
                      title: "Telegram",
                      image: "assets/logo/telegram.png",
                      url: "https://t.me/moez2d3d"),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "နောက်ဆုံးရ အချက်အလက်များအား အချိန်မရွေးသိနိင်အောင် Join ထားပါရန်",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSansMyanmar(
                      fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "ကျွန်တော့်အား တိုက်ရိုက်ဆက်သွယ်ရန်",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSansMyanmar(
                      fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white24),
                child: Column(
                  children: [
                    citem(
                        title: "Viber 1",
                        image: "assets/logo/viber.png",
                        num: "09-425-785-735",
                        onTap: () {
                          ontap(url: "https://msng.link/o?959425785735=vi");
                        }),
                    const SizedBox(height: 10),
                    citem(
                        title: "Viber 2",
                        image: "assets/logo/viber.png",
                        num: "09-775-521-932",
                        onTap: () {
                          ontap(url: "https://msng.link/o?959775521932=vi");
                        }),
                    const SizedBox(height: 10),
                    citem(
                        title: "Viber 3",
                        image: "assets/logo/viber.png",
                        num: "+66-99-443-0783",
                        onTap: () {
                          ontap(url: "https://msng.link/o?66994430783=vi");
                        }),
                    const SizedBox(height: 10),
                    citem(
                        title: "Telegram 1",
                        image: "assets/logo/telegram.png",
                        num: "t.me/moezofficial",
                        onTap: () {
                          ontap(url: "https://t.me/moezofficial");
                        }),
                    const SizedBox(height: 10),
                    citem(
                        title: "Telegram 2",
                        image: "assets/logo/telegram.png",
                        num: "t.me/moeztm",
                        onTap: () {
                          ontap(url: "https://t.me/moeztm");
                        }),
                    const SizedBox(height: 10),
                    citem(
                        title: "Telegram 3",
                        image: "assets/logo/telegram.png",
                        num: "t.me/moeztm2d3d",
                        onTap: () {
                          ontap(url: "https://t.me/moeztm2d3d");
                        })
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

  void ontap({required String url}) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget item(
      {required String title, required String image, required String url}) {
    return InkWell(
      onTap: () async {
        if (await canLaunchUrlString(url)) {
          await launchUrlString(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Column(
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
            style:
                GoogleFonts.dmSans(fontWeight: FontWeight.bold, fontSize: 13),
          )
        ],
      ),
    );
  }

  Widget citem(
      {required String title,
      required String image,
      required String num,
      void Function()? onTap}) {
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
          child: InkWell(
             onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      blurRadius:0.5,
                      spreadRadius:0.5
                    )
                  ]),
              child: Center(
                child: Text(
                  "နိပ်ပါ",
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.bold, fontSize: 14,color: Colors.redAccent),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
