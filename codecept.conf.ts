import { setCommonPlugins, setHeadlessWhen } from '@codeceptjs/configure';
// turn on headless mode when running with HEADLESS=true environment variable
// export HEADLESS=true && npx codeceptjs run
setHeadlessWhen(process.env.HEADLESS);

// enable all common plugins https://github.com/codeceptjs/configure#setcommonplugins
setCommonPlugins();

export const config: CodeceptJS.MainConfig = {
  tests: './*_test.ts',
  output: './output',
  helpers: {
    Puppeteer: {
      url: 'http://localhost:5183',
      show: process.env['CI'] !== 'true',
      windowSize: '1200x900',
      chrome: {
        args: [
          '--disable-web-security',
          '--disable-features=IsolateOrigins,site-per-process',
          '--allow-insecure-localhost',
          '--disable-password-generation',
          '--disable-save-password-bubble',
          '--disable-popup-blocking',
          '--disable-notifications',
        ],
      },
    },
  },
  gherkin: {
    features: './features/*.feature',
    steps: ['./step_definitions/steps.ts'],
  },
  include: {
    I: './steps_file',
  },
  name: 'tests',
};
