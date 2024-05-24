const {I} = inject();

Given('Я нахожусь на странице {string}', (page: string) => {
  I.amOnPage(page);
});

When('я ввожу {string} в поле {string}', (value: string, label: string) => {
  I.fillField(label, value);
  I.wait(2);
});

When('я нажимаю на поле {string}', (value: string) => {
  I.click(value);
  I.wait(2);
});

When('я выбираю значение {string} в поле {string}', (value: string, label: string) => {
  I.click(label);
  I.click(`//li[contains(text(), "${value}")]`);
  I.wait(2);
});

When('я перехожу на страницу {string}', (page: string) => {
  I.amOnPage(page);
});

When('я нажимаю на кнопку {string}', (label: string) => {
  I.click(`//button[contains(text(),'${label}')]`);
});






