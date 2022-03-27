class User {
  String image;
  String name;
  String email;
  String phone;
  String address;
  String delete;
  String contact;

  // Constructor
  User({
    required this.image,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.delete,
    required this.contact
  });

  User copy({
    String? imagePath,
    String? name,
    String? phone,
    String? email,
    String? address,
    String? delete,
    String? contact
  }) =>
      User(
        image: imagePath ?? image,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        address : address ?? this.address,
        delete: delete ?? this.delete,
        contact: contact ?? this.contact

      );

  static User fromJson(Map<String, dynamic> json) => User(
        image: json['imagePath'],
        name: json['name'],
        email: json['email'],
        address: json['address'],
        phone: json['phone'],
        delete: json['delete'],
        contact: json['contact']
      );

  Map<String, dynamic> toJson() => {
        'imagePath': image,
        'name': name,
        'email': email,
        'address': address,
        'phone': phone,
         'delete': delete,
         'contact' : contact,
      };
}