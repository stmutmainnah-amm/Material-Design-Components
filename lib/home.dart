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
import 'dart:developer' as developer;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // TODO: Make a collection of cards (102)
  List<Card> _buildGridCards(int count) {
    final List<Map<String, String>> perhiasanList = [
      {'nama': 'Kalung full diamond silver', 'harga': 'Rp.2.888.000'},
      {'nama': '1 set perhiasan elegan', 'harga': 'Rp.3.099.000'},
      {'nama': 'Gelang + anting mewah', 'harga': 'Rp.2.000.069'},
      {'nama': 'Gelang cantik', 'harga': 'Rp.1.200.000'},
      {'nama': 'Gelang jawerly', 'harga': 'Rp.1.800.000'},
      {'nama': 'Gelang mewah', 'harga': 'Rp.2.300.000'},
      {'nama': 'Cincin wedding', 'harga': 'Rp.2.700.000'},
      {'nama': 'Anting mutiara', 'harga': 'Rp.1.800.000'},
      {'nama': '1 set perhiasan', 'harga': 'Rp.3.557.000'},
      {'nama': '1 set perhiasan jawerly', 'harga': 'Rp.3.999.000'},
      // Tambahan perhiasan 11-38
      {'nama': 'Gelang silver mewah', 'harga': 'Rp.3.200.000'}, // 11
      {'nama': 'Gelang diamond ', 'harga': 'Rp.2.900.000'}, // 12
      {'nama': 'Gelang open cuff', 'harga': 'Rp.1.950.000'}, // 13
      {'nama': 'Anting hoop', 'harga': 'Rp.2.100.000'}, // 14
      {'nama': 'Set Perhiasan bunga', 'harga': 'Rp.5.000.000'}, // 15
      {'nama': 'Gelang diamond hijau', 'harga': 'Rp.2.500.000'}, // 16
      {'nama': 'Kalung ruby', 'harga': 'Rp.5.200.000'}, // 17
      {'nama': 'Anting Klasik', 'harga': 'Rp.2.800.000'}, // 18
      {'nama': 'ser perhiasan ', 'harga': 'Rp.4.300.000'}, // 19
      {'nama': 'Set Perhiasan Mewah', 'harga': 'Rp.6.000.000'}, // 20
      {'nama': 'Kalung mutiara', 'harga': 'Rp.2.750.000'}, // 21
      {'nama': 'Anting kupu-kupu', 'harga': 'Rp.2.100.000'}, // 22
      {'nama': 'Cincin snake', 'harga': 'Rp.2.600.000'}, // 23
      {'nama': 'Kalung + anting', 'harga': 'Rp.3.800.000'}, // 24
      {'nama': 'Cincin couple Silver', 'harga': 'Rp.4.500.000'}, // 25
      {'nama': 'Set kalung elegan', 'harga': 'Rp.2.900.000'}, // 26
      {'nama': 'Cincin ruby ', 'harga': 'Rp.2.200.000'}, // 27
      {'nama': 'Cincin diamond', 'harga': 'Rp.2.950.000'}, // 28
      {'nama': 'Cincin diamond', 'harga': 'Rp.4.100.000'}, // 29
      {'nama': 'Cincin mutiara', 'harga': 'Rp.5.200.000'}, // 30
      {'nama': 'Gelang snake', 'harga': 'Rp.2.300.000'}, // 31
      {'nama': 'Cincin set', 'harga': 'Rp.1.700.000'}, // 32
      {'nama': 'Gelang Silver', 'harga': 'Rp.1.900.000'}, // 33
      {'nama': 'Gelang serut', 'harga': 'Rp.3.600.000'}, // 34
      {'nama': 'Anting ruby', 'harga': 'Rp.4.800.000'}, // 35
      {'nama': 'Anting', 'harga': 'Rp.2.400.000'}, // 36
      {'nama': 'Anting kristal', 'harga': 'Rp.1.600.000'}, // 37
      {'nama': 'Anting diamond', 'harga': 'Rp.3.700.000'}, // 38
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
      backgroundColor:
          const Color.fromRGBO(233, 232, 228, 1), // warna gold/emas muda
      appBar: AppBar(
        backgroundColor: const Color(0xFFe4b730),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            developer.log('Menu button');
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
              developer.log('Search button');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              developer.log('Filter button');
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2, // 2 kolom
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 1.0, // kolom lebih kecil (persegi)
        children: _buildGridCards(38), // 38 gambar
      ),
    );
  }
}
