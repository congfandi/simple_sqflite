/*
 * flutter_atomic_design
 * country.dart
 * Created by Cong Fandi on 14/9/2020
 * email : congfandi@gmail.com
 * site : https://thengoding.com
 * Copyright © 2020 Cong Fandi. All rights reserved.
 *
 */

class Country {
    int id;
    String name;

    Country({this.id, this.name});

    factory Country.fromJson(Map<String, dynamic> json) {
        return Country(
            id: json['id'], 
            name: json['NAME'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['NAME'] = this.name;
        return data;
    }
}