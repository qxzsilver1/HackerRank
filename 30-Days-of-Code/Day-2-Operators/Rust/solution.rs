use std::io::{self,BufRead,Write};
use std::fmt;

fn main() {
    let mut line = String::new();
    let stdin = io::stdin();
    
    line.clear();    
    io::stdout().flush();
    stdin.lock().read_line(&mut line).unwrap();
    let meal_cost = line.trim().parse::<f32>().unwrap();
    
    line.clear(); 
    io::stdout().flush();
    stdin.lock().read_line(&mut line).unwrap();
    let tip_percent = line.trim().parse::<u32>().unwrap();
    
    line.clear(); 
    io::stdout().flush();
    stdin.lock().read_line(&mut line).unwrap();
    let tax_percent = line.trim().parse::<u32>().unwrap();
    
    let tip = meal_cost * (tip_percent as f32 / 100.0);
    let tax = meal_cost * (tax_percent as f32 / 100.0);
    let total_cost = meal_cost + tip + tax;
    
    let rounded_total_cost = total_cost.round();
    
    println!("The total meal cost is {:?} dollars.", rounded_total_cost);
}
