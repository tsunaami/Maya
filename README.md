# Maya 
**Your Personal Safety & Pregnancy Companion App for Women in Bangladesh**  

[![Flutter](https://img.shields.io/badge/Flutter-3.24-blue?logo=flutter&style=flat-square)](https://flutter.dev)
[![Firebase](https://img.shields.io/badge/Firebase-Enabled-orange?logo=firebase&style=flat-square)](https://firebase.google.com)
[![Made in Bangladesh](https://img.shields.io/badge/Made%20in-Bangladesh-green?style=flat-square)](#)
> **"Maya"** – A women-first safety app with **anonymous crime reporting**, **shake-to-SOS**, **emergency hotline**, **self-defense tutorials**, **pregnancy guide**, and **mental health support** – all in one beautiful, time-based themed Flutter app.
## Features

| Feature | Description |
|-------|-----------|
| **Dual Mode System** | Normal Mode for all women → Mother Mode for pregnant users |
| **Time-Based Themes** | Morning (Amber), Afternoon (Orange), Evening (Deep Purple) – changes automatically |
| **Shake-to-SOS** | Shake phone → Instant SOS activation (using `sensors_plus`) |
| **Anonymous Crime Reporting** | Report crimes without revealing identity – stored in Firestore |
| **Live Report Viewer** | Admins/users can view recent anonymous reports |
| **Emergency Hotlines** | One-tap call to 999, 102, 112 (`url_launcher`) |
| **Self-Defense Tutorials** | Video guides + book local instructors (Namira & Joya featured!) |
| **Pregnancy Guide** | Month-by-month diet, exercise & health tips |
| **Safety Tips** | 50+ categorized tips (Personal, Digital, Travel, Home, Women-specific) |
| **Firebase Auth + Firestore** | Secure login, anonymous reporting, real-time data |
| **Beautiful UI** | Pink-themed, modern cards, smooth animations, Bangla-ready |
## Installation & Setup
1. Clone the repo: (https://github.com/tsunaami/Maya)
2. Get Flutter packages
bashflutter pub get
3. Setup Firebase

Go to console.firebase.google.com
Create a new project (or use existing)
Add Android/iOS app
Download:
google-services.json → place in android/app/
GoogleService-Info.plist → place in ios/Runner/

Replace lib/firebase_options.dart with your config

4. Run the app
bashflutter run

## Project Structure
lib/
├── main.dart                  → App entry + Firebase init
├── LoginPage.dart             → Beautiful pink login
├── CreateAccountPage.dart     → Signup with validation
├── GlobalFeaturesPage.dart    → Main dashboard + shake SOS
├── AnonymousCrimeReportPage.dart → Anonymous reporting
├── ReportListPage.dart        → Live reports feed
├── EmergencyCallPage.dart     → 999, 112, etc.
├── SafetyTipsScreen.dart      → 50+ safety tips
├── SelfDefenseTutorialScreen.dart → Videos + instructors
├── PregnancyGuideScreen.dart  → Monthly diet & care
├── MotherModeFeaturesPage.dart → Mother mode UI
├── auth_services.dart         → Custom AuthService (mock + Firebase-ready)
├── firebase_options.dart      → Auto-generated
└── splash_screen.dart         → Animated logo splash

## Future Ideas

- Live location sharing in SOS
- Trusted contacts auto-alert
- Fake call feature (escape unsafe situations)
- Offline safety tips
- Community forum for women
- AI-powered threat detection
- Mental health chatbot
## Developers
### Built with love by Bangladeshi women, for Bangladeshi women
- Farhana Mojumder Namira
- Rubida Zakir Joya
- Anika Ashraf
- And you? Join us!
