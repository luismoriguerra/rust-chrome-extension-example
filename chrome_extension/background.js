import init, { square } from './pkg/rust_chrome_extension.js';

async function main() {
    await init();
    console.log("The square of 2 is: ", square(2));
}

main();
