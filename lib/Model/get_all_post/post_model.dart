class GetAllPost {
  String? message;
  List<Posts>? posts;

  GetAllPost({this.message, this.posts});

  GetAllPost.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['posts'] != null) {
      posts = <Posts>[];
      json['posts'].forEach((v) {
        posts!.add(new Posts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.posts != null) {
      data['posts'] = this.posts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Posts {
  String? sId;
  String? description;
  String? postImg;
  CreatedBy? createdBy;
  String? createdAt;
  List<String>? likes;
  List<Comments>? comments;
  int? iV;

  Posts(
      {this.sId,
      this.description,
      this.postImg,
      this.createdBy,
      this.createdAt,
      this.likes,
      this.comments,
      this.iV});

  Posts.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    description = json['description'];
    postImg = json['postImg'];
    createdBy = json['createdBy'] != null
        ? new CreatedBy.fromJson(json['createdBy'])
        : null;
    createdAt = json['createdAt'];
    likes = json['likes'].cast<String>();
    if (json['comments'] != null) {
      comments = <Comments>[];
      json['comments'].forEach((v) {
        comments!.add(new Comments.fromJson(v));
      });
    }
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['description'] = this.description;
    data['postImg'] = this.postImg;
    if (this.createdBy != null) {
      data['createdBy'] = this.createdBy!.toJson();
    }
    data['createdAt'] = this.createdAt;
    data['likes'] = this.likes;
    if (this.comments != null) {
      data['comments'] = this.comments!.map((v) => v.toJson()).toList();
    }
    data['__v'] = this.iV;
    return data;
  }
}

class CreatedBy {
  String? sId;
  String? name;
  String? about;
  bool? interviewer;
  String? profileImg;

  CreatedBy(
      {this.sId, this.name, this.about, this.interviewer, this.profileImg});

  CreatedBy.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    about = json['about'];
    interviewer = json['interviewer'];
    profileImg = json['profileImg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['about'] = this.about;
    data['interviewer'] = this.interviewer;
    data['profileImg'] = this.profileImg;
    return data;
  }
}

class Comments {
  CreatedBy? commentedBy;
  String? comment;
  String? sId;

  Comments({this.commentedBy, this.comment, this.sId});

  Comments.fromJson(Map<String, dynamic> json) {
    commentedBy = json['commentedBy'] != null
        ? new CreatedBy.fromJson(json['commentedBy'])
        : null;
    comment = json['comment'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.commentedBy != null) {
      data['commentedBy'] = this.commentedBy!.toJson();
    }
    data['comment'] = this.comment;
    data['_id'] = this.sId;
    return data;
  }
}
