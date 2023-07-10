class thread {
  String? name;
  String? posted;
  String? description;
  String? image;
  String? profileImage;
  String? replies;
  String? liks;

  thread(
      this.description,
      this.image,
      this.liks,
      this.name,
      this.posted,
      this.profileImage,
    
      this.replies);
     

  factory thread.formJson(Map<String, String> jsonObject) {
    return thread(
      jsonObject['description'],
      jsonObject['image'],
      jsonObject['liks'],
      jsonObject['name'],
      jsonObject['posted'],
      jsonObject['profileImage'],
      jsonObject['replies'],
     
    );
  }
}
