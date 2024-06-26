#language:ru
Функционал: Нужен доступ к функционалу Калькулятор
  В верхней части сайта должна распологатся ссылка на калькулятор

  @calculator
  Сценарий: Проверка формы Калькулятор
    Допустим Я нахожусь на странице "/register"
    Если я кликаю по cсылке "Калькулятор"
    То я перехожу на страницу "/calculate"
    И я ввожу "20" в поле "Длина в см"
    И я ввожу "20" в поле "Ширина в см"
    И я ввожу "30" в поле "Высота в см"
    И я ввожу "20" в поле "Вес в кг"
    И я нажимаю на кнопку "Рассчитать"
    То я вижу сообщение "Груз размером 20 * 20 * 30 (см) и весом 20 кг будет доставляться по физическому весу!"