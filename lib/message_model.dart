import './user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
  });
}

//current user (you)

final User currentUser = User(
  id: 0,
  username: 'Current User',
  //imageUrl: 'some picture',
);

//other users (businesses)

final User leShawarma = User(
  id: 1,
  username: 'Le Shawarma',
  imageUrl: 'assets/images/leShawarma.jpg',
);

final User stMichelBakery = User(
  id: 2,
  username: 'St. Michel\'s Bakery',
  imageUrl: 'assets/images/stMichelBakery.jpg',
);

final User gregsTea = User(
  id: 3,
  username: 'Greg\'s Teapot',
  imageUrl: 'assets/images/gregsTea.jpg',
);

final User monoBoutique = User(
  id: 4,
  username: 'Mono Boutique',
  imageUrl: 'assets/images/monoBoutique.jpg',
);

final User piazzaParlor = User(
  id: 5,
  username: 'Piazza Parlor',
  imageUrl: 'assets/images/piazzaParlor.jpg',
);

//example chats on the homescreen

List<Message> chats = [
  Message(
    sender: leShawarma,
    time: '7:31 PM',
    text: "We are actually having our end of the day sale right now.",
    unread: true,
  ),
  Message(
    sender: stMichelBakery,
    time: '6:05 PM',
    text: "Yes, that is still in stock.",
    unread: true,
  ),
  Message(
    sender: gregsTea,
    time: '2:53 PM',
    text: "Hello, how can we help you today?",
    unread: false,
  ),
  Message(
    sender: monoBoutique,
    time: '2:45 PM',
    text: "We also do custom alterations and fittings as well.",
    unread: false,
  ),
  Message(
    sender: piazzaParlor,
    time: '2:32 PM',
    text: "We are currently delivery only!",
    unread: false,
  ),
];

//example chat from your first message

List<Message> messages = [
  Message(
    sender: leShawarma,
    time: '7:31 PM',
    text: "Yes, but only at our St. George location!",
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '7:25 PM',
    text: "Is it true that you guys do end of the day sales everyday?",
    unread: true,
  ),
  Message(
    sender: leShawarma,
    time: '7:25 PM',
    text: "Hello Riley, yes we do! We recommend our Vegatarian Wrap and our Roasted Vegatable Rice.",
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '7:23 PM',
    text: "Hi, do you guys have vegetarian dinner options available?",
    unread: true,
  ),
];