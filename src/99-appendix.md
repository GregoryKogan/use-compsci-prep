# Приложения

## Как установить Python и среду разработки

В рамках курса мы не будем использовать какие-либо возможности языка, которые были добавлены в `Python` после версии `3.6`, потому что на компьютерах в пунктах проведения экзамена нередко стоят устаревшие версии программного обеспечения. Впрочем, мы рекомендуем всё равно установить последнюю версию. На момент написания это `Python 3.11`.

### Windows

1. Скачайте установщик Python с [официального сайта](https://www.python.org/downloads/windows/).
2. Установите Python, следуя инструкциям установщика. Убедитесь, что вы установили Python в системную переменную PATH.
3. Проверьте, что Python установлен, открыв командную строку и введя `python --version`.

### MacOS

#### Установка с официального сайта

1. Скачайте установщик Python с [официального сайта](https://www.python.org/downloads/macos/).
2. Установите Python, следуя инструкциям установщика.
3. Проверьте, что Python установлен, открыв терминал и введя `python3 --version`.

#### Установка с помощью Homebrew

1. Установите [Homebrew](https://brew.sh/), если у вас его нет. Для этого откройте терминал и введите:
   ```bash {numbers=none}
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
2. Установите Python, введя в терминал:
   ```bash {numbers=none}
    brew install python
   ```
3. Проверьте, что Python установлен, открыв терминал и введя `python3 --version`.

### GNU/Linux

Мы не будем подробно описывать установку Python в Linux, потому что если вы используете Linux, то, скорее всего, вы уже знаете, как это сделать.

#### Debian (apt)

```bash {numbers=none}
sudo apt update
sudo apt install python3
```

#### Fedora (dnf)

```bash {numbers=none}
sudo dnf update
sudo dnf install python3
```

#### Arch Linux (pacman)

```bash {numbers=none}
sudo pacman -Syu
sudo pacman -S python3
```

### Установка среды разработки

Вы вольны выбрать любую среду разработки или текстовый редактор, который вам нравится. Мы рекомендуем использовать [PyCharm Community Edition](https://www.jetbrains.com/pycharm) или [Visual Studio Code](https://code.visualstudio.com/). Обе программы бесплатны и поддерживают работу с Python. В случае использования Visual Studio Code, вам также понадобится установить расширение для работы с Python.

## Как установить офисный пакет

Если у вас уже есть доступ к проприетарному офисному пакету от Microsoft, то вы можете использовать его. Если у вас нет офисного пакета, то мы рекомендуем установить [LibreOffice](https://www.libreoffice.org/). Это бесплатный офисный пакет с открытым исходным кодом, который поддерживает все основные форматы файлов офисных пакетов. К сожалению, использование онлайн-офисных пакетов, таких как Google Docs, не подходит для выполнения заданий курса.

### Windows

1. Скачайте установщик LibreOffice с [официального сайта](https://www.libreoffice.org/download/download/).
2. Установите LibreOffice, следуя инструкциям установщика.

### MacOS

#### Установка с официального сайта

1. Скачайте установщик LibreOffice с [официального сайта](https://www.libreoffice.org/download/download/).
2. Установите LibreOffice, следуя инструкциям установщика.

#### Установка с помощью Homebrew

1. Установите [Homebrew](https://brew.sh/), если у вас его нет. Для этого откройте терминал и введите:
   ```bash {numbers=none}
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
2. Установите LibreOffice, введя в терминал:
   ```bash {numbers=none}
    brew install --cask libreoffice
   ```

### GNU/Linux

Для установки LibreOffice в Linux мы рекомендуем воспользоваться магазином приложений [snap](https://snapcraft.io/).
