class MessageModel {
  final String user;
  final String message;
  final String time;
  final String imageUrl;
  final bool isRead;

  MessageModel({this.user, this.message, this.time, this.imageUrl, this.isRead});
}

List<MessageModel> messages = [
  MessageModel(
    user: 'Naruto',
    message: 'SASUKEEEEEEE!',
    time: '20:27',
    imageUrl: 'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2019%2F04%2Fnaruto-ramen-ichiraku-official-1.jpg?q=75&w=800&cbr=1&fit=max',
    isRead: false,
  ),
  MessageModel(
    user: 'Sasuke',
    message: 'NARUTOOOOOOOOO!',
    time: '13:00',
    imageUrl: 'https://a-static.besthdwallpaper.com/naruto-shippuden-sasuke-uchiha-mangekyo-sharingan-rinnegan-lightning-style-jutsu-wallpaper-8014_L.jpg',
    isRead: true,
  ),
  MessageModel(
    user: 'NARUTO',
    message: 'Dattebayo!',
    time: '12:00',
    imageUrl: 'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2019%2F04%2Fnaruto-ramen-ichiraku-official-1.jpg?q=75&w=800&cbr=1&fit=max',
    isRead: false,
  ),
  MessageModel(
    user: 'Nagato',
    message: 'Hey! How\'s it going?',
    time: '10:27',
    imageUrl: 'https://www.ecopetit.cat/wpic/mpic/41-416953_pain-wallpaper-naruto-naruto-aesthetic.jpg',
    isRead: false,
  ),
  MessageModel(
    user: 'Nagato',
    message: 'Hey! How\'s it going?',
    time: '8:30',
    imageUrl: 'https://www.ecopetit.cat/wpic/mpic/41-416953_pain-wallpaper-naruto-naruto-aesthetic.jpg',
    isRead: true,
  ),
  MessageModel(
    user: 'Nagato',
    message: 'Hey! How\'s it going?',
    time: '8:30',
    imageUrl: 'https://www.ecopetit.cat/wpic/mpic/41-416953_pain-wallpaper-naruto-naruto-aesthetic.jpg',
    isRead: true,
  ),
  MessageModel(
    user: 'Nagato',
    message: 'Hey! How\'s it going?',
    time: '8:30',
    imageUrl: 'https://www.ecopetit.cat/wpic/mpic/41-416953_pain-wallpaper-naruto-naruto-aesthetic.jpg',
    isRead: true,
  ),
];