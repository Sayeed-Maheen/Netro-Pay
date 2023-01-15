class UnbordingContent {
  String title;
  String discription;
  String image;

  UnbordingContent(
      {required this.title, required this.image, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      image: 'assets/images/onboard1.png',
      title: 'Now Easier to Make Online Payments',
      discription:
          "Make a payment with our app in an easier way within a few seconds."),
  UnbordingContent(
      image: 'assets/images/onboard2.png',
      title: 'Secure Transactions & Reliable Anytime',
      discription:
          "You can get 100% security in every transaction. So, you can blindly rely on us."),
  UnbordingContent(
      image: 'assets/images/onboard3.png',
      title: "Let's Manage Your Financials Now!",
      discription:
          "Now, it's easier to manage your finances with us and do the transaction more securely."),
];
