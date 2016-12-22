use std::io::{self,BufRead,Write};

fn main() {
    let mut line = String::new();
    let stdin = io::stdin();
    stdin.lock().read_line(&mut line).unwrap();
    println!("Hello, World.");
    
    println!("{}", line);
    //try!(io::stdout().write(line));
}
