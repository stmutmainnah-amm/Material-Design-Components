// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  // TODO: Make a collection of cards (102)
  List<Card> _buildGridCards(int count) {
    final List<Map<String, String>> perhiasanList = [
      {
        'nama': 'Kalung full diamond silver',
        'harga': 'Rp.2.888.000',
      },
      {
        'nama': '1 set perhiasan elegan',
        'harga': 'Rp.3.099.000',
      },
      {
        'nama': 'Gelang + anting mewah',
        'harga': 'Rp.2.000.069',
      },
      {
        'nama': 'Gelang cantik',
        'harga': 'Rp.1.200.000',
      },
      {
        'nama': 'Gelang jawerly',
        'harga': 'Rp.1.800.000',
      },
      {
        'nama': 'Gelang mewah',
        'harga': 'Rp.2.300.000',
      },
      {
        'nama': 'Cincin wedding',
        'harga': 'Rp.2.700.000',
      },
      {
        'nama': 'Anting mutiara',
        'harga': 'Rp.1.800.000',
      },
      {
        'nama': '1 set perhiasan',
        'harga': 'Rp.3.557.000',
      },
      {
        'nama': '1 set perhiasan jawerly',
        'harga': 'Rp.3.999.000',
      },
    ];
    List<Card> cards = List.generate(
      count,
      (int index) {
        String imageName = 'assets/perhiasan${index + 1}.jpg';
        String nama = perhiasanList[index]['nama'] ?? 'Perhiasan';
        String harga = perhiasanList[index]['harga'] ?? '';
        return Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 18.0 / 11.0,
                child: Image.asset(imageName, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(nama),
                    const SizedBox(height: 8.0),
                    Text(harga),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
    return cards;
  }

  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1), // warna gold/emas muda
      appBar: AppBar(
        backgroundColor: Color(0xFFe4b730),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        title: const Text('LUXURY JEWELRY'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2, // 2 kolom
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 1.0, // kolom lebih kecil (persegi)
        children: _buildGridCards(10), // 10 gambar
      ),
    );
  }
}
