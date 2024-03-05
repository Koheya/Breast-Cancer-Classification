// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class About extends StatelessWidget {
   About({Key? key}) : super(key: key);
static String id = 'About';
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        // color: Color(0xFFF7CCD6),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                    'What is breast Cancer ?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black
                ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Breast cancer is a type of cancer that develops in the breast tissue. It is one of the most common types of cancer among women, although men can also develop breast cancer.\n'
                      'Breast cancer can begin in different parts of the breast, such as the ducts that carry milk to the nipple or the glands that produce milk. It can also spread to other parts of the body, such as the lymph nodes, bones, liver, or lungs.',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,

                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  'Types of Breast Cancer ?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "The type of breast cancer is determined by the characteristics of the cancer cells, "
                      "such as how they look under a microscope and whether they have specific receptors or proteins."
                      "The type of breast cancer can affect the treatment plan and prognosis.\n\n"
                      "1. Ductal Carcinoma In Situ (DCIS): This is a non-invasive type of breast cancer that starts in the milk ducts and has not spread to the surrounding breast tissue.\n\n"
                      "2. Invasive Ductal Carcinoma (IDC): This is the most common type of breast cancer, which starts in the milk ducts and invades the surrounding breast tissue.\n\n"
                      "3. Invasive Lobular Carcinoma (ILC): This type of breast cancer starts in the milk-producing glands (lobules) and can spread to other parts of the breast and beyond.\n\n"
                      "4. Inflammatory Breast Cancer (IBC): This is a rare but aggressive type of breast cancer that causes the breast to become red, swollen, and warm.\n\n"
                      "5. Triple-Negative Breast Cancer: This type of breast cancer is negative for three specific receptors (estrogen, progesterone, and HER2) and can be more difficult to treat.\n\n"
                      "6. HER2-Positive Breast Cancer: This type of breast cancer has too much of the HER2 protein, which promotes the growth of cancer cells, and can be treated with targeted therapy.\n\n"
                      "7. Male Breast Cancer: Although rare, men can develop breast cancer, and it is usually invasive ductal carcinoma.\n\n",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,

                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  'Treatments of Breast Cancer ?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "There are several treatments for breast cancer, and the choice of treatment depends on the type and stage of the cancer, as well as the person's overall health and preferences. The most common treatments for breast cancer include: \n\n"
                      "1. Surgery: This involves removing the tumor and surrounding breast tissue, either through a lumpectomy (removing only the tumor and a small margin of healthy tissue) or a mastectomy (removing the entire breast).\n\n"
                      "2. Radiation therapy: This uses high-energy radiation to kill cancer cells and shrink tumors. It can be given after surgery to kill any remaining cancer cells.\n\n"
                      "3. Chemotherapy: This uses drugs to kill cancer cells throughout the body. It is usually given after surgery to reduce the risk of cancer coming back, or before surgery to shrink the tumor.\n\n"
                      "4. Hormone therapy: This is used for hormone receptor-positive breast cancer and involves blocking the hormones that promote the growth of cancer cells.\n\n"
                      "5. Targeted therapy: This is used for HER2-positive breast cancer and involves drugs that specifically target the HER2 protein, which promotes the growth of cancer cells.\n\n"
                      "6. Immunotherapy: This uses the body's immune system to fight cancer cells and is used for certain types of breast cancer.\n"
                  ,style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,

                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  'How to Avoid Breast Cancer ?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                 "While there is no guaranteed way to completely prevent breast cancer, there are several lifestyle changes that can help reduce the risk of developing the disease. Here are some strategies to consider:\n\n"
                     "1. Maintaining a healthy weight: Being overweight or obese can increase the risk of breast cancer, especially after menopause.\n\n"
                     "2. Regular exercise: Physical activity can help reduce the risk of breast cancer, so aim for at least 30 minutes of moderate exercise on most days of the week.\n\n"
                     "3. Limiting alcohol consumption: Drinking alcohol increases the risk of breast cancer, so limit consumption to no more than one drink per day.\n\n"
                     "4. Quitting smoking: Smoking is associated with a higher risk of breast cancer, so quitting smoking can reduce the risk.\n\n"
                     "5. Breastfeeding: Breastfeeding for at least six months can help reduce the risk of breast cancer.\n\n"
                     "6. Regular screening: Early detection is important for the best outcomes, so women should discuss with their healthcare providers about when to start regular mammograms and other screening tests.\n\n"
                     "7. Knowing your family history: Women with a family history of breast cancer or certain genetic mutations may be at a higher risk and may benefit from genetic counseling and testing.\n\n",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,


                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    ));
  }
}
