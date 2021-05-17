import 'package:chat_app/chat/model/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseApi {
  static Future uploadMessage(String idUser, String message) async {
    final refMessages =
        FirebaseFirestore.instance.collection('chats/$idUser/messages');

    final newMessage = Message(
      idUser: "PfJuBhUnhIoPgaXw0UmK", //other persons id
      message: message,
      createdAt: DateTime.now(),
    );
    await refMessages.add(newMessage.toJson());

    /* final refUsers = FirebaseFirestore.instance.collection('users');
    await refUsers
        .doc(idUser)
        .update({UserField.lastMessageTime: DateTime.now()});  */
  }

  static Stream<List<Message>> getMessages(String idUser) =>
      FirebaseFirestore.instance
          .collection('chats/$idUser/messages')
          .orderBy(MessageField.createdAt, descending: true)
          .snapshots()
          .transform(Utils.transformer(Message.fromJson));
}
