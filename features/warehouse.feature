#language:ru
Функционал: Склад в Китае
  Как супер-админ
  Мне необходима возможность добавлять новый адрес склада в Китае
  Мне необходима возможность изменять адрес склада в Китае

  @warehouse-edit
  Сценарий: Редактирование адреса склада в Китае
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "Склад в Китае"
    И я перенаправляюсь на страницу "/admin-profile/warehouses"
    И я кликаю по cсылке "Изменить"
    И я вижу сообщение "Обновить склад"
    И я вижу текст "特米TECH" в поле "Название"
    И я вижу текст "广东省佛山市南海区里水镇得胜村横五路5号103仓-AFZUV—" в поле "Адрес"
    И я вижу текст "+86 (17) 324-5242-46" в поле "Номер телефона"
    И я очищаю поле телефона
    И я ввожу " edit" в поле "Название"
    И я ввожу " edit" в поле "Адрес"
    И я ввожу "17324524203" в поле "Номер телефона"
    И я нажимаю на кнопку "Обновить"
    И я перенаправляюсь на страницу "/admin-profile/warehouses"
    И я вижу сообщение "特米TECH edit"
    И я вижу сообщение "广东省佛山市南海区里水镇得胜村横五路5号103仓-AFZUV— edit"
    И я вижу сообщение "8617324524203"

  @warehouse-delete
  Сценарий: Удаление адреса склада в Китае
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "Склад в Китае"
    И я перенаправляюсь на страницу "/admin-profile/warehouses"
    И я нажимаю на кнопку "Удалить"
    И я жду 1 секунду
    И я вижу сообщение "Подтверждение удаления"
    И я нажимаю на кнопку "Подтвердить"
    И я вижу сообщение "В настоящее время складов в Китае нет!"

  @warehouse-add
  Сценарий: Добавление нового склада в Китае
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "Склад в Китае"
    И я перенаправляюсь на страницу "/admin-profile/warehouses"
    И я нажимаю на кнопку "Добавить склад в Китае"
    И я перенаправляюсь на страницу "/admin-profile/warehouses-new"
    И я ввожу "特米TECH" в поле "Название"
    И я ввожу "广东省佛山市南海区里水镇得胜村横五路5号103仓-AFZUV—" в поле "Адрес"
    И я ввожу "17324524246" в поле "Номер телефона"
    И я нажимаю на кнопку "Добавить"
    И я перенаправляюсь на страницу "/admin-profile/warehouses"
    И я вижу сообщение "特米TECH"
    И я вижу сообщение "广东省佛山市南海区里水镇得胜村横五路5号103仓-AFZUV—"
    И я вижу сообщение "8617324524246"


