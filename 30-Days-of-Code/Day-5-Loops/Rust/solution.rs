use std::io;

fn main() -> () {
    let mut line = String::new();
    io::stdin().read_line(&mut line).unwrap();
    
    let n:u32 = line.trim().parse().unwrap();
    
    for i in 1..11 {
        println!("{} x {} = {}", n, i, n*i);
    }
}
