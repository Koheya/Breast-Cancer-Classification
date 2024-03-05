// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Malignant extends StatelessWidget {
  const Malignant({super.key});
  static String id = 'Malignant';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Malignant Protocol',
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                Text(
                  'What type of drug treatment(s) might I get ?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Most women with breast cancer in stages I, II, or III will get some kind of systemic therapy as part of their treatment. This might include:"
                  "Chemotherapy"
                  "Hormone therapy (tamoxifen, an aromatase inhibitor, or one followed by the other)"
                  "Targeted drugs, such as trastuzumab (Herceptin), pertuzumab (Perjeta), or abemaciclib (Verzenio)"
                  "Immunotherapy"
                  "Some combination of these"
                  "The types of drugs that might work best depend on the tumor’s hormone receptor status, HER2 status, and other factors.",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Treating stage I breast cancer',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Most women with breast cancer in stages I, II, or III will get some kind of systemic therapy as part of their treatment. This might include:"
                  "Chemotherapy"
                  "Hormone therapy (tamoxifen, an aromatase inhibitor, or one followed by the other)"
                  "Targeted drugs, such as trastuzumab (Herceptin), pertuzumab (Perjeta), or abemaciclib (Verzenio)"
                  "Immunotherapy"
                  "Some combination of these"
                  "The types of drugs that might work best depend on the tumor’s hormone receptor status, HER2 status, and other factors.",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Treating stage II breast cancer',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Local therapy (surgery and radiation therapy)"
                  "Stage II cancers are treated with either breast-conserving surgery (BCS; sometimes called lumpectomy or partial mastectomy) or mastectomy. The nearby lymph nodes will also be checked, either with a sentinel lymph node biopsy (SLNB) or an axillary lymph node dissection (ALND)."
                  "Women who have BCS are treated with radiation therapy after surgery. Women who have a mastectomy are typically treated with radiation if the cancer is found in the lymph nodes. Some patients who have a SLNB that shows cancer in a few lymph nodes might not have the rest of their lymph nodes removed to check for more cancer. In these patients, radiation may be discussed as a treatment option after mastectomy."
                  "Systemic therapy (chemo and other drugs)"
                  "Chemotherapy: Chemo can be given before and/or after surgery."
                  "HER2 targeted drugs: Some women with HER2-positive cancers will be treated with adjuvant (after surgery) chemotherapy with trastuzumab with or without pertuzumab for up to 1 year. Many women with HER2-positive cancers will be treated first with trastuzumab (with or without pertuzumab) followed by surgery and then more trastuzumab (with or without pertuzumab) for up to a year. If after neoadjuvant therapy, residual cancer is found at the time of surgery, the targeted drug, ado-trastuzumab emtansine, may be used instead of trastuzumab. It is given every 3 weeks for 14 doses.",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Treating stage III breast cancer',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Starting with neoadjuvant therapy"
                  "Most often, these cancers are treated with neoadjuvant (before surgery) chemotherapy. For HER2-positive tumors, the targeted drug trastuzumab is given as well, often along with pertuzumab (Perjeta). This may shrink the tumor enough for a woman to have breast-conserving surgery (BCS). If the tumor doesn’t shrink enough, a mastectomy is done. Nearby lymph nodes will also need to be checked. A sentinel lymph node biopsy (SLNB) is often not an option for stage III cancers, so an axillary lymph node dissection (ALND) is usually done."
                  "Starting with surgery"
                  "Surgery first is an option for some women with stage III cancers. Because these tumors are fairly large and/or have grown into nearby tissues, this usually means getting a mastectomy. For women with fairly large breasts, BCS may be an option if the cancer hasn’t grown into nearby tissues. SLNB may be an option for some patients, but most will need an ALND. Surgery is usually followed by adjuvant chemotherapy, and/or hormone therapy, and/or targeted drug therapy, and/or HER2-positive treatment (trastuzumab, pertuzumab, or neratinib) depending on the traits of the cancer cells. Radiation is recommended after surgery."
                  "How is benign breast disease managed or treated?"
                  "Most types of benign breast disease don’t require treatment. Your healthcare provider may recommend treatment if you have atypical hyperplasia or a different kind of benign breast disease that increases your future risk of breast cancer. If you experience pain or discomfort or have an increased cancer risk, these treatments can help:"
                  "Fine needle aspiration to drain fluid-filled cysts."
                  "Surgery to remove lumps (lumpectomy)."
                  "Oral antibiotics for infections like mastitis.",
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
