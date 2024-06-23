#language:ru
Функционал: Заказы клиентов
  Как супер-админ
  Мне нужно найти заказ клиента по трек-номеру
  Мне нужно сбросить поиска
  Для этого я должен ввести трек-номер и нажать на кнопку Поиск
  Мне нужно нажать на кнопку Сбросить фильтры

  @searchByTrack
  Сценарий: Поиск заказа клиентов по трек-номеру
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "Заказы клиентов"
    И я перенаправляюсь на страницу "/admin-profile/shipments"
    И я ввожу "123456785" в поле "поиск по трек номеру"
    И я нажимаю на кнопку "Поиск"
    И я жду 2 секунды
    И я нажимаю на кнопку "Сбросить"
    То я вижу пустое значение в поле "поиск по трек номеру"
