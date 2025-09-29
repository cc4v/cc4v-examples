// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import cc
// import gg

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

// fn (mut app App) on_event(event &gg.Event){
// 	println("event: ${event}")
// }

fn (mut app App) exit(){
	println("exit")
}

fn main() {
	cc.run_app_new[App]()

	// mut app := &App{}
	// cc.run_app(mut app)
}