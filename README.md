# CookWise - Frontend (macOS)
Interfaz de usuario para macOS desarrollada en SwiftUI.
CookWise permite buscar recetas, explorar resultados, ver detalles y gestionar favoritos. Todo el consumo de datos se realiza desde un backend ya existente mediante una API REST.

## Tecnologías utilizadas:
- Swift 5
- SwiftUI (Interfaz nativa macOS)
- Combine (Manejo de estados y bindings)
- MVVM (Arquitectura)
- URLSession (Consumo de API)

 # Funcionalidades principales:
- Buscar recetas según ingredientes ingresados.
- Listado de recetas con filtros.
- Visualización detallada de cada receta.
- Gestión de favoritos (requiere autenticación).
- Interfaz nativa optimizada para macOS.

# Requisitos previos:
- macOS 12.0 o superior.
- Xcode 14 o superior.
- Swift 5.7 o superior.

# Autenticación
- Login y registro de usuario.
- Token de autenticación para acceso a favoritos.
- La lógica de autenticación depende de la respuesta de la API REST.
