class UserModel {
  List<Users>? _users;
  int? _total;
  int? _skip;
  int? _limit;

  UserModel({List<Users>? users, int? total, int? skip, int? limit}) {
    if (users != null) {
      this._users = users;
    }
    if (total != null) {
      this._total = total;
    }
    if (skip != null) {
      this._skip = skip;
    }
    if (limit != null) {
      this._limit = limit;
    }
  }

  List<Users>? get users => _users;
  set users(List<Users>? users) => _users = users;
  int? get total => _total;
  set total(int? total) => _total = total;
  int? get skip => _skip;
  set skip(int? skip) => _skip = skip;
  int? get limit => _limit;
  set limit(int? limit) => _limit = limit;

  UserModel.fromJson(Map<String, dynamic> json) {
    if (json['users'] != null) {
      _users = <Users>[];
      json['users'].forEach((v) {
        _users!.add(new Users.fromJson(v));
      });
    }
    _total = json['total'];
    _skip = json['skip'];
    _limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._users != null) {
      data['users'] = this._users!.map((v) => v.toJson()).toList();
    }
    data['total'] = this._total;
    data['skip'] = this._skip;
    data['limit'] = this._limit;
    return data;
  }
}

class Users {
  int? _id;
  String? _firstName;
  String? _lastName;
  String? _maidenName;
  int? _age;
  String? _gender;
  String? _email;
  String? _phone;
  String? _username;
  String? _password;
  String? _birthDate;
  String? _image;
  String? _bloodGroup;
  double? _height;
  double? _weight;
  String? _eyeColor;
  Hair? _hair;
  String? _ip;
  Address? _address;
  String? _macAddress;
  String? _university;
  Bank? _bank;
  Company? _company;
  String? _ein;
  String? _ssn;
  String? _userAgent;
  Crypto? _crypto;
  String? _role;

  Users(
      {int? id,
      String? firstName,
      String? lastName,
      String? maidenName,
      int? age,
      String? gender,
      String? email,
      String? phone,
      String? username,
      String? password,
      String? birthDate,
      String? image,
      String? bloodGroup,
      double? height,
      double? weight,
      String? eyeColor,
      Hair? hair,
      String? ip,
      Address? address,
      String? macAddress,
      String? university,
      Bank? bank,
      Company? company,
      String? ein,
      String? ssn,
      String? userAgent,
      Crypto? crypto,
      String? role}) {
    if (id != null) {
      this._id = id;
    }
    if (firstName != null) {
      this._firstName = firstName;
    }
    if (lastName != null) {
      this._lastName = lastName;
    }
    if (maidenName != null) {
      this._maidenName = maidenName;
    }
    if (age != null) {
      this._age = age;
    }
    if (gender != null) {
      this._gender = gender;
    }
    if (email != null) {
      this._email = email;
    }
    if (phone != null) {
      this._phone = phone;
    }
    if (username != null) {
      this._username = username;
    }
    if (password != null) {
      this._password = password;
    }
    if (birthDate != null) {
      this._birthDate = birthDate;
    }
    if (image != null) {
      this._image = image;
    }
    if (bloodGroup != null) {
      this._bloodGroup = bloodGroup;
    }
    if (height != null) {
      this._height = height;
    }
    if (weight != null) {
      this._weight = weight;
    }
    if (eyeColor != null) {
      this._eyeColor = eyeColor;
    }
    if (hair != null) {
      this._hair = hair;
    }
    if (ip != null) {
      this._ip = ip;
    }
    if (address != null) {
      this._address = address;
    }
    if (macAddress != null) {
      this._macAddress = macAddress;
    }
    if (university != null) {
      this._university = university;
    }
    if (bank != null) {
      this._bank = bank;
    }
    if (company != null) {
      this._company = company;
    }
    if (ein != null) {
      this._ein = ein;
    }
    if (ssn != null) {
      this._ssn = ssn;
    }
    if (userAgent != null) {
      this._userAgent = userAgent;
    }
    if (crypto != null) {
      this._crypto = crypto;
    }
    if (role != null) {
      this._role = role;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get firstName => _firstName;
  set firstName(String? firstName) => _firstName = firstName;
  String? get lastName => _lastName;
  set lastName(String? lastName) => _lastName = lastName;
  String? get maidenName => _maidenName;
  set maidenName(String? maidenName) => _maidenName = maidenName;
  int? get age => _age;
  set age(int? age) => _age = age;
  String? get gender => _gender;
  set gender(String? gender) => _gender = gender;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get phone => _phone;
  set phone(String? phone) => _phone = phone;
  String? get username => _username;
  set username(String? username) => _username = username;
  String? get password => _password;
  set password(String? password) => _password = password;
  String? get birthDate => _birthDate;
  set birthDate(String? birthDate) => _birthDate = birthDate;
  String? get image => _image;
  set image(String? image) => _image = image;
  String? get bloodGroup => _bloodGroup;
  set bloodGroup(String? bloodGroup) => _bloodGroup = bloodGroup;
  double? get height => _height;
  set height(double? height) => _height = height;
  double? get weight => _weight;
  set weight(double? weight) => _weight = weight;
  String? get eyeColor => _eyeColor;
  set eyeColor(String? eyeColor) => _eyeColor = eyeColor;
  Hair? get hair => _hair;
  set hair(Hair? hair) => _hair = hair;
  String? get ip => _ip;
  set ip(String? ip) => _ip = ip;
  Address? get address => _address;
  set address(Address? address) => _address = address;
  String? get macAddress => _macAddress;
  set macAddress(String? macAddress) => _macAddress = macAddress;
  String? get university => _university;
  set university(String? university) => _university = university;
  Bank? get bank => _bank;
  set bank(Bank? bank) => _bank = bank;
  Company? get company => _company;
  set company(Company? company) => _company = company;
  String? get ein => _ein;
  set ein(String? ein) => _ein = ein;
  String? get ssn => _ssn;
  set ssn(String? ssn) => _ssn = ssn;
  String? get userAgent => _userAgent;
  set userAgent(String? userAgent) => _userAgent = userAgent;
  Crypto? get crypto => _crypto;
  set crypto(Crypto? crypto) => _crypto = crypto;
  String? get role => _role;
  set role(String? role) => _role = role;

  Users.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _maidenName = json['maidenName'];
    _age = json['age'];
    _gender = json['gender'];
    _email = json['email'];
    _phone = json['phone'];
    _username = json['username'];
    _password = json['password'];
    _birthDate = json['birthDate'];
    _image = json['image'];
    _bloodGroup = json['bloodGroup'];
    _height = json['height'];
    _weight = json['weight'];
    _eyeColor = json['eyeColor'];
    _hair = json['hair'] != null ? new Hair.fromJson(json['hair']) : null;
    _ip = json['ip'];
    _address =
        json['address'] != null ? new Address.fromJson(json['address']) : null;
    _macAddress = json['macAddress'];
    _university = json['university'];
    _bank = json['bank'] != null ? new Bank.fromJson(json['bank']) : null;
    _company =
        json['company'] != null ? new Company.fromJson(json['company']) : null;
    _ein = json['ein'];
    _ssn = json['ssn'];
    _userAgent = json['userAgent'];
    _crypto =
        json['crypto'] != null ? new Crypto.fromJson(json['crypto']) : null;
    _role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['firstName'] = this._firstName;
    data['lastName'] = this._lastName;
    data['maidenName'] = this._maidenName;
    data['age'] = this._age;
    data['gender'] = this._gender;
    data['email'] = this._email;
    data['phone'] = this._phone;
    data['username'] = this._username;
    data['password'] = this._password;
    data['birthDate'] = this._birthDate;
    data['image'] = this._image;
    data['bloodGroup'] = this._bloodGroup;
    data['height'] = this._height;
    data['weight'] = this._weight;
    data['eyeColor'] = this._eyeColor;
    if (this._hair != null) {
      data['hair'] = this._hair!.toJson();
    }
    data['ip'] = this._ip;
    if (this._address != null) {
      data['address'] = this._address!.toJson();
    }
    data['macAddress'] = this._macAddress;
    data['university'] = this._university;
    if (this._bank != null) {
      data['bank'] = this._bank!.toJson();
    }
    if (this._company != null) {
      data['company'] = this._company!.toJson();
    }
    data['ein'] = this._ein;
    data['ssn'] = this._ssn;
    data['userAgent'] = this._userAgent;
    if (this._crypto != null) {
      data['crypto'] = this._crypto!.toJson();
    }
    data['role'] = this._role;
    return data;
  }
}

class Hair {
  String? _color;
  String? _type;

  Hair({String? color, String? type}) {
    if (color != null) {
      this._color = color;
    }
    if (type != null) {
      this._type = type;
    }
  }

  String? get color => _color;
  set color(String? color) => _color = color;
  String? get type => _type;
  set type(String? type) => _type = type;

  Hair.fromJson(Map<String, dynamic> json) {
    _color = json['color'];
    _type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['color'] = this._color;
    data['type'] = this._type;
    return data;
  }
}

class Address {
  String? _address;
  String? _city;
  String? _state;
  String? _stateCode;
  String? _postalCode;
  Coordinates? _coordinates;
  String? _country;

  Address(
      {String? address,
      String? city,
      String? state,
      String? stateCode,
      String? postalCode,
      Coordinates? coordinates,
      String? country}) {
    if (address != null) {
      this._address = address;
    }
    if (city != null) {
      this._city = city;
    }
    if (state != null) {
      this._state = state;
    }
    if (stateCode != null) {
      this._stateCode = stateCode;
    }
    if (postalCode != null) {
      this._postalCode = postalCode;
    }
    if (coordinates != null) {
      this._coordinates = coordinates;
    }
    if (country != null) {
      this._country = country;
    }
  }

  String? get address => _address;
  set address(String? address) => _address = address;
  String? get city => _city;
  set city(String? city) => _city = city;
  String? get state => _state;
  set state(String? state) => _state = state;
  String? get stateCode => _stateCode;
  set stateCode(String? stateCode) => _stateCode = stateCode;
  String? get postalCode => _postalCode;
  set postalCode(String? postalCode) => _postalCode = postalCode;
  Coordinates? get coordinates => _coordinates;
  set coordinates(Coordinates? coordinates) => _coordinates = coordinates;
  String? get country => _country;
  set country(String? country) => _country = country;

  Address.fromJson(Map<String, dynamic> json) {
    _address = json['address'];
    _city = json['city'];
    _state = json['state'];
    _stateCode = json['stateCode'];
    _postalCode = json['postalCode'];
    _coordinates = json['coordinates'] != null
        ? new Coordinates.fromJson(json['coordinates'])
        : null;
    _country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this._address;
    data['city'] = this._city;
    data['state'] = this._state;
    data['stateCode'] = this._stateCode;
    data['postalCode'] = this._postalCode;
    if (this._coordinates != null) {
      data['coordinates'] = this._coordinates!.toJson();
    }
    data['country'] = this._country;
    return data;
  }
}

class Coordinates {
  double? _lat;
  double? _lng;

  Coordinates({double? lat, double? lng}) {
    if (lat != null) {
      this._lat = lat;
    }
    if (lng != null) {
      this._lng = lng;
    }
  }

  double? get lat => _lat;
  set lat(double? lat) => _lat = lat;
  double? get lng => _lng;
  set lng(double? lng) => _lng = lng;

  Coordinates.fromJson(Map<String, dynamic> json) {
    _lat = json['lat'];
    _lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this._lat;
    data['lng'] = this._lng;
    return data;
  }
}

class Bank {
  String? _cardExpire;
  String? _cardNumber;
  String? _cardType;
  String? _currency;
  String? _iban;

  Bank(
      {String? cardExpire,
      String? cardNumber,
      String? cardType,
      String? currency,
      String? iban}) {
    if (cardExpire != null) {
      this._cardExpire = cardExpire;
    }
    if (cardNumber != null) {
      this._cardNumber = cardNumber;
    }
    if (cardType != null) {
      this._cardType = cardType;
    }
    if (currency != null) {
      this._currency = currency;
    }
    if (iban != null) {
      this._iban = iban;
    }
  }

  String? get cardExpire => _cardExpire;
  set cardExpire(String? cardExpire) => _cardExpire = cardExpire;
  String? get cardNumber => _cardNumber;
  set cardNumber(String? cardNumber) => _cardNumber = cardNumber;
  String? get cardType => _cardType;
  set cardType(String? cardType) => _cardType = cardType;
  String? get currency => _currency;
  set currency(String? currency) => _currency = currency;
  String? get iban => _iban;
  set iban(String? iban) => _iban = iban;

  Bank.fromJson(Map<String, dynamic> json) {
    _cardExpire = json['cardExpire'];
    _cardNumber = json['cardNumber'];
    _cardType = json['cardType'];
    _currency = json['currency'];
    _iban = json['iban'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cardExpire'] = this._cardExpire;
    data['cardNumber'] = this._cardNumber;
    data['cardType'] = this._cardType;
    data['currency'] = this._currency;
    data['iban'] = this._iban;
    return data;
  }
}

class Company {
  String? _department;
  String? _name;
  String? _title;
  Address? _address;

  Company({String? department, String? name, String? title, Address? address}) {
    if (department != null) {
      this._department = department;
    }
    if (name != null) {
      this._name = name;
    }
    if (title != null) {
      this._title = title;
    }
    if (address != null) {
      this._address = address;
    }
  }

  String? get department => _department;
  set department(String? department) => _department = department;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get title => _title;
  set title(String? title) => _title = title;
  Address? get address => _address;
  set address(Address? address) => _address = address;

  Company.fromJson(Map<String, dynamic> json) {
    _department = json['department'];
    _name = json['name'];
    _title = json['title'];
    _address =
        json['address'] != null ? new Address.fromJson(json['address']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['department'] = this._department;
    data['name'] = this._name;
    data['title'] = this._title;
    if (this._address != null) {
      data['address'] = this._address!.toJson();
    }
    return data;
  }
}

class Crypto {
  String? _coin;
  String? _wallet;
  String? _network;

  Crypto({String? coin, String? wallet, String? network}) {
    if (coin != null) {
      this._coin = coin;
    }
    if (wallet != null) {
      this._wallet = wallet;
    }
    if (network != null) {
      this._network = network;
    }
  }

  String? get coin => _coin;
  set coin(String? coin) => _coin = coin;
  String? get wallet => _wallet;
  set wallet(String? wallet) => _wallet = wallet;
  String? get network => _network;
  set network(String? network) => _network = network;

  Crypto.fromJson(Map<String, dynamic> json) {
    _coin = json['coin'];
    _wallet = json['wallet'];
    _network = json['network'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['coin'] = this._coin;
    data['wallet'] = this._wallet;
    data['network'] = this._network;
    return data;
  }
}
