import { Given, When, Then } from '@wdio/cucumber-framework';
import { expect } from '@wdio/globals'

import loginPage from '../pageobjects/login.page.js';

Given(/^User is located on the login page of saucedemo website$/, async () => {
    await loginPage.open();
});

When(/^User login with '(\w+)' and '(.+)'$/, async (username, password) => {
    await loginPage.login(username, password)
});

When(/^User click Login button$/, async () => {
    await loginPage.clickLoginButton();
});

Then(/^User should see '(.*)' error message$/, async (message) => {
    await expect(loginPage.errorContainer).toBeExisting();
    await expect(loginPage.errorContainer).toHaveTextContaining(message);
});

