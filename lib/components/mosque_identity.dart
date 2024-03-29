import 'package:flutter/material.dart';

class MosqueIdentity extends StatelessWidget {
  final String mosqueName;
  final String mosqueLocation;
  final String mosquePhone;

  MosqueIdentity({
    super.key,
    required this.mosqueName,
    required this.mosqueLocation,
    required this.mosquePhone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Masjid $mosqueName",
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              const Text(
                "Edit",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.location_on_outlined),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Masjid $mosqueLocation",
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.phone),
              const SizedBox(width: 10),
              Text(
                mosquePhone,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
