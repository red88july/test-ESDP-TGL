#language:ru
Функционал:Создание, редактирование и удаление ПВЗ.
  Как супер-админ
  Мне необходима возможность создания, редактирования и удаления ПВЗ

  @addPups
  Сценарий: Создание ПВЗ
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "ПВЗ"
    То я перенаправляюсь на страницу "/admin-profile/pups"
    И я нажимаю на кнопку "Добавить ПВЗ"
    То я вижу сообщение "Добавить ПВЗ"
    И я выбираю значение "Чуйская" в поле "Регион"
    И я жду 1 секунду
    И я ввожу "г.Кант" в поле "Населенный пункт"
    И я ввожу "ул. Абраимова 52" в поле "Адрес"
    И я ввожу "555333222" в поле "Номер телефона"
    И я нажимаю на кнопку "Добавить"
    И я жду 2 секунды
    И я вижу сообщение "ПВЗ№6"
