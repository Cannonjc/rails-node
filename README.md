# README

To run this app:

- run: bundle install
- run: rails db:create db:migrate
- run: npm install
- run: rails s

- To run the crawl, go to localhost:3000/pub_tests and then add a full url to a new pub. Then in that pub's show page, click the link "run crawl". In the screenshots folder you will find a full page screenshot. The response in the controller is assigned to '@response', which is just the full body's html.

- Notes: The puppeteer browser, Chromium, is headless. If needed to see the browser, pass in the "headless: false" argument into the launch function. When launching with the UI, it might be necessary to launch setting the window height and width, and then setting the viewport of the page with the same dimensions. See commented code.

- Also, function 'waitForNavigation' has changed recently and must be put before navigating to a new page with a click or goto. Easiest way found so far is to wrap in a promise so there's no possibility of hanging. See commented code.
