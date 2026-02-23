# 🎯 Flutter Login Animation with Rive

Application developed in **Flutter (Dart)** that implements an animated login screen using **Rive** to integrate interactive animations and enhance the user experience.

---

## 📱 Project Description

This project consists of a modern and interactive login interface where a **Rive** animation dynamically responds to user actions.

The animation changes state depending on user interaction with the text fields (for example: when the user types the email, enters the password, or triggers validation).

The main purpose of this project was to understand how to integrate advanced animations in Flutter and connect them with application logic.

---

## 🎥 Project Demo

<img src="gif_proyecto.gif" width="600">

---

## 🖼️ Screenshots

![Main Screen](Principal.png)

![Email Interaction](Correo.png)

![Password Interaction](Password.png)

---

## 🛠️ Technologies Used

- 💙 Flutter  
- 🎯 Dart  
- 🎨 Rive  
- 📱 Material Design  

---

## 📦 Main Dependencies

```
yaml
dependencies:
  flutter:
    sdk: flutter
  rive: ^0.x.x
```

---

## 📁 Project Structure

```
📂 login_with_rive_animation_5sa_26_1/
 ├── lib/
 │   ├── main.dart
 │   ├── login_screen.dart
 │
 ├── assets/
 │   ├── animations/
 │       ├── animation_file.riv
 │
 ├── pubspec.yaml
 ├── README.md
```

---

## 🚀 Installation and Execution

### 1️⃣ Clone the repository

```
bash
git clone https://github.com/JAro05x/login_with_rive_animation_5sa_26_1.git
```

### 2️⃣ Enter the project directory

```
bash
cd login_with_rive_animation_5sa_26_1
```

### 3️⃣ Install dependencies

```
bash
flutter pub get
```

### 4️⃣ Run the application

```
bash
flutter run
```

---

## 🎨 Rive Implementation

The animation is loaded from assets using:

```
dart
RiveAnimation.asset(
  'assets/animations/archivo_animacion.riv',
  fit: BoxFit.cover,
)
```

A `StateMachineController` is used to manipulate animation states depending on user interaction.

General controller example:

```
dart
StateMachineController.fromArtboard(
  artboard,
  'State Machine Name',
);
```

### This allows:

- Triggering animations when the user interacts with the fields.
- Changing boolean states inside the state machine.
- Triggering animation events.
- Controlling visual logic directly from Dart code.

---

## 🧠 General Functionality

- The application starts from `main.dart`.
- The login screen is loaded.
- The Rive animation is initialized.
- The state machine controller is connected.
- The animation dynamically responds to user interaction.

---

## 🎯 Project Objectives

- Integrate interactive animations with Rive in Flutter.
- Connect application logic with visual states.
- Design an attractive and modern interface.
- Practice Flutter project structure and organization.

---

## 🧠 Key Learnings

- How to import and configure `.riv` files.
- How to work with `StateMachineController`.
- How to connect Rive inputs and triggers with Flutter events.
- Project file organization in Flutter.
- Asset and dependency management.

---

## 🔮 Future Improvements

- Implement real validation connected to a backend.
- Add navigation to a main screen after login.
- Make the interface responsive for different screen sizes.
- Add additional animations for error or success states.
- Optimize architecture using patterns such as Provider or Bloc.

---

## 📚 Project Information

- **Course:** Graficación  
- **Instructor:** RODRIGO FIDEL GAXIOLA SOSA  
- **Rive Animation Credits:** https://rive.app/marketplace/3645-7621-remix-of-login-machine/  
- **Student:** José Antonio Rosado Osorio  

---
