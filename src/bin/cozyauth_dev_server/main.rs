use cozyauth::app;

fn main() {
    let greeting = app::greeting("cozyauth dev server");
    println!("{}", greeting);
}
