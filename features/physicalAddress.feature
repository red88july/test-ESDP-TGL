#language:ru
Функционал:Создание, редактирование и удаление физ. адреса
  Как супер-админ
  Мне необходима возможность создания, редактирования и удаления физ. адреса

  @add-physicalAddress
  Сценарий: Создание Физического адреса
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "Физический адрес"
    И я перенаправляюсь на страницу "/admin-profile/company-addresses"
    И я нажимаю на кнопку "Добавить адрес"
    И я вижу сообщение "Новый адрес"
    И я жду 1 секунду
    И я ввожу "Test address" в поле "Адрес"
    И я ввожу "Test city" в поле "Город"
    И я ввожу "555333" в поле где name="Индекс"
    И я ввожу "Test district" в поле "Район"
    И я нажимаю на кнопку "Добавить"
    И я жду 2 секунды
    То я вижу сообщение "Test address"

  @edit-physicalAddress
  Сценарий: Создание Физического адреса
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "Физический адрес"
    И я перенаправляюсь на страницу "/admin-profile/company-addresses"
    И я нажимаю на кнопку "Редактировать"
    И я вижу сообщение "Обновить адрес"
    И я жду 1 секунду
    И я очищаю поле "address"
    И я ввожу "Test address 2" в поле "Адрес"
    И я очищаю поле "city"
    И я ввожу "Test city 2" в поле "Город"
    И я очищаю поле "postCode"
    И я ввожу "654321" в поле где name="Индекс"
    И я очищаю поле "district"
    И я ввожу "Test district 2" в поле "Район"
    И я нажимаю на кнопку "Обновить"
    И я жду 2 секунды
    То я вижу сообщение "Test address 2"


  @delete-physicalAddress
  Сценарий: Удаление Физического адреса
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "Физический адрес"
    И я перенаправляюсь на страницу "/admin-profile/company-addresses"
    И я нажимаю на кнопку "Удалить"
    И я жду 2 секунды
    То я вижу сообщение "Нет доступных адресов"