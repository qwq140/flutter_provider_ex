import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/proxy_provider/screen/chgnotiprov_chgnotiproxyprov.dart';
import 'package:flutter_provider_ex/proxy_provider/screen/proxyprov_create_update.dart';
import 'package:flutter_provider_ex/proxy_provider/screen/proxyprov_update.dart';
import 'package:flutter_provider_ex/proxy_provider/screen/why_proxy_prov.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            shrinkWrap: true,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const WhyProxyProv(),));
                },
                child: const Text(
                  'Why\nProxyProvider',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const ProxyProvUpdate(),));
                },
                child: const Text(
                  'ProxyProvider Update',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const ProxyProvCreateUpdate(),));
                },
                child: const Text(
                  'ProxyProvider Create Update',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const ProxyProvCreateUpdate(),));
                },
                child: const Text(
                  'ProxyProvider ProxyProvider',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const ChgNotiProvChgNotiProxyProv(),));
                },
                child: const Text(
                  'ChgNotiProv ChgNotiProxyProv',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const ChgNotiProvChgNotiProxyProv(),));
                },
                child: const Text(
                  'ChgNotiProv ProxyProv',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
