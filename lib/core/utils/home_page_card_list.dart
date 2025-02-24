

class HomeCardItem {
  String image;
  String title;
  String subtitle;

  HomeCardItem(this.image, this.title, this.subtitle);

  static List<HomeCardItem> HomeCard = [
    HomeCardItem(
        "assets/icons/services_icon.svg", "SERVICES", "Services and other"),
    HomeCardItem("assets/icons/transfers_icon.svg", "TRANSFERS",
        "Transfer to another user"),
    HomeCardItem("assets/icons/my_qr_icon.svg", "MY QR", "Show your QR code"),
    HomeCardItem(
        "assets/icons/payment_icon.svg", "PAYMENT", "Payments an others"),
  ];
}
