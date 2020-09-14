/*
 * flutter_atomic_design
 * user_query.dart
 * Created by Cong Fandi on 14/9/2020
 * email : congfandi@gmail.com
 * site : https://thengoding.com
 * Copyright © 2020 Cong Fandi. All rights reserved.
 *
 */

class UserQuery {
  static const String TABLE_NAME = "users";
  static const String CREATE_TABLE =
      " CREATE TABLE IF NOT EXISTS $TABLE_NAME ( id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT , address TEXT ) ";
  static const String SELECT = "select * from $TABLE_NAME";
}
