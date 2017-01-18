use std::io;
use std::io::prelude::*;

fn main() {
    let stdin = io::stdin();
    
    stdin.lock().lines().next();
    
    for line in stdin.lock().lines() {
        let s = line.unwrap();
        let mut firstHalf = String::new();
        let mut secondHalf = String::new();
        for (i, c) in s.char_indices() {
            if i % 2 == 0 {
                firstHalf.push(c);
            } else {
                secondHalf.push(c);
            }
        }
        println!("{} {}", firstHalf, secondHalf);
    }
}
