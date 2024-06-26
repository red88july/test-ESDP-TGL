#language:ru
Функционал: Нужен доступ к функционалу Социальные сети
  как супер-админ
  я могу добавлять социальную сеть, редактировать и удалять

  @socials-add
  Сценарий: Получить доступ к добавлении, редактировании и удалении соц. сетей
    Допустим Я авторизован как супер-админ
    И Я нахожусь на странице "/admin-profile/socials"
    И я нажимаю на кнопку "Добавить социальную сеть"
    И я вижу сообщение "Добавить"
    И я ввожу "Telegram" в поле "name"
    И я ввожу "https://web.telegram.org/" в поле "link"
    И я загружаю изображение "./test_images/telegram.png" в поле "image"
    И я нажимаю на кнопку "Подтвердить"
    И я жду 2 секунды
    То я вижу сообщение "Telegram"

  @socials-edit
  Сценарий: Получить к редактировании соц. сетей
    Допустим Я авторизован как супер-админ
    И Я нахожусь на странице "/admin-profile/socials"
    И я нажимаю на кнопку "Изменить"
    И я вижу сообщение "Редактировать"
    И я очищаю поле "name"
    И я ввожу "social network change" в поле "name"
    И я очищаю поле "link"
    И я ввожу "https/testing_link" в поле "link"
    И я нажимаю на кнопку "Подтвердить"
    То я вижу сообщение "social network change"

  @socials-edit
  Сценарий: Получить к удалению соц. сетей
    Допустим Я авторизован как супер-админ
    И Я нахожусь на странице "/admin-profile/socials"
    И я нажимаю на иконку "CancelIcon"
    И я жду 1 секунду