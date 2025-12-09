# 🛒 Flutter Ecommerce App  
A modern ecommerce mobile application built with **Flutter** & **GetX**, featuring a clean UI, theme switching, cart system, product details, and responsive layouts.

This project supports both **mobile (Android/iOS)** and **Web (Chrome)** with optional **Device Preview** support.

---

## 🚀 Features

### ✅ Core Features
- Product listing (GridView)
- Product detail page
- Cart system (quantity & total price calculation)
- Category filtering
- Wishlist / favorite toggle
- Fully responsive UI components
- Smooth scrolling and adaptive layouts

---

## 🎨 Theme Management
- Light Mode  
- Dark Mode  
- System Theme auto-detection  
- Real-time switching using **GetX ThemeController**  
- Automatically responds to device theme changes  

---

## 📱 Running the App

You can run this app in **two modes** depending on your environment.

---

### 1️⃣ Run on Mobile / Emulator (Normal Mode)

No extra setup needed. Simply run:

```sh
flutter run
```

---

###  2️⃣ Run on Chrome (Web) with Device Preview

To enable DevicePreview, uncomment this inside main.dart:
```
// runApp(DevicePreview(enabled: !kReleaseMode, builder: (_) => MainApp()));
// useInheritedMediaQuery: true,
// locale: DevicePreview.locale(context),
// builder: DevicePreview.appBuilder,
```

Then comment out the normal runApp:
```
// runApp(MainApp());
```

DevicePreview allows testing different screen sizes directly in the browser.

---

### 🧠 Architecture
The project follows GetX State Management & clean folder structure:
```
lib/
 └── app/
      ├── data/
      ├── modules/
      ├── routes/
      ├── themes/
      ├── widgets/
      └── main.dart
```

---

### 🧪 Screenshots
<img width=40% height=40% alt="image" src="https://github.com/user-attachments/assets/62d23a83-7ef8-452c-b9ae-382021dca7b7" />
<img width=40% height=40% alt="image" src="https://github.com/user-attachments/assets/eb6b87ed-44e8-48cc-b4e4-1e309c43a371" />
<img width=40% height=40% alt="image" src="https://github.com/user-attachments/assets/f59d4f35-0730-48d1-8f02-f8b3d8678b38" />
<img width=40% height=40% alt="image" src="https://github.com/user-attachments/assets/20f10325-f6ef-4310-9503-38a37165cd46" />
<img width=40% height=40% alt="image" src="https://github.com/user-attachments/assets/b99c696d-c8ce-43e8-b929-89bb544880e9" />
<img width=40% height=40% alt="image" src="https://github.com/user-attachments/assets/0b9acf7f-e236-4088-8bfd-4fce2a96e392" />
<img width=40% height=40% alt="image" src="https://github.com/user-attachments/assets/306b008a-7858-4c7b-915b-57c9bdc57137" />
<img width=40% height=40% alt="image" src="https://github.com/user-attachments/assets/9abf0c5e-6899-46cc-8ec9-179943d15a16" />



---

### 📦 Dependencies
- Flutter SDK
- GetX
- Device Preview (optional)
- Google Fonts
- FontAwesome Icons
- Any assets in /assets
