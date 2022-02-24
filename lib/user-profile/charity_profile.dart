
import 'package:flutter/material.dart';

import '../models/charity_entity.dart';

Widget buildAboutCharity(Charity charity) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "About this charity",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black87),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 25),
        Text("Location : " +
            charity.address,
          style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.black87, height: 0.8),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 25),
        Text(
          charity.description,
          style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.black87, height: 0.8),
        ),
        const SizedBox(height: 25),
        Text(
          charity.ongoingEvent,
          style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.black87, height: 0.8),
        ),
      ],
    )
);