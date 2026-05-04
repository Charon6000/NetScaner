
# 🚀 NetScanner v1.0.1

![Bash](https://img.shields.io/badge/Language-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Tool](https://img.shields.io/badge/Tool-Nmap-00599C?style=for-the-badge&logo=nmap&logoColor=white)
![UI](https://img.shields.io/badge/Interface-Zenity-blue?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)

**NetScanner** to lekkie i potężne narzędzie oparte na skryptach Bash, służące do szybkiego audytu sieci lokalnej. Dzięki wykorzystaniu silnika `nmap` oraz interfejsu `zenity`, aplikacja oferuje zarówno szybkość działania linii komend, jak i wygodę okienkowego interfejsu graficznego (GUI).

---

## ✨ Funkcje

* 🔍 **Skanowanie urządzeń:** Szybka identyfikacja aktywnych hostów w podanej sieci/zakresie IP.
* 🚪 **Skanowanie portów:** Wykrywanie otwartych portów na konkretnym urządzeniu.
* 🖥️ **GUI Interfejs:** Przyjazne dla użytkownika okna dialogowe dzięki Zenity.
* 📊 **Automatyczne Raportowanie:** Każdy wynik skanowania jest automatycznie zapisywany w pliku `raports.txt` z datą i godziną.
* ⚙️ **Obsługa CLI:** Możliwość szybkiego sprawdzenia wersji lub pomocy bezpośrednio z terminala.

---

## 🛠️ Szybka instalacja zależności

Możesz automatycznie zainstalować wszystkie wymagane pakiety wylistowane w pliku `requirements.txt` za pomocą jednej komendy:

```bash
xargs sudo apt install -y < requirements.txt
```

---

## 🚀 Uruchomienie

Najpierw nadaj uprawnienia do wykonywania wszystkim plikom skryptu:

```bash
chmod +x main.sh frontend.sh backend.sh
```

### Tryb Graficzny (GUI)
Aby uruchomić aplikację w trybie okienkowym:
```bash
./main.sh -r
```

### Opcje Linii Komend (CLI)
* `./main.sh -v` – Wyświetla wersję programu.
* `./main.sh -h` – Wyświetla pomoc.

---

## 📂 Struktura Projektu

Projekt został zaprojektowany w architekturze modularnej, co ułatwia jego rozbudowę:

* `main.sh` – Główny kontroler (Logic) zarządzający przepływem danych.
* `backend.sh` – Moduł logiczny (Engine) odpowiedzialny za komendy Nmap i zapis plików.
* `frontend.sh` – Warstwa prezentacji (UI) odpowiedzialna za okna Zenity.
* `raports.txt` – Baza danych Twoich skanów (generowana automatycznie).

---

## 📸 Podgląd Działania

1.  **Menu Główne:** Wybór pomiędzy skanowaniem urządzeń a portów.
2.  **Input:** Proste pole do wpisania adresu IP lub zakresu (np. `192.168.1.0/24`).
3.  **Progres:** Pasek postępu informujący o trwającym skanowaniu w tle.
4.  **Wyniki:** Przejrzyste okno tekstowe z logami z Nmapa.

---

## 📝 Przykłady Skanowania

* Skanowanie całej sieci: `192.168.1.0/24`
* Skanowanie konkretnego hosta: `192.168.1.15`
* Skanowanie zakresu: `10.0.0.1-50`

---

## 🤝 Kontrybucja

Masz pomysł na nową funkcjonalność?
! Forkuj projekt !


## ⚖️ Licencja

Licencja Beerware (piwna licencja) to niezwykle swobodna, darmowa licencja oprogramowania, która pozwala użytkownikowi na dowolne korzystanie z kodu (modyfikację, sprzedaż, rozpowszechnianie) pod warunkiem zachowania notki o autorze. Jedyne "zobowiązanie" to postawienie piwa autorowi, jeśli kiedyś się spotkają i użytkownik uzna oprogramowanie za wartościowe.
