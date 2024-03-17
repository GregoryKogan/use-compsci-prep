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

### Linux

Мы не будем останавливаться на установке Python в Linux, потому что если вы используете Linux, то, скорее всего, вы уже знаете, как это сделать.

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

Вы вольны выбрать любую среду разработки или текстовый редактор, который вам нравится. Мы рекомендуем использовать [PyCharm Community Edition](https://www.jetbrains.com/pycharm), потому что он бесплатен и прост в использовании.
Вы можете установить его, следуя инструкциям на [официальном сайте](https://www.jetbrains.com/pycharm/download/).
