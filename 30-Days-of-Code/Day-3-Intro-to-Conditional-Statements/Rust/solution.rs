use std::io::{self,BufRead};

fn main() {
    let mut line = String::new();
    let stdin = io::stdin();
    
    line.clear(); 
    stdin.lock().read_line(&mut line).unwrap();
    let num = line.trim().parse::<u32>().unwrap();

    if num % 2 == 1 {
        println!("Weird");
    } else if num >= 6 && num <= 20 {
        println!("Weird");
    } else {
        println!("Not Weird");
    }
    
}
