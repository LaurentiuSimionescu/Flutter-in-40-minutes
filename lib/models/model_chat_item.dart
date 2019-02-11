class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "Trump",
      message: "Make America Great Again",
      time: "2016",
      avatarUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Donald_Trump_official_portrait.jpg/1200px-Donald_Trump_official_portrait.jpg"),
  new ChatModel(
      name: "Barack Obama",
      message: "Forward",
      time: "2012",
      avatarUrl:
          "https://upload.wikimedia.org/wikipedia/commons/8/8d/President_Barack_Obama.jpg"),
  new ChatModel(
      name: "George W. Bush",
      message: "Yes, America Can!",
      time: "2004",
      avatarUrl:
          "https://upload.wikimedia.org/wikipedia/commons/d/d4/George-W-Bush.jpeg"),
  new ChatModel(
      name: "Bill Clinton",
      message: "Building a Bridge to the 21st Century",
      time: "1996",
      avatarUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Bill_Clinton.jpg/1200px-Bill_Clinton.jpg"),
  new ChatModel(
      name: "George Bush",
      message: "Kinder, Gentler Nation",
      time: "1988",
      avatarUrl:
          "https://upload.wikimedia.org/wikipedia/commons/e/ee/George_H._W._Bush_crop.jpg")
];
