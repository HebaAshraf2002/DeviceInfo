import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfoPage extends StatefulWidget {
  const DeviceInfoPage({super.key});

  @override
  State<DeviceInfoPage> createState() => _DeviceInfoPageState();
}

class _DeviceInfoPageState extends State<DeviceInfoPage> {
  String deviceInfo = 'Loading...';
  @override
  void initState() {
    super.initState();
    _getDeviceInfo();
  }

  _getDeviceInfo() async {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    String model = '';
    String osVersion = '';
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
      model = iosInfo.utsname.machine!;
      osVersion = iosInfo.systemVersion;
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      model = androidInfo.model!;
      osVersion = androidInfo.version.release;
    }
    setState(() {
      deviceInfo = 'Model: $model\nOS Version: $osVersion';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device Info'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(deviceInfo),
      ),
    );
  }
}
