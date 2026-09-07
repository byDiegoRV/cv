# CV — Diego Noé Roldán Vivanco

Sitio estático de una sola página (`index.html`, sin dependencias de build)
con un diseño inspirado en un editor de código: un "explorador de archivos"
a la izquierda y el contenido del CV a la derecha, como si cada sección
fuera un archivo abierto (`about.md`, `skills.json`, etc).

## Ejecutarlo localmente / en Codespaces

No necesita instalación ni build. En un Codespace:

```bash
python3 -m http.server 8080
```

y abre el puerto 8080 en la pestaña "Ports" que aparece en VS Code /
Codespaces (clic en el enlace para verlo en el navegador).

## Desplegar en Render

1. Sube este repo a GitHub (ver pasos abajo).
2. Entra a [render.com](https://render.com) → **New** → **Static Site**.
3. Conecta tu cuenta de GitHub y selecciona este repositorio.
4. Configuración:
   - **Build Command:** (déjalo vacío)
   - **Publish directory:** `.`
5. Clic en **Create Static Site**. Render te dará una URL pública
   (algo como `https://cv-diego.onrender.com`) y la actualizará
   automáticamente cada vez que hagas push a `main`.

También incluye un `render.yaml`, así que si usas "Blueprints" en Render
puede detectar la configuración automáticamente.
