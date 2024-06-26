#language:ru
Функционал:Создание, редактирование и удаление ПВЗ.
  Как супер-админ
  Мне необходима возможность создания, редактирования и удаления ПВЗ

  @addPups
  Сценарий: Создание ПВЗ
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "ПВЗ"
    И я перенаправляюсь на страницу "/admin-profile/pups"
    И я нажимаю на кнопку "Добавить ПВЗ"
    То я вижу сообщение "Добавить ПВЗ"
    И я жду 1 секунду
    И я ввожу "Кант" в поле "Населенный пункт"
    И я ввожу "ул. Абраимова 52" в поле "Адрес"
    И я ввожу "555333222" в поле где name="phoneNumber"
    И я выбираю значение "Чуйская" в поле "Регион"
    И я нажимаю на кнопку "Добавить"
    И я жду 2 секунды
    То я вижу сообщение "ул. Абраимова 52"

    @editPup
    Сценарий: Редактирования ПВЗ
      Допустим Я авторизован как супер-админ
      И я нажимаю на пункт меню "ПВЗ"
      И я перенаправляюсь на страницу "/admin-profile/pups"
      И я нажимаю на кнопку "Редактировать" рядом с ПВЗ№1 с адресом "ул. Абраимова 52"
      И я жду 1 секунду
      И я очищаю поле "settlement"
      И я ввожу "г.Нарын" в поле "settlement"
      И я очищаю поле "address"
      И я ввожу "ул. Молдобая 16" в поле "address"
      И я очищаю поле "region"
      И я выбираю значение "Нарынская" в поле "Регион"
      И я жду 2 секунды
      И я нажимаю на кнопку "Редактировать"
      И я жду 5 секунд

    @deletePup
    Сценарий: Удаление ПВЗ
    Допустим Я авторизован как супер-админ
      И я нажимаю на пункт меню "ПВЗ"
      И я перенаправляюсь на страницу "/admin-profile/pups"
      И я нажимаю на иконку удаления
      То я вижу сообщение "Вы точно хотите удалить ПВЗ?"
      И я нажимаю на кнопку "Да"
      И я жду 5 секунд