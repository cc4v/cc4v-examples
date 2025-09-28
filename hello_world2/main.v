import cc

struct App {
	cc.BaseApp
mut:
	count int
}

fn (mut app App) setup(){
	println("setup")
	app.count = 1
}

fn (mut app App) update(){
	app.count += 1
	if app.count > 100 {
		app.count = 1
	}
}

fn (mut app App) draw(){
	cc.text("count: ${app.count}", 10, 10)
}

fn (mut app App) exit(){
	println("exit")
}

fn main() {
	cc.run_app_new[App]()

	// mut app := &App{}
	// cc.run_app(mut app)
}