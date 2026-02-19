import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends HookWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    
    // State for toggles - using hooks
    // Note: These settings are not persisted and will reset on app restart
    // For production, consider using SharedPreferences or a state management solution
    final show24HourFormat = useState(true);
    final showSeconds = useState(true);
    final showDate = useState(true);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: colorScheme.surface,
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isLandscape = constraints.maxWidth > constraints.maxHeight;
          final maxWidth = isLandscape ? 600.0 : double.infinity;

          return Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: maxWidth),
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  // Clock Preferences Section
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text(
                      'Clock Preferences',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: colorScheme.primary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  
                  // 24-hour format toggle
                  _buildSettingTile(
                    context,
                    icon: Icons.access_time,
                    title: '24-Hour Format',
                    subtitle: 'Display time in 24-hour format',
                    value: show24HourFormat.value,
                    onChanged: (value) => show24HourFormat.value = value,
                  ),
                  
                  // Show seconds toggle
                  _buildSettingTile(
                    context,
                    icon: Icons.timer,
                    title: 'Show Seconds',
                    subtitle: 'Display seconds on the clock',
                    value: showSeconds.value,
                    onChanged: (value) => showSeconds.value = value,
                  ),
                  
                  // Show date toggle
                  _buildSettingTile(
                    context,
                    icon: Icons.calendar_today,
                    title: 'Show Date',
                    subtitle: 'Display the current date below the clock',
                    value: showDate.value,
                    onChanged: (value) => showDate.value = value,
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Appearance Section
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text(
                      'Appearance',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: colorScheme.primary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  
                  // Theme info card
                  Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.palette,
                            color: colorScheme.primary,
                            size: 32,
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Material 3 Theme',
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Follows system theme preferences',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    color: colorScheme.onSurface.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // About section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Focus Clock v1.0.0',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: colorScheme.onSurface.withOpacity(0.5),
                      ),
                      textAlign: TextAlign.center,
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

  Widget _buildSettingTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: SwitchListTile(
        secondary: Icon(
          icon,
          color: colorScheme.primary,
        ),
        title: Text(
          title,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: GoogleFonts.inter(
            fontSize: 12,
          ),
        ),
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
