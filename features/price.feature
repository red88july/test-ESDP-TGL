#language:ru
Функционал: Нужен доступ к функционалу Цена
  как супер
  мне можно редактировать курс и цену за доставку

  @price
  Сценарий: Получить доступ к странице Цена и получить возможность редактировать
    Допустим Я авторизован как супер-админ
    И Я нахожусь на странице "/admin-profile/price"
    И я вижу сообщение "Курс доллара и цена за доставку"
    И я вижу сообщение "Цена за доставку: 5 USD Курс доллара: 88 USD"
    И я нажимаю на кнопку "Редактировать"
    И я вижу сообщение "Редактирование"
    И я очищаю поле "deliveryPrice"
    И я ввожу "10" в поле "deliveryPrice"
    И я очищаю поле "exchangeRate"
    И я ввожу "92" в поле "exchangeRate"
    И я жду 1 секунду
    И я нажимаю на кнопку "Обновить"
    И я жду 5 секунд