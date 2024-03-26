use wasm_bindgen::prelude::*;

#[wasm_bindgen]
pub fn square(number: i32) -> i32 {
    number * number
}