import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double boxWidth = MediaQuery.of(context).size.width * 0.9;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 224, 224),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 24),

                // Main light-blue panel
                Container(
                  width: boxWidth,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 151, 205, 239),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Top tabs A B C
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _coloredTab('A', Color(0xFFEF5350)),
                          _coloredTab('B', Color(0xFFFFA726)),
                          _coloredTab('C', Color(0xFFFFEB3B)),
                        ],
                      ),

                      SizedBox(height: 18),

                      // Fancy section
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: Color(0xFFD6CFEA),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Fancy Section//oday',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF2E3A87),
                              ),
                            ),
                            SizedBox(height: 18),

                            // 3 x 2 grid of squares
                            SizedBox(
                              height: 180,
                              child: GridView.count(
                                physics: NeverScrollableScrollPhysics(),
                                crossAxisCount: 3,
                                crossAxisSpacing: 14,
                                mainAxisSpacing: 14,
                                children: List.generate(6, (i) {
                                  return _fancySquare((i + 1).toString(), i);
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20),

                      // Info Cards title
                      Text(
                        'Info Cards',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF2E3A87),
                        ),
                      ),

                      SizedBox(height: 18),

                      // Info cards row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: _infoCard(
                              '23',
                              'Active',
                              Color.fromARGB(255, 64, 119, 103),
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: _infoCard(
                              '15',
                              'Pending',
                              Color(0xFFFBBC05),
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: _infoCard(
                              '7',
                              'Completed',
                              Color(0xFF2E7D32),
                            ),
                          ),
                          SizedBox(width: 14),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _coloredTab(String label, Color color) {
    return Container(
      width: 86,
      height: 46,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Widget _fancySquare(String label, int index) {
    // create a variety of purple-ish gradients
    final gradients = [
      [Color(0xFF6A1B9A), Color(0xFF8E24AA)],
      [Color(0xFF9C27B0), Color(0xFF7B1FA2)],
      [Color(0xFF7E57C2), Color(0xFF9575CD)],
      [Color(0xFFAB47BC), Color(0xFF8E24AA)],
      [Color(0xFFB39DDB), Color(0xFF9575CD)],
      [Color(0xFFE1BEE7), Color(0xFFCE93D8)],
    ];

    final g = gradients[index % gradients.length];

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: g,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _infoCard(String number, String label, Color numberColor) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              number,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: numberColor,
              ),
            ),
            SizedBox(height: 6),
            Text(
              label,
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
