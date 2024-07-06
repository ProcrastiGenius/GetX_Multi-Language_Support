import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_language_support/translations/locale_constant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> locales = [
    {'name': 'English', 'locale': const Locale('en', 'US')},
    {'name': 'हिन्दी', 'locale': const Locale('hi', 'IN')},
    {'name': 'বাংলা', 'locale': const Locale('bn', 'BD')},
  ];

  showLocaleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('chooseLanguage'.tr),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text('${locales[index]['name']}'),
              ),
              onTap: () => updateLocale(
                locales[index]['locale'] as Locale,
                context,
              ),
            ),
            separatorBuilder: (context, index) => const Divider(
              color: Colors.black,
            ),
            itemCount: locales.length,
          ),
        ),
      ),
    );
  }

  updateLocale(Locale locale, BuildContext context) {
    Navigator.of(context).pop();

    // Use default values if languageCode or countryCode are null
    final languageCode = locale.languageCode;
    final countryCode = locale.countryCode ?? 'US';

    setLocale(languageCode, countryCode);
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("appTitle".tr)),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              Text(
                'title'.tr,
                style: const TextStyle(fontSize: 36, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Text(
                'subtitle'.tr,
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(height: 24),
              TextButton(
                child: Text(
                  'button1'.tr,
                  style:
                      const TextStyle(fontSize: 18, color: Colors.amberAccent),
                ),
                onPressed: () => {showLocaleDialog(context)},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
