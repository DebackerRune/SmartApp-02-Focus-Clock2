import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'clock_painter.dart';

class ClockScreen extends HookWidget {
  const ClockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Use a stream to update the clock every second
    final currentTime = useStream(
      useMemoized(
        () => Stream.periodic(
          const Duration(seconds: 1),
          (_) => DateTime.now(),
        ),
      ),
      initialData: DateTime.now(),
    );

    final time = currentTime.data ?? DateTime.now();
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Focus Clock',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: colorScheme.surface,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
            tooltip: 'Settings',
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Determine if we're in landscape mode
          final isLandscape = constraints.maxWidth > constraints.maxHeight;
          
          // Calculate appropriate size for the clock
          final availableSize = isLandscape
              ? constraints.maxHeight * 0.8
              : min(constraints.maxWidth, constraints.maxHeight) * 0.8;

          return Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Analog Clock
                  SizedBox(
                    width: availableSize,
                    height: availableSize,
                    child: CustomPaint(
                      painter: ClockPainter(
                        dateTime: time,
                        hourHandColor: colorScheme.primary,
                        minuteHandColor: colorScheme.secondary,
                        secondHandColor: colorScheme.tertiary,
                        tickColor: colorScheme.onSurface,
                        centerDotColor: colorScheme.primary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Digital time display
                  Text(
                    _formatTime(time),
                    style: GoogleFonts.inter(
                      fontSize: isLandscape ? 32 : 48,
                      fontWeight: FontWeight.w700,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Date display
                  Text(
                    _formatDate(time),
                    style: GoogleFonts.inter(
                      fontSize: isLandscape ? 16 : 20,
                      fontWeight: FontWeight.w400,
                      color: colorScheme.onSurface.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  String _formatTime(DateTime time) {
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    final second = time.second.toString().padLeft(2, '0');
    return '$hour:$minute:$second';
  }

  String _formatDate(DateTime time) {
    final months = [
      'January', 'February', 'March', 'April', 'May', 'June',
      'July', 'August', 'September', 'October', 'November', 'December'
    ];
    final weekdays = [
      'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'
    ];
    
    final weekday = weekdays[time.weekday - 1];
    final month = months[time.month - 1];
    final day = time.day;
    final year = time.year;
    
    return '$weekday, $month $day, $year';
  }
}
