const { I } = inject();

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

When('я нажимаю на пункт меню {string}', (label: string) => {
  I.click(`//span[contains(text(),'${label}')]`);
});

Then('я вижу пустое значение в поле {string}', (label: string) => {
  I.seeInField(label, '');
});

Then('я не вижу сообщение {string}', (text: string) => {
  I.dontSee(text);
});
