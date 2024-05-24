const {I} = inject();

Given('Я нахожусь на странице {string}', (page: string) => {
    I.amOnPage(page);
});

When('я ввожу {string} в поле {string}', ( value: string, label: string) => {
    I.fillField(label, value);
    I.wait(2);
});

When('я нажимаю на поле {string}', (value: string) => {
    I.click(value)
});

When('я в поле {string} выбираю значение {string} ', (label: string, value: string) => {
   I.fillField(label, value);
});

When('я перехожу на страницу {string}', (page: string) => {
    I.amOnPage(page);
});







