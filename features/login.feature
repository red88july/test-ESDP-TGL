#language:ru
Функционал: Логин пользователей
  Как ранее зарегистрированный опльзователь
  Мне необходима возможность зайти на сайт
  Для этого я должен ввести email и свой пароль

  @login
  Сценарий: Авторизация пользователя
    Допустим Я нахожусь на странице "/login"
    И я ввожу "super@gmail.com" в поле "Email"
    И я ввожу "qwerty" в поле "Пароль"
    И я нажимаю на кнопку "Войти"
    То я перенаправляюсь на страницу "/admin-profile/statistics"