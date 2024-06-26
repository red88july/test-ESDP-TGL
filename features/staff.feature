#language:ru
Функционал:Поиск информации о сотруднике по email. Сброс формы поиска к исходному состоянию. Создание нового сотрудника.

  @staff-find
  Сценарий: Поиск сотрудника
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "Сотрудники"
    И я перенаправляюсь на страницу "/admin-profile/staff"
    И я ввожу "admin@gmail.com" в поле "email"
    И я нажимаю на кнопку "Найти"
    То я вижу сообщение "Результат поиска"

  @staff-restore
  Сценарий: Сброс формы после успешного поиска
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "Сотрудники"
    И я перенаправляюсь на страницу "/admin-profile/staff"
    Если я ввожу "admin@gmail.com" в поле "email"
    И я нажимаю на кнопку "Найти"
    То я вижу сообщение "Результат поиска"
    И я нажимаю на кнопку "Сбросить фильтр"
    То я не вижу сообщение "Результат поиска"

  @staff-add
  Сценарий: Создание нового сотрудника c ролью admin
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "Сотрудники"
    И я перенаправляюсь на страницу "/admin-profile/staff"
    И я нажимаю на кнопку "Создать сотрудника"
    То я вижу сообщение "Регистрация Сотрудника"
    И я ввожу "testFirstName" в поле "Имя"
    И я ввожу "testLastName" в поле "Фамилия"
    И я ввожу "5tr0ngPswrd" в поле "Пароль"
    И я ввожу "test@test.com" в поле "Email"
    И я ввожу "555333222" в поле "Номер телефона"
    И я выбираю значение "admin" в поле "Роль"
    И я жду 1 секунду
    И я выбираю значение "Чуйская" в поле "Регион"
    И я ввожу "testCity" в поле "Населенный пункт"
    И я ввожу "testAddress" в поле "Адрес"
    И я выбираю значение "ПВЗ№2 Чуйская обл., ул. Железнодорожная 94, г.Кара-Балта" в поле "ПВЗ"
    И я жду 1 секунду
    И я нажимаю на кнопку "Зарегистрировать"
    И я жду 1 секунду
    То я вижу сообщение "test@test.com"

  @staff-update
  Сценарий: Редактирование сотрудника
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "Сотрудники"
    И я перенаправляюсь на страницу "/admin-profile/staff"
    И я нажимаю на кнопку "Изменить"
    То я вижу сообщение "Обновление Сотрудника"
    И я очищаю поле "lastName"
    И я ввожу "testLastName" в поле "Фамилия"
    И я нажимаю на кнопку "Обновить"
    То я вижу сообщение "testLastName"

  @staff-delete
  Сценарий: Удаление сотрудника
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "Сотрудники"
    И я перенаправляюсь на страницу "/admin-profile/staff"
    И я нажимаю на кнопку "Удалить"
    То я вижу сообщение "Вы уверены, что хотите удалить сотрудника?"
    И я нажимаю на кнопку "Да"
    То я не вижу сообщение "admin@gmail.com"