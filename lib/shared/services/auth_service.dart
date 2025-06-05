// lib/core/services/auth_service.dart

class AuthService {
  // Simula una llamada de login al backend
  // En el futuro, esto interactuará con tu API (usando Dio)
  // y manejará los tokens JWT.
  Future<bool> login(String email, String password) async {
    print('AuthService: Intentando login con Email: $email, Password: $password');

    // Simula una llamada de red con un retraso
    await Future.delayed(const Duration(seconds: 1));

    // Simula una respuesta exitosa/fallida del backend
    // En un caso real, verificarías las credenciales contra el backend.
    if (email == "test@example.com" && password == "password123") {
      print('AuthService: Login exitoso (simulado)');
      // Aquí, en un caso real, guardarías el token JWT recibido del backend
      // usando flutter_secure_storage.
      return true; // Login simulado exitoso
    } else {
      print('AuthService: Login fallido (simulado) - credenciales incorrectas');
      return false; // Login simulado fallido
    }
  }

  // Método para simular el logout
  Future<void> logout() async {
    print('AuthService: Realizando logout (simulado)');
    // Aquí, en un caso real, limpiarías el token JWT guardado
    // y posiblemente notificarías al backend.
    await Future.delayed(const Duration(milliseconds: 500));
    print('AuthService: Logout completado (simulado)');
  }

  // Método para verificar si el usuario está actualmente logueado (simulado)
  // En el futuro, esto podría verificar la validez de un token almacenado.
  Future<bool> isLoggedIn() async {
    print('AuthService: Verificando estado de login (simulado)');
    // Simulación: asumimos que no está logueado por defecto
    // En un caso real, leerías de flutter_secure_storage.
    return false;
  }
}