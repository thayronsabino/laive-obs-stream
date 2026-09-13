# Laive OBS Multi-Stream (Multi-RTMP)

Plugin de transmissão simultânea para múltiplos destinos (**Multi-RTMP / RTMPS**) para o **OBS Studio**, com suporte nativo a **transmissões verticais (TikTok, Instagram Reels, YouTube Shorts)** e multiformato em paralelo com transmissões horizontais convencionais (YouTube, Twitch, Kick).

---

## 📦 Download dos Instaladores (Release v1.0.0)

Baixe a versão pronta para o seu sistema operacional diretamente na [Página de Releases](https://github.com/thayronsabino/laive-obs-stream/releases/tag/1.0.0):

| Sistema | Pacote / Instalador | Como Instalar / Usar |
| :--- | :--- | :--- |
| **Windows (x64)** | [⬇️ `obs-multi-rtmp-1.0.0-windows-x64.zip`](https://github.com/thayronsabino/laive-obs-stream/releases/download/1.0.0/obs-multi-rtmp-1.0.0-windows-x64.zip) | Extraia os arquivos na pasta de plugins do OBS (`%ProgramData%\obs-studio\plugins` ou na pasta de instalação do OBS) |
| **macOS (Universal - M1/M2/M3/M4 & Intel)** | [⬇️ `obs-multi-rtmp-1.0.0-macos-universal.pkg`](https://github.com/thayronsabino/laive-obs-stream/releases/download/1.0.0/obs-multi-rtmp-1.0.0-macos-universal.pkg) | Instalador `.pkg` nativo (duplo clique para instalar) |
| **Linux (Ubuntu / Debian)** | [⬇️ `obs-multi-rtmp-1.0.0-x86_64-linux-gnu.deb`](https://github.com/thayronsabino/laive-obs-stream/releases/download/1.0.0/obs-multi-rtmp-1.0.0-x86_64-linux-gnu.deb) | Instale via `sudo dpkg -i ...deb` ou instalador de pacotes da sua distro |

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
