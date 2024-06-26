#language:ru
Функционал: Переход по ссылка в Регистрации и Логине
  Находясь в формах регистарции и логина, вижу ссылки.
  Ссылки "Уже зарегистрированы?" и "Еще нет аккаунта?".
  При клике по нимдолжен осуществлятся переход на соответствующие страницы.

  @loginLink
  Сценарий: Переход по ссылке Еще нет аккаунта?
    Допустим Я нахожусь на странице "/login"
    Если я кликаю по cсылке "Еще нет аккаунта?"
    То я перехожу на страницу "/register"

  @registerLink
  Сценарий: Переход по ссылке Уже зарегистрированы?
    Допустим Я нахожусь на странице "/register"
    Если я кликаю по cсылке "Уже зарегистрированы?"
    То я перехожу на страницу "/login"