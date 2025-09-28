import cc

struct App {
	cc.BaseApp
}

fn (mut app App) setup(){
	println("setup")
}

fn (mut app App) update(){
	// println("update")
}

fn (mut app App) draw(){
	// println("draw")
}

fn (mut app App) exit(){
	println("exit")
}

fn main() {
	cc.run_app_new[App]()
	
	// mut app := &App{}
	// cc.run_app(mut app)
}