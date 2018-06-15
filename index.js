const puppeteer = require('puppeteer');

async function run() {
	// const height = 1600;
	// const width = 1400;
	const browser = await puppeteer.launch();
	const page = await browser.newPage();
	// await page.setViewport({ width, height })
	// const pageToClick = '#content > div > div.search-results > div:nth-child(6) > h2 >a';
	await page.goto(process.argv[2]);
	// await Promise.all([
	// 	page.waitForNavigation(),
	// 	page.click(pageToClick)
	// ]);
	await page.screenshot({path: 'screenshots/gov.png', fullPage: true});
	let bodyHTML = await page.evaluate(() => document.body.innerHTML);
	await page.close();
	await browser.close();
	console.log(bodyHTML);
}

run();
