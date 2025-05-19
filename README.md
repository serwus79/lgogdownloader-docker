# 🕹️ GOG Offline Downloader (Docker)

Automatyczne pobieranie instalatorów offline z GOG.com przy użyciu `lgogdownloader` w kontenerze Docker.

---

## 📦 Funkcjonalność

- Pobieranie gier w wersji offline
- Obsługa platformy Windows
- Zapisywanie tokenów logowania między uruchomieniami
- Działa na Windows, Linux i macOS
- Obsługa listy gier z pliku `.txt`

---

## 🧱 Wymagania

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/)
- (Windows) PowerShell
- (Linux/macOS) Bash

---

## 🛠️ Instalacja

1. Sklonuj repozytorium lub skopiuj pliki do katalogu:

```
lgogdownloader-docker/
├── Dockerfile
├── docker-compose.example.yml
├── run.sh         # Linux/macOS
├── run.ps1        # Windows PowerShell
├── config/        # zapis konfiguracji i tokenów
├── downloads/     # miejsce pobierania gier
└── games.txt      # (opcjonalnie) lista gier
```

2. Zbuduj obraz Dockera:

```bash
docker compose build
```

3. Zmień nazwę pliku `docker-compose.example.yml` na `docker-compose.yml` i dostosuj go do swoich potrzeb.

---

## 🔐 Logowanie (pierwsze uruchomienie)

Zaloguj się do swojego konta GOG:

```bash
docker compose run --rm gog --login
```

Tokeny zostaną zapisane w folderze `./config`.

---

## ▶️ Pobieranie gier

### 🐧 Linux/macOS

```bash
./run.sh
```

### 🪟 Windows (PowerShell)

```powershell
./run.ps1
```

---

## 🧾 Opcjonalnie: pobieranie wybranych gier z pliku

1. Utwórz plik `games.txt` w folderze `downloads/`:

```
baldurs_gate_2_enhanced_edition
planescape_torment_enhanced_edition
```

2. Edytuj skrypt i dodaj:

```
--game-from-file /downloads/games.txt
```

---

## 📁 Struktura folderów

- `config/` – przechowuje konfigurację, token logowania
- `downloads/` – miejsce zapisu pobranych instalatorów
- `games.txt` – (opcjonalne) lista gier do pobrania

---

## 🔄 Aktualizacja

Aby pobrać nowe wersje gier lub nowe zakupy, uruchom skrypt ponownie – `lgogdownloader` pobierze tylko brakujące pliki.

---

## 📚 Więcej informacji

- [lgogdownloader – GitHub](https://github.com/Sude-/lgogdownloader)
- [GOG.com](https://www.gog.com/)
