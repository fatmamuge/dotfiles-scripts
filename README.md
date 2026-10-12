# ⚡ Bash Helper Functions

Terminal deneyimini hızlandırmak, dizinler arasında hızlıca geçiş yapmak ve sık kullanılan dosyaları pratik bir şekilde açmak için hazırlanmış yardımcı Bash betikleri (helper scripts).

---

## 📌 İçindekiler (Features)

* **`fcd` (Fuzzy Change Directory):** Gizli klasörleri de kapsayacak şekilde dizin arar ve seçilen klasöre doğrudan geçiş yapar (`cd`). Gereksiz önbellek (cache) ve yapılandırma klasörlerini aramadan hariç tutar (exclude).
* **`fvim` (Fuzzy Open File with Vim):** Belirli uzantılara sahip (`.py`, `.java`, `.c`, `.bashrc`, `.md` vb.) dosyaları interaktif olarak arar, dosyanın bulunduğu dizine geçip dosyayı doğrudan `vim` editöründe açar.
* **`mkcd` (Make & Change Directory):** Tek komutla yeni bir dizin oluşturur ve oluşturulan dizinin içine geçer.

---

## 🛠️ Gereksinimler (Prerequisites)

Fonksiyonların çalışabilmesi için sisteminizde aşağıdaki araçların kurulu olması gerekir:

* **fd** (Ubuntu/Debian için `fdfind`):
  ```bash
  sudo apt install fd-find
