import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lerng_domnaeng/core/services/app_data_sync_service.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';
import 'package:lerng_domnaeng/features/auth/domain/user_model.dart';
import 'package:lerng_domnaeng/features/auth/data/auth_repository.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _isLoading = false;
  String? _errorMessage;
  CareerLevel _selectedLevel = CareerLevel.junior;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleRegister() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      // Sync into AppDataSyncService for immediate visibility in Admin Portal & DB
      ref.read(appDataSyncProvider.notifier).registerNewUser(
        name: _nameController.text.trim(),
        email: _emailController.text.trim(),
        level: _selectedLevel,
      );

      final authRepo = ref.read(authRepositoryProvider);
      await authRepo.signUp(
        email: _emailController.text.trim(),
        password: _passwordController.text,
        displayName: _nameController.text.trim(),
        careerLevel: _selectedLevel,
      );
      if (mounted) {
        context.go('/onboarding');
      }
    } catch (e) {
      if (mounted) {
        context.go('/onboarding');
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      appBar: AppBar(
        title: const Text('បង្កើតគណនីថ្មី'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'សូមស្វាគមន៍មកកាន់ «ឡើងដំណែង»',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryGreen,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'បង្កើតគណនីដើម្បីចាប់ផ្តើមផ្លូវឆ្ពោះទៅកាន់ការរីកចម្រើនក្នុងអាជីព',
                  style: TextStyle(fontSize: 13, color: AppColors.subtleGray),
                ),
                const SizedBox(height: 24),

                if (_errorMessage != null) ...[
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.error.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.error.withValues(alpha: 0.4)),
                    ),
                    child: Text(
                      _errorMessage!,
                      style: const TextStyle(fontSize: 12, color: AppColors.error),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],

                // Full Name
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'ឈ្មោះពេញ (Full Name)',
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'សូមបញ្ចូលឈ្មោះរបស់អ្នក';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Email
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'អ៊ីមែល (Email)',
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'សូមបញ្ចូលអ៊ីមែល';
                    }
                    if (!val.contains('@')) {
                      return 'ទម្រង់អ៊ីមែលមិនត្រឹមត្រូវទេ';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Password
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    labelText: 'លេខសម្ងាត់ (Password)',
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      icon: Icon(_obscurePassword ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'សូមបញ្ចូលលេខសម្ងាត់';
                    }
                    if (val.length < 6) {
                      return 'លេខសម្ងាត់ត្រូវមានយ៉ាងហោចណាស់ ៦ តួអក្សរ';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Current Career Level
                const Text(
                  'កម្រិតអាជីពបច្ចុប្បន្ន (Current Career Level)',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.charcoal),
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField<CareerLevel>(
                  value: _selectedLevel,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.work_outline),
                  ),
                  items: CareerLevel.values.map((lvl) {
                    return DropdownMenuItem(
                      value: lvl,
                      child: Text('${lvl.khLabel} (${lvl.enLabel})'),
                    );
                  }).toList(),
                  onChanged: (val) {
                    if (val != null) setState(() => _selectedLevel = val);
                  },
                ),
                const SizedBox(height: 24),

                ElevatedButton(
                  onPressed: _isLoading ? null : _handleRegister,
                  child: _isLoading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                        )
                      : const Text('ចុះឈ្មោះ (Sign Up)'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
