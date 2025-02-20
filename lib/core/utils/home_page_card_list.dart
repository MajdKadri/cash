import 'dart:ui';

class HomeCardItem {
String image;
String title;
String subtitle;

 HomeCardItem(this.image,this.title, this.subtitle);



static  List<HomeCardItem> HomeCard = [
HomeCardItem("", "SERVICES", "Services and other"),
HomeCardItem("", "TRANSFERS", "Transfer to another user"),
HomeCardItem("", "MY QR", "Show your QR code"),
HomeCardItem("", "PAYMENT", "Payments an others")



];

}



