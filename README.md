<div align="center">
  <img src="docs/depofibra-banner.svg" width="100%" alt="Depofibra Manager — plataforma de gestión empresarial" />
  <br/><br/>
  <img src="https://img.shields.io/badge/Flutter-Dart-02569B?style=flat-square&logo=flutter&logoColor=white" alt="Flutter"/>
  <img src="https://img.shields.io/badge/Firebase-Auth_%26_Firestore-FFCA28?style=flat-square&logo=firebase&logoColor=111" alt="Firebase"/>
  <img src="https://img.shields.io/badge/Live_Demo-HTML_CSS_JavaScript-126AA3?style=flat-square" alt="Demo HTML JavaScript"/>
  <br/><br/>
  <strong>Depofibra Manager</strong><br/>
  <sub>Gestión comercial: clientes, catálogo y seguimiento de pedidos</sub>
</div>

---

## Explora la aplicación

**[Abrir demo interactiva de GitHub Pages](https://juanjogamero.github.io/depofibra-manager-business/)** · [Ver archivos de la demo](docs/index.html) · [Sitio oficial de Depofibra](https://depofibra.com/)

> [!IMPORTANT]
> **Demo pública con datos ficticios.** La web de demostración es una aplicación estática independiente de Flutter y Firebase. Puedes gestionar registros de ejemplo y tus cambios se guardan únicamente en el almacenamiento de tu navegador (localStorage). No tiene login real, usuarios compartidos, conexión a producción ni acceso a datos de clientes de Depofibra.
>
> El enlace GitHub Pages funcionará cuando se active la publicación en **Settings → Pages → Build and deployment → Source: GitHub Actions**. El repositorio ya utiliza el nombre `depofibra-manager-business`.

## El proyecto

Depofibra Manager reúne dos implementaciones complementarias que muestran el desarrollo de un producto de gestión empresarial:

| Implementación | Tecnología | Finalidad |
|---|---|---|
| **Aplicación de gestión** | Flutter, Dart, Firebase Authentication y Cloud Firestore | Código de la app con autenticación Google, pantallas y persistencia en Firestore |
| **Demo interactiva** | HTML, CSS y JavaScript sin framework | Showcase navegable en GitHub Pages, sin credenciales ni backend |

La aplicación Flutter es un **prototipo en desarrollo**, no una solución de producción auditada. La demo permite explorar las principales experiencias de usuario sin configuración previa.

## Módulos

<table>
<tr>
<td width="33%" valign="top"><h3>Clientes</h3>Altas, búsquedas, edición, eliminación y datos de contacto.</td>
<td width="33%" valign="top"><h3>Productos</h3>Gestión de artículos, categorías, capacidades y precios orientativos.</td>
<td width="34%" valign="top"><h3>Pedidos</h3>Asociación a clientes y productos, fecha, estado y seguimiento.</td>
</tr>
</table>

### Lo que puedes probar en la demo

- Dashboard con métricas, valor agregado de pedidos y gráficos basados en los registros.
- Buscadores independientes por módulo.
- Operaciones de **crear, editar y eliminar** datos de ejemplo.
- Estados de pedido: **Pendiente**, **En Proceso** y **Entregado**.
- Validación de formularios y prevención de borrado de clientes o productos con pedidos asociados.
- Persistencia en el navegador y botón **Reiniciar datos** para recuperar la demo original.
- Interfaz responsive adaptada a escritorio, tablet y móvil.

## Arquitectura de la app Flutter

```text
lib/
├── main.dart
├── models/
│   ├── cliente.dart
│   ├── producto.dart
│   └── pedido.dart
├── screens/
│   ├── login_screen.dart
│   ├── home_screen.dart
│   ├── clientes_screen.dart
│   ├── productos_screen.dart
│   └── pedidos_screen.dart
├── services/
│   ├── auth_service.dart
│   └── firestore_service.dart
└── widgets/
    └── input_decorations.dart

docs/
├── depofibra-banner.svg
└── index.html             # Demo estática autónoma
.github/workflows/
└── pages.yml              # Despliegue GitHub Pages
test/
└── widget_test.dart       # Pruebas de modelos
```

## Desarrollo local

### Demo (sin dependencias)

Abre `docs/index.html` en un navegador o sírvelo localmente:

```bash
python -m http.server 8000 --directory docs
```

Visita `http://localhost:8000`. Funciona sin Firebase y utiliza información ficticia.

### Aplicación Flutter (requiere Firebase)

```bash
flutter pub get
flutter analyze
flutter test
flutter run
```

Es necesario configurar un **proyecto Firebase propio** y Google Sign-In para las plataformas utilizadas. El arranque de Flutter y la integración Firebase no se han verificado en un entorno de ejecución durante la preparación de este repositorio.

## Publicación en GitHub Pages

El workflow `pages.yml` publica automáticamente la carpeta `docs/` cuando hay cambios en `main`. Para activarlo una vez:

1. Abre **Settings → Pages**.
2. En **Build and deployment**, selecciona **GitHub Actions**.
3. Ejecuta o vuelve a ejecutar **Deploy interactive demo to GitHub Pages** desde **Actions**.
4. Confirma la URL publicada en la sección de despliegues de GitHub.

**Nombre recomendado del repositorio:** `depofibra-manager-business`. El enlace pasará a ser `https://juanjogamero.github.io/depofibra-manager-business/` cuando se complete el cambio de nombre y se publique correctamente.

## Seguridad y alcance

- La demo pública **no envía** datos introducidos a ningún servidor. Utiliza únicamente `localStorage`, por lo que **no debes introducir información real o sensible**.
- Para usar el proyecto Flutter con datos empresariales, antes hay que validar **Security Rules de Firestore, autorización por roles, manejo de errores y controles de privacidad**.
- Los importes y productos iniciales de la demo son **ficticios y orientativos**, no constituyen tarifas u ofertas comerciales.
- No se afirma que la versión Flutter esté desplegada, completamente terminada o auditada.

---

<div align="center">Desarrollado por <a href="https://github.com/juanjogamero">Juan José Gamero López</a> · <strong>Depofibra Manager</strong></div>
