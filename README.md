# 🌌 Dotenvs: Mi Configuración Personal 
>  MacOS

¡Bienvenido a mi repositorio de configuración personal! Este proyecto incluye mis configuraciones personalizadas para varias herramientas que utilizo en mi flujo de trabajo.

## 🛠️ Herramientas Incluidas

- **Neovim**: Un potente editor de texto basado en terminal, que he personalizado para mejorar mi productividad.
- **Fish**: Un shell amigable y interactivo que facilita la vida en la línea de comandos.
- **OMF (Oh My Fish)**: Un gestor de plugins para Fish que hace que la personalización sea fácil y rápida.
- **WezTerm**: Un emulador de terminal moderno que aprovecha las características avanzadas de la terminal.
- **Zsh**: Mi shell principal, configurado con Oh My Zsh.

## ⚙️ Instalación

### Requisitos Previos

Asegúrate de tener instalados los siguientes programas antes de proceder:

- Neovim
- Fish
- WezTerm
- Zsh

### Pasos para Instalar

1. **Clona este repositorio**:

   ```bash
   git clone https://github.com/tu-usuario/dotenvs.git ~/.config/
   ```
   > **Importante:** Coloca la carpeta creada en ~/.config

2. **Instala OMF**:

   Si aún no tienes OMF instalado, puedes instalarlo ejecutando:

   ```bash
   curl -L https://get.oh-my.fish | fish
   ```

3. **Configura Zsh**:

   Copia tu archivo `.zshrc` y asegúrate de que Oh My Zsh esté instalado:

   ```bash
   cp ~/.config/.zshrc ~/.zshrc
   ```

   Si aún no tienes Oh My Zsh instalado, puedes hacerlo con:

   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```
   
4. **Configura P10k**:

   Copia tu archivo `.p10k.zsh` y asegúrate de que Power Level 10k esté instalado:

   ```bash
   cp ~/.config/.zshrc ~/.zshrc
   ```

   Si aún no tienes P10k instalado, puedes hacerlo con:

   ```bash
   brew install powerlevel10k
   ```
   > **Importante:** Asegurate de tener homebrew instalado primero
   
## 🎨 Estilo Personalizado

Cada una de mis configuraciones incluye ajustes de estilo y funcionalidad para hacer que mi entorno de desarrollo sea más agradable y productivo.

### Temas y Colores

- Utilizo temas personalizados para Neovim y Fish, que puedes encontrar en el directorio correspondiente.

### Atajos de Teclado

- He definido atajos de teclado en Neovim y Fish para optimizar mi flujo de trabajo.

## 📄 Licencia

Este proyecto está bajo la [Licencia MIT](LICENSE).

---

¡Espero que encuentres útil mi configuración! Si tienes alguna pregunta o sugerencia, no dudes en abrir un problema o contribuir. 🚀
