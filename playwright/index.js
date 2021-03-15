const { webkit } = require('playwright');

(async () => {
  const { chromium, webkit, firefox } = playwright;
  
  for (const browserType of [chromium, webkit, firefox]) {
    // launch browser
    const browser = await browserType.launch();
    // create a context
    const context = await browser.newContext();
    // create a page
    const page = await browser.newPage();

    // playwright visit
    await page.goto('http://whatsmyuseragent.org/');
    await page.screenshot({ path: `example.png` });
    
    // Cloose the browser
    await browser.close();
  }
  
})();
