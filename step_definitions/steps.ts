const {I} = inject();

Given('Я нахожусь на странице {string}', (page: string) => {
  I.amOnPage(page);
});

Given('Я авторизован как супер-админ', () => {
  I.amOnPage('/login');
  I.fillField('Email', 'super@gmail.com');
  I.fillField('Пароль', 'qwerty');
  I.click(`//button[contains(text(),'Войти')]`);
  I.seeInCurrentUrl('/admin-profile/statistics');
});

When('я ввожу {string} в поле {string}', (value: string, label: string) => {
  I.fillField(label, value);
});

When('я нажимаю на поле {string}', (value: string) => {
  I.click(value);
});

When('я выбираю значение {string} в поле {string}', (value: string, label: string) => {
  I.click(label);
  I.click(`//li[contains(text(), "${value}")]`);
});

When('я перехожу на страницу {string}', (page: string) => {
  I.amOnPage(page);
});

When('я нажимаю на кнопку {string}', (label: string) => {
  I.click(`//button[contains(text(),'${label}')]`);
});

When('я кликаю по cсылке {string}', (link: string) => {
  I.click(`//a[contains(text(),"${link}")]`);
});

Then('я вижу сообщение {string}', (text: string) => {
  I.see(text);
});

Then('я жду 5 секунд', () => {
  I.wait(5);
});

Then('я жду 1 секунду', () => {
  I.wait(1);
});

Then('я перенаправляюсь на страницу {string}', (page: string) => {
  I.seeInCurrentUrl(page);
});

Then('я жду 2 секунды', () => {
  I.wait(2);
});

Then('я вижу текст в таблице {string}', (value: string) => {
  I.see(value, '//th');
});

Then('я вижу текст в инпуте {string}', (value: string) => {
  I.seeInField(`//input[@value="${value}"]`, value);
});

Then('я удаляю текст в поле {string}', (value: string) => {
  I.clearField(value);
});

When('я ввожу {string} в поле {string}', (value: string, label: string) => {
  I.fillField(label, value);
});

When('я нажимаю на пункт меню {string}', (label: string) => {
  I.click(`//span[contains(text(),'${label}')]`);
});

Then('я вижу пустое значение в поле {string}', (label: string) => {
  I.seeInField(label, '');
});

Then('я вижу текст {string} в поле {string}', (value: string, label: string) => {
  I.seeInField(label, value);
});

Then('я не вижу сообщение {string}', (text: string) => {
  I.dontSee(text);
});

Then('я очищаю поле телефона', () => {
  I.click('#phoneNumber');
  for (let i = 0; i < 11; i++) {
    I.pressKey('Backspace');
  }
});

When('я ввожу {string} в поле где name={string}', (value: string, name: string) => {
  I.fillField(name, value);
});

When('я нажимаю на ссылку {string}', (text: string) => {
  I.click(`//a[contains(text(),'${text}')]`);
});
When('я нажимаю на иконку {string}', (name) => {
  I.click(`[data-testid=${name}]`);
});
When('я вижу инпут с name={string}', (id) => {
  I.seeElement(`[name=${id}]`);
});

Then('я очищаю поле {string}', async (value: string) => {
  const field = `input[name="${value}"]`;
  I.click(field);
  const fieldValue = await I.grabValueFrom(field);
  const fieldLength = fieldValue.length;
  for (let i = 0; i < fieldLength; i++) {
    I.pressKey('Backspace');
  }
});

When('я загружаю изображение {string} в поле {string}', (filePath: string, label: string) => {
  I.attachFile(`input[name="image"]`, filePath);
});
Then('я жду 3 секунду', () => {
  I.wait(3)
});

Then('я нажимаю на имя пользователя в правом верхнем углу экрана', () => {
  I.click('#username');
});

Then('я нажимаю на элемент меню {string}', (text: string) => {
  I.click(`//li[contains(text(),'${text}')]`);
});