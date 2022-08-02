import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/LoginSignup.png'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: Column(
              children: [
                SizedBox(height: 120),
                Text(
                  "Registracija",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                SizedBox(height: 12),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.white.withOpacity(0.2),
                    hintText: "Unesite korisnicko ime",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      decoration: TextDecoration.none),
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.white.withOpacity(0.2),
                    hintText: "Unesite lozinku",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      decoration: TextDecoration.none),
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.white.withOpacity(0.2),
                    hintText: "Unesite lozinku",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      decoration: TextDecoration.none),
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: TextButton(
                    onPressed: (() => {}),
                    style: TextButton.styleFrom(
                      primary: Colors.grey,
                      backgroundColor: Colors.white,
                    ),
                    child: Text(
                      'Registracija',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    "Već imate račun ?",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                SizedBox(height: 70),
                Image(
                  image: AssetImage('assets/Logo2.png'),
                ),
                Text(
                  "Razvoj softvera 2 - FIT Mostar\n Semirnarski rad - Emir Ibrisimovic\n2022",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.8), fontSize: 12),
                )
              ],
            ),
          ),
        ));
  }
}
