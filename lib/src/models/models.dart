enum Status {
  active,
  waiting,
  hidden,
  deactive,
}

class User {
  final String? id;
  final Status status;
  final String username;
  final String? description;
  final DateTime? createdAt;

  User({
    this.id,
    this.status = Status.active,
    this.username = "",
    this.description,
    this.createdAt,
  });
}

// insanlar tagleri aylik kiralasinlar taglar 2.99 dolardan baslasin
// yillik 19.99
// tag kiralama sona erdiginde tag sahipsiz hale gelir. isteye alir.
// life time olarak 4999 kati olsun
class Tag {
  final String? id;
  final Status status;
  final String label;
  final double price;
  final List<Tag> relatedTags;
  final DateTime? createdAt;

  Tag({
    this.id,
    this.status = Status.active,
    this.label = "",
    this.price = 0.0,
    this.relatedTags = const [],
    this.createdAt,
  });
}

class TagUser {
  final String? id;
  final String? tagId;
  final String? userId;

  final DateTime? createdAt;

  TagUser({
    this.id,
    this.tagId,
    this.userId,
    this.createdAt,
  });
}

class Entry {
  final String? id;
  final String? ownerId;
  final String? parentId;
  final String description;
  final Status status;
  final List<Tag> tags;
  final DateTime? createdAt;

  Entry({
    this.id,
    this.ownerId,
    this.parentId,
    this.description = "",
    this.status = Status.active,
    this.tags = const [],
    this.createdAt,
  });
}

class Chat {
  final String? id;
  final String? ownerId;
  final String? label;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Chat({
    this.id,
    this.ownerId,
    this.label,
    this.createdAt,
    this.updatedAt,
  });
}

class Message {
  final String? id;
  final String? ownerId;
  final String? chatId;
  final String? parentMessageId;
  final String message;
  final Status status;
  final DateTime? createdAt;
  final List<String> seen;

  Message({
    this.id,
    this.ownerId,
    this.chatId,
    this.parentMessageId,
    this.message = "",
    this.status = Status.active,
    this.createdAt,
    this.seen = const [],
  });
}

class OwnerInfos {
  final String? id;
  final String? tagId;
  final String? label;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  OwnerInfos({
    this.id,
    this.tagId,
    this.label,
    this.description,
    this.createdAt,
    this.updatedAt,
  });
}

class OwnerInfo {
  final String? id;
  final String? ownerInfosId;
  final String? ownerId;
  final String? label;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  OwnerInfo({
    this.id,
    this.ownerInfosId,
    this.ownerId,
    this.label,
    this.description,
    this.createdAt,
    this.updatedAt,
  });
}
