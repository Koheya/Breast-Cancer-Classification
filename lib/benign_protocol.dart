import 'package:flutter/material.dart';

class Benign extends StatelessWidget {
  const Benign({super.key});
  static String id = 'Benign';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Benign Protocol',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://img.freepik.com/premium-vector/pink-ribbon-breast-cancer-awareness-symbol_97886-2863.jpg?w=740'),
            // image: AssetImage('images/background.jpg'),
            opacity: 1,
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                Text(
                  'How is benign breast disease managed or treated ?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Most types of benign breast disease dont require treatment. Your healthcare provider may recommend treatment if you have atypical hyperplasia or a different kind of benign breast disease that increases your future risk of breast cancer. If you experience pain or discomfort or have an increased cancer risk, these treatments can help:"
                  "Fine needle aspiration to drain fluid-filled cysts."
                  "Surgery to remove lumps (lumpectomy)."
                  "Oral antibiotics for infections like mastitis.",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'How can I prevent benign breast disease ?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "There isnt much you can do to lower your risk of benign breast disease. These actions may lower cancer risk and help detect disease early when it’s most treatable:"
                  "Get regular mammogram screenings."
                  "Perform self-exams to get familiar with how your breasts look and feel."
                  "Maintain a healthy weight."
                  "Exercise regularly."
                  "Eat a nutritious diet."
                  "Drink alcohol in moderation or not at all."
                  "Quit smoking."
                  "Reconsider the use of hormone replacement therapy."
                  "Switch to a non-hormonal birth control option.",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
