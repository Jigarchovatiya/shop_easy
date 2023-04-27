class ProfileModal {
  String? image;
  String? title;

  ProfileModal({
    this.image,
    this.title,
  });
}

// ignore: non_constant_identifier_names
List<ProfileModal> ProfileModalList = [
  ProfileModal(title: "General Setting", image: "assets/icons/setting.svg"),
  ProfileModal(title: "Payment Methods", image: "assets/icons/payment.svg"),
  ProfileModal(title: "Shipping Address", image: "assets/icons/shipping.svg"),
  ProfileModal(title: "Wishlist", image: "assets/icons/wishlist.svg"),
  ProfileModal(title: "history", image: "assets/icons/history.svg"),
  ProfileModal(title: "customer support", image: "assets/icons/customer_support.svg"),
  ProfileModal(title: "help", image: "assets/icons/help.svg"),
  ProfileModal(title: "privacy policy", image: "assets/icons/privacy.svg"),
  ProfileModal(title: "log out", image: "assets/icons/log_out.svg"),
];
