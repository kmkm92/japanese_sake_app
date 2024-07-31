import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account'),
            onTap: () {
              // アカウント設定画面へのナビゲーション
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountSettingScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () {
              // 通知設定画面へのナビゲーション
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NotificationSettingScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy'),
            onTap: () {
              // プライバシー設定画面へのナビゲーション
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacySettingScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class AccountSettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Settings'),
      ),
      body: Center(
        child: Text('Account settings go here'),
      ),
    );
  }
}

class NotificationSettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Settings'),
      ),
      body: Center(
        child: Text('Notification settings go here'),
      ),
    );
  }
}

class PrivacySettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Settings'),
      ),
      body: Center(
        child: Text('Privacy settings go here'),
      ),
    );
  }
}
