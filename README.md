# Karate API Tests

Pruebas automatizadas de API REST usando [Karate](https://github.com/karatelabs/karate) sobre la plataforma [Automation Exercise](https://automationexercise.com).

## Requisitos

- Java 11 o superior
- Gradle (incluido via wrapper `gradlew`)

## Estructura del proyecto

```
src/test/java/
├── karate-config.js          # Variables globales compartidas (email y password de prueba)
└── api/
    ├── ApiSuite.java         # Runner principal que ejecuta todos los tests en orden
    ├── cleanup/
    │   └── cleanup.feature   # Limpia el usuario de prueba antes de la suite
    ├── get/
    │   ├── get.feature       # GET /api/productsList
    │   └── ProductGet.java   # Runner individual
    ├── post/
    │   ├── post.feature      # POST /api/createAccount
    │   └── UserPost.java     # Runner individual
    ├── put/
    │   ├── put.feature       # PUT /api/updateAccount
    │   └── UserPut.java      # Runner individual
    └── delete/
        ├── delete.feature    # DELETE /api/deleteAccount
        └── DeleteUser.java   # Runner individual
```

## Ejecución

### Todos los tests en orden

Ejecuta la suite completa en el orden correcto: `cleanup → post → put → delete → get`.

```bash
./gradlew test --tests "api.ApiSuite"
```

> El paso `cleanup` elimina el usuario de prueba si ya existe, garantizando que `post` siempre pueda crear la cuenta sin errores de duplicado. Se puede ejecutar la suite múltiples veces sin problemas.

### Un método individual

```bash
./gradlew test --tests "api.get.ProductGet"
./gradlew test --tests "api.post.UserPost"
./gradlew test --tests "api.put.UserPut"
./gradlew test --tests "api.delete.DeleteUser"
```

> Al ejecutar `post`, `put` o `delete` de forma individual, asegúrate de que el estado del usuario en la plataforma sea el correcto (el usuario no debe existir para `post`, y debe existir para `put` y `delete`).

### Todos los tests sin orden garantizado

```bash
./gradlew test
```

## Configuración

Las credenciales del usuario de prueba se definen en `src/test/java/karate-config.js`:

```js
function fn() {
    return {
        testEmail: 'karate.automation@example.com',
        testPassword: 'Password123!'
    };
}
```

Estas variables (`testEmail`, `testPassword`) están disponibles automáticamente en todos los `.feature`.

## Reportes

Después de ejecutar los tests, los reportes se generan en:

| Reporte | Ruta |
|---|---|
| Karate (detallado) | `build/karate-reports/karate-summary.html` |
| JUnit (resumen) | `build/reports/tests/test/index.html` |
