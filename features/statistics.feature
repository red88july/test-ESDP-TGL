#language:ru
Функционал: Нужен доступ к функционалу Статистика

  @statistics
  Сценарий: Получить доступ к странице Статистика
    Допустим Я авторизован как супер-админ
    И я выбираю значение "Таласская" в поле "Регион"
    И я жду 1 секунду
    И я выбираю значение "ПВЗ№3 Таласская обл., ул.Ленина 186/1, г.Талас" в поле "ПВЗ"
    И я жду 1 секунду
    И я выбираю значение "За год" в поле "Период"
    И я нажимаю на кнопку "Поиск"
    То я вижу результат поиска со значением "User3" в ячейке 1
    И я нажимаю на кнопку "Сбросить"
    То я вижу результат поиска со значением "User1" в ячейке 1
