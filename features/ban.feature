#language:ru
Функционал: Запретные товары
  Как супер и админ
  Мне нужно добавлять на страницу запретные товары
  Так же редактрировать и удалять запретные товары

  @addBanProduct
  Сценарий: Добавление запретного товара
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "Запрет"
    То я перенаправляюсь на страницу "/admin-profile/banned"
    И я нажимаю на кнопку "Добавить"
    И я вижу сообщение "Добавить товар или категорию товаров"
    И я ввожу "Запретный товар" в поле "Название"
    И я нажимаю на кнопку "Подтвердить"
    И я вижу текст в инпуте "Запретный товар"


  @deleteBanProduct
  Сценарий: Удаление запретного товара
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "Запрет"
    То я перенаправляюсь на страницу "/admin-profile/banned"
    И я вижу текст в инпуте "Товар 1"
    И я нажимаю на кнопку "Удалить"
    И я нажимаю на кнопку "Подтвердить"
    И я вижу текст в инпуте "Товар 2"

  @EditBanProduct
  Сценарий: Редактирование запретных товаров
    Допустим Я авторизован как супер-админ
    И я нажимаю на пункт меню "Запрет"
    То я перенаправляюсь на страницу "/admin-profile/banned"
    И я вижу текст в инпуте "Товар 3"
    И я нажимаю на кнопку "Редактировать"
    И я удаляю текст в поле "Название"
    И я ввожу "Запретный товар" в поле "Название"
    И я нажимаю на кнопку "Подтвердить"
    И я вижу текст в инпуте "Запретный товар"