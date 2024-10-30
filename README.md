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
   > **Opcional**: Si quieres trabajar con fish

   Si aún no tienes OMF instalado, puedes instalarlo ejecutando:

   ```bash
   curl -L https://get.oh-my.fish | fish
   ```

4. **Configura Zsh**:

   Copia tu archivo `.zshrc` y asegúrate de que Oh My Zsh esté instalado:

   ```bash
   cp ~/.config/.zshrc ~/.zshrc
   ```

   Si aún no tienes Oh My Zsh instalado, puedes hacerlo con:

   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

   **Instala los pluggins de OMZ para autocompletado y errores de sintaxis**
   
   zhs-autosuggestions
   ```bash
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
   ```

   zsh-syntax-highlighting
   ```bash
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   ```
   
   
6. **Configura P10k**:

   Copia tu archivo `.p10k.zsh` y asegúrate de que Power Level 10k esté instalado:

   ```bash
   cp ~/.config/.p10k.zsh ~/.p10k.zsh
   ```

   Si aún no tienes P10k instalado, puedes hacerlo con:

   ```bash
   brew install powerlevel10k
   ```
   > **Importante:** Asegurate de tener homebrew instalado primero

   Instala el tema de p10k para zsh
   ```bash
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
   ```
   
8. **Sincroniza tu archivo de ssh con las actualizaciones**:
   
   ZSH
   ```bash
   source ~/.zshrc
   ```

   
## 🎨 Estilo Personalizado

Cada una de mis configuraciones incluye ajustes de estilo y funcionalidad para hacer que mi entorno de desarrollo sea más agradable y productivo.

### Temas y Colores

- Utilizo temas personalizados para Neovim y Fish, que puedes encontrar en el directorio correspondiente.
> **Nvim**: Puedes estando dentro del programa pulsar ```SPACE u SHIFT+C``` para desplegar el menu visual de selección de estilos preinstlados. 

### Atajos de Teclado

- He definido atajos de teclado en Neovim y Fish para optimizar mi flujo de trabajo.

## 📄 Licencia

Este proyecto está bajo la [Licencia MIT](LICENSE).

---

¡Espero que encuentres útil mi configuración! Si tienes alguna pregunta o sugerencia, no dudes en abrir un problema o contribuir. 🚀
