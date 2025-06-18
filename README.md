# Auvent Flutter Internship Assessment App

This is a Flutter-based mobile application developed as part of the Auvent internship assessment. The app integrates Firebase for backend operations, uses the BLoC pattern for state management, and implements modern UI practices for a smooth and responsive user experience.

---

## 📦 Project Setup & Installation Guide

### 🔧 Prerequisites

- Flutter SDK (3.10+ recommended)  
- Dart SDK  
- Android Studio / VSCode / any preferred IDE  
- Firebase project setup (with Firestore & Authentication)  

### 📥 Installation Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/abdo2121nasser/AUVNET-Flutter-Internship-Assessment.git
   cd auvent_flutter_internship_assessment
   
2. **Install dependencies**
   ```bash
   flutter pub get
   
3. **run app**
   ```bash
   flutter run

### 🏗 Architectural Overview

project_root/
<br>│
<br>├── assets/                     
<br>│   ├── fonts/                  # Custom fonts, each inside its own folder
<br>│   │   ├── dm dans/
<br>│   │   ├── rubik/
<br>│   │   └── mulish/
<br>│   │   └── poppin/
<br>│   └── images/                 # Static image assets used across the app
<br>│
<br>├── lib/
<br>│   ├── configuration/          
<br>│   │   └── routes.dart         # App routing logic using GoRouter
<br>│
<br>│   ├── core/                   
<br>│   │   ├── services/           # Shared services across app (e.g., service locator, firebase failure service, Hive failure services, etc.)
<br>│   │   └── utils/              
<br>│   │       ├── colors/         # Color definitions and color manager
<br>│   │       ├── components/     # Shared UI widgets (buttons, etc.)
<br>│   │       ├── constants/      # Constant values (keys, strings, etc.)
<br>│   │       ├── enums/          # Enum definitions
<br>│   │       ├── text_styles/    # Custom text style definitions
<br>│   │       ├── themes/         # Theme configurations (light)
<br>│   │       ├── usecases/       # Base usecase definitions or abstract classes
<br>│   │       └── values/         # Static spacing, padding, and sizing values
<br>│
<br>│   ├── root/
<br>│   │   └── app_root.dart       # Root of the app: wraps MaterialApp and sets up app-wide configs
<br>│
<br>│   ├── features/
<br>│   │   ├── authentication_feature/
<br>│   │   │   ├── data_layer/
<br>│   │   │   │   ├── data_sources/
<br>│   │   │   │   │   ├── local/
<br>│   │   │   │   │   └── remote/
<br>│   │   │   │   ├── models/
<br>│   │   │   │   └── repository/
<br>│   │   │   ├── domain_layer/
<br>│   │   │   │   ├── entities/
<br>│   │   │   │   ├── usecases/
<br>│   │   │   │   └── repository/
<br>│   │   │   └── presentation_layer/
<br>│   │   │       ├── controllers/
<br>│   │   │       ├── screens/
<br>│   │   │       └── widgets/
<br>│   │
<br>│   │   ├── home_feature/
<br>│   │   │   ├── data_layer/
<br>│   │   │   │   ├── data_sources/
<br>│   │   │   │   │   └── remote/
<br>│   │   │   │   ├── models/
<br>│   │   │   │   └── repository/
<br>│   │   │   ├── domain_layer/
<br>│   │   │   │   ├── entities/
<br>│   │   │   │   ├── usecases/
<br>│   │   │   │   └── repository/
<br>│   │   │   └── presentation_layer/
<br>│   │   │       ├── controllers/
<br>│   │   │       ├── screens/
<br>│   │   │       └── widgets/
<br>│   │
<br>│   │   ├── splash_feature/
<br>│   │   │   └── presentation_layer/
<br>│   │   │       └── screens/
<br>│   │   │           └── splash_screen.dart
<br>│   │
<br>│   │   ├── welcome_feature/
<br>│   │   │   └── presentation_layer/
<br>│   │   │       ├── controllers/
<br>│   │   │       ├── screens/
<br>│   │   │       │   └── welcome_screen.dart
<br>│   │   │       └── widgets/
<br>│   │
<br>│   │   └── main_shell_feature/
<br>│   │       └── presentation_layer/
<br>│   │   │       ├── controllers/
<br>│   │           ├── screens/
<br>│   │           │   └── main_shell_screen.dart
<br>│   │           └── widgets/
<br>│   │               └── bottom_nav_bar.dart
<br>│
<br>│   └── main.dart               # App entry point



