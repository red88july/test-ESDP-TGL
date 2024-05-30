const {I} = inject();

Given('Я нахожусь на странице {string}', (page: string) => {
  I.amOnPage(page);
});

When('я ввожу {string} в поле {string}', (value: string, label: string) => {
  I.fillField(label, value);
  I.wait(1);
});

When('я нажимаю на поле {string}', (value: string) => {
  I.click(value);
  I.wait(1);
});

When('я выбираю значение {string} в поле {string}', (value: string, label: string) => {
  I.click(label);
  I.click(`//li[contains(text(), "${value}")]`);
  I.wait(1);
});

When('я перехожу на страницу {string}', (page: string) => {
  I.amOnPage(page);
});

When('я нажимаю на кнопку {string}', (label: string) => {
  I.click(`//button[contains(text(),'${label}')]`);
});

When('я нажимаю на кнопку {string}', (label: string) => {
  I.click(`//button[contains(text(),'${label}')]`);
});

When('я кликаю по cсылке {string}', (link: string) => {
  I.click(`//a[contains(text(),"${link}")]`);
  I.wait(2);
});

Then('я вижу сообщение {string}', (text) => {
  I.see(text);
  I.wait(2);
});