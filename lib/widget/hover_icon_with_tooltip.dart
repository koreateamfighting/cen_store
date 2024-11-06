import 'package:flutter/material.dart';

class HoverIconWithTooltip extends StatefulWidget {
  final String defaultIcon;
  final String hoverIcon;
  final String tooltip;
  final VoidCallback onPressed;

  const HoverIconWithTooltip({
    Key? key,
    required this.defaultIcon,
    required this.hoverIcon,
    required this.tooltip,
    required this.onPressed,
  }) : super(key: key);

  @override
  _HoverIconWithTooltipState createState() => _HoverIconWithTooltipState();
}

class _HoverIconWithTooltipState extends State<HoverIconWithTooltip> {
  bool _isHovered = false;
  OverlayEntry? _overlayEntry;

  void _showTooltip(BuildContext context) {
    final renderBox = context.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);

    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx + renderBox.size.width / 2 - 30,
        top: offset.dy + renderBox.size.height + 5,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              widget.tooltip,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ),
      ),
    );

    Overlay.of(context)!.insert(_overlayEntry!);
  }

  void _hideTooltip() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
        _showTooltip(context);
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
        _hideTooltip();
      },
      child: IconButton(
        icon: Image.asset(
          _isHovered ? widget.hoverIcon : widget.defaultIcon,
          width: 24,
          height: 24,
        ),
        onPressed: widget.onPressed,
      ),
    );
  }

  @override
  void dispose() {
    _hideTooltip();
    super.dispose();
  }
}
