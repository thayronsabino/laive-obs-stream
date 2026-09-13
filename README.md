# Laive OBS Multi-Stream (Multi-RTMP)

Plugin de transmissão simultânea para múltiplos destinos (**Multi-RTMP / RTMPS**) para o **OBS Studio**, com suporte nativo a **transmissões verticais (TikTok, Instagram Reels, YouTube Shorts)** e multiformato em paralelo com transmissões horizontais convencionais (YouTube, Twitch, Kick).

---

## ✨ Principais Recursos

- 📱 **Transmissão Vertical Real (9:16):**
  - Renderização nativa via mixer secundário da `libobs` (`obs_view_add2`).
  - Suporte a resoluções verticais dedicadas (ex: `1080x1920`, `720x1280`) e quadradas (`1080x1080`) sem esticar ou achatar a live principal.
  - Seleção de cena dedicada para o formato vertical.
- 🔒 **Suporte Nativo a RTMPS:**
  - Criptografia TLS/SSL para Facebook Live, Instagram Live, TikTok e YouTube.
- ⚡ **Monitoramento e Telemetria em Tempo Real:**
  - Exibição de duração (uptime), taxa de bits atual (kbps), taxa de quadros (FPS) e contador de quadros perdidos com porcentagem.
- 🎯 **Presets Rápidos de Resolução:**
  - Presets para TikTok, Instagram, YouTube Shorts e resoluções personalizadas.
- 🌍 **Multiplataforma:**
  - Compatível com **Windows** (x64 / NVENC, AMF, QuickSync), **macOS** (Apple Silicon arm64 e Intel / Apple VideoToolbox) e **Linux**.
- 🌐 **Internacionalização:**
  - Traduzido para Português do Brasil (`pt-BR`), Inglês (`en-US`) e mais de 60 idiomas.

---

## 🛠️ Como Compilar Localmente

### Windows (Visual Studio 2022 + CMake)
```powershell
# Configurar e compilar
cmake --build --preset windows-x64-local
```

### macOS (Xcode + CMake)
```bash
# Configurar e compilar para Apple Silicon e Intel
cmake --preset macos
cmake --build --preset macos
```

### Linux (Ubuntu 24.04 + Ninja)
```bash
cmake --preset ubuntu-x86_64
cmake --build --preset ubuntu-x86_64
```

---

## 📦 Como Instalar no OBS Studio (Windows)

1. Baixe ou compile os arquivos do plugin.
2. Copie o conteúdo da pasta `release/RelWithDebInfo/obs-multi-rtmp` para:
   ```
   %APPDATA%\obs-studio\plugins\obs-multi-rtmp\
   ```
3. Abra o OBS Studio e acesse o menu **Docks > Laive OBS - Múltiplas Saídas**.

---

## 📄 Autoria e Licença

- **Desenvolvedor:** LAIVE AI - Thayron Sabino
- **Repositório Oficial:** [https://github.com/thayronsabino/laive-obs-stream](https://github.com/thayronsabino/laive-obs-stream)
- Distribuído sob a licença [MIT](LICENSE).
