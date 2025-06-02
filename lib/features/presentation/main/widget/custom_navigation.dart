import 'package:flutter/material.dart';

class AnimatedBottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const AnimatedBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  State<AnimatedBottomNavBar> createState() => _AnimatedBottomNavBarState();
}

class _AnimatedBottomNavBarState extends State<AnimatedBottomNavBar>
    with SingleTickerProviderStateMixin {
  final List<IconData> icons = [
    Icons.home,
    Icons.search,
    Icons.favorite,
    Icons.person,
  ];
  final List<String> titles = ['Home', 'Search', 'Upload', 'Profile'];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sectionWidth = width / icons.length;
    final itemWidth = 100.0;
    final dipHeight = 58.0;
    final dipRadius = 40.0;

    return SizedBox(
      height: 100,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 80,
            child: CustomPaint(
              painter: ConcavePainterSoftInOut(
                centerX: sectionWidth * widget.selectedIndex + sectionWidth / 2,
                dipWidth: itemWidth + 20,
                dipHeight: dipHeight,
                dipRadius: dipRadius,
              ),
            ),
          ),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            bottom: 30,
            left:
                sectionWidth * widget.selectedIndex +
                sectionWidth / 2 -
                itemWidth / 2,
            width: itemWidth,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icons[widget.selectedIndex],
                      color: Colors.blue,
                      size: 24,
                    ),
                    const SizedBox(width: 6),
                    Flexible(
                      child: Text(
                        titles[widget.selectedIndex],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 35,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
                  icons.asMap().entries.map((entry) {
                    int idx = entry.key;
                    IconData icon = entry.value;
                    bool selected = idx == widget.selectedIndex;
                    return GestureDetector(
                      onTap: () => widget.onItemSelected(idx),
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: selected ? 0.0 : 1.0,
                        child: Icon(icon, color: Colors.grey, size: 26),
                      ),
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class ConcavePainterSoftInOut extends CustomPainter {
  final double centerX;
  final double dipWidth;
  final double dipHeight;
  final double dipRadius;
  final double softCurveHeight;

  ConcavePainterSoftInOut({
    required this.centerX,
    required this.dipWidth,
    required this.dipHeight,
    required this.dipRadius,
    this.softCurveHeight = 10.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill;

    final path = Path();

    final left = centerX - dipWidth / 2;
    final right = centerX + dipWidth / 2;

    path.moveTo(0, 0);

    path.lineTo(left - softCurveHeight, 0);
    path.quadraticBezierTo(
      left - softCurveHeight / 2,
      softCurveHeight / 2,
      left,
      softCurveHeight,
    );

    path.lineTo(left, dipHeight - dipRadius);
    path.quadraticBezierTo(left, dipHeight, left + dipRadius, dipHeight);
    path.lineTo(right - dipRadius, dipHeight);
    path.quadraticBezierTo(right, dipHeight, right, dipHeight - dipRadius);

    path.lineTo(left, dipHeight - dipRadius);
    path.quadraticBezierTo(left, dipHeight, left + dipRadius, dipHeight);

    path.lineTo(right - dipRadius, dipHeight);
    path.quadraticBezierTo(right, dipHeight, right, dipHeight - dipRadius);

    path.lineTo(right, softCurveHeight);
    path.quadraticBezierTo(
      right + softCurveHeight / 2,
      softCurveHeight / 2,
      right + softCurveHeight,
      0,
    );

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.black.withOpacity(0.15), 8, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant ConcavePainterSoftInOut oldDelegate) {
    return oldDelegate.centerX != centerX ||
        oldDelegate.dipWidth != dipWidth ||
        oldDelegate.dipHeight != dipHeight ||
        oldDelegate.dipRadius != dipRadius ||
        oldDelegate.softCurveHeight != softCurveHeight;
  }
}

class ConcavePainterCurvedEntry extends CustomPainter {
  final double centerX;
  final double dipWidth;
  final double dipHeight;
  final double dipRadius;
  final double curveEntryControlPointY; // Mới: Để kiểm soát độ cong ban đầu

  ConcavePainterCurvedEntry({
    required this.centerX,
    required this.dipWidth,
    required this.dipHeight,
    required this.dipRadius,
    this.curveEntryControlPointY =
        0.0, // Giá trị mặc định là 0, có thể điều chỉnh
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill;

    final path = Path();

    final left = centerX - dipWidth / 2;
    final right = centerX + dipWidth / 2;

    path.moveTo(0, 0); // Bắt đầu từ góc trên cùng bên trái

    // >>> THAY ĐỔI Ở ĐÂY: Sử dụng quadraticBezierTo thay vì lineTo
    // Đường cong từ (0,0) đi xuống cạnh trái của vết lõm
    path.quadraticBezierTo(
      left / 2,
      curveEntryControlPointY, // Điểm điều khiển: Ảnh hưởng đến độ cong của đường vào
      left,
      0, // Điểm kết thúc: Nằm trên trục Y=0 tại vị trí 'left'
    );
    // <<< KẾT THÚC THAY ĐỔI

    path.lineTo(
      left,
      dipHeight - dipRadius,
    ); // Tiếp tục vẽ đường thẳng đứng xuống
    path.quadraticBezierTo(
      left,
      dipHeight,
      left + dipRadius,
      dipHeight,
    ); // Bo góc dưới trái
    path.lineTo(right - dipRadius, dipHeight); // Đường ngang đáy
    path.quadraticBezierTo(
      right,
      dipHeight,
      right,
      dipHeight - dipRadius,
    ); // Bo góc dưới phải
    path.lineTo(right, 0); // Đường thẳng đứng lên

    // >>> THAY ĐỔI TƯƠNG TỰ Ở ĐÂY cho phía bên phải
    // Đường cong từ cạnh phải của vết lõm đến góc trên bên phải của widget
    // Chúng ta giả định rằng điểm (right, 0) là điểm bắt đầu của đường cong này.
    // Nếu bạn muốn đường cong đối xứng với bên trái, bạn có thể cần điều chỉnh điểm điều khiển và điểm kết thúc.
    // Để giữ đơn giản và đối xứng với bên trái, chúng ta sẽ làm thế này:
    path.quadraticBezierTo(
      right + (size.width - right) / 2,
      curveEntryControlPointY, // Điểm điều khiển
      size.width,
      0, // Điểm kết thúc là góc trên bên phải
    );
    // <<< KẾT THÚC THAY ĐỔI

    // Các đường còn lại để đóng hình dạng
    // path.lineTo(size.width, 0); // Dòng này bị loại bỏ vì đã được xử lý bởi quadraticBezierTo trên
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.black.withOpacity(0.15), 8, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant ConcavePainterCurvedEntry oldDelegate) {
    return oldDelegate.centerX != centerX ||
        oldDelegate.dipWidth != dipWidth ||
        oldDelegate.dipHeight != dipHeight ||
        oldDelegate.dipRadius != dipRadius ||
        oldDelegate.curveEntryControlPointY !=
            curveEntryControlPointY; // Thêm điều kiện cho thuộc tính mới
  }
}

class ConcavePainter extends CustomPainter {
  final double centerX;
  final double dipWidth;
  final double dipHeight;
  final double dipRadius;

  ConcavePainter({
    required this.centerX,
    required this.dipWidth,
    required this.dipHeight,
    required this.dipRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill;

    final path = Path();

    final left = centerX - dipWidth / 2;
    final right = centerX + dipWidth / 2;

    path.moveTo(0, 0);
    path.lineTo(left, 0);
    path.lineTo(left, dipHeight - dipRadius);
    path.quadraticBezierTo(left, dipHeight, left + dipRadius, dipHeight);
    path.lineTo(right - dipRadius, dipHeight);
    path.quadraticBezierTo(right, dipHeight, right, dipHeight - dipRadius);
    path.lineTo(right, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.black.withOpacity(0.15), 8, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant ConcavePainter oldDelegate) {
    return oldDelegate.centerX != centerX ||
        oldDelegate.dipWidth != dipWidth ||
        oldDelegate.dipHeight != dipHeight ||
        oldDelegate.dipRadius != dipRadius;
  }
}
