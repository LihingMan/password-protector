class Content {
  String contentTitle;
  String content;

  Content(
  {
    this.contentTitle,
    this.content
  }
      );

  Content.fromJson(Map<String, dynamic> json) {
    // return
    contentTitle = json["title"];
    content = json["content"];
  }

  Map<String, dynamic> toJson() =>
  {
    'title': contentTitle,
    'content': content,
  };
}