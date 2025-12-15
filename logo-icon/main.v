// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

module main

import cc
import gg
import sokol.sgl

fn main() {
	cc.run(draw)
}

fn draw() {
	// shows rainbow cc4v logo

	w := f32(cc.width()) + 100 // WORKAROUND margin
	h := f32(cc.height()) + 100 // WORKAROUND margin

	// cc.background(gg.black)
	// cc.set_color(gg.white)

	// cc.set_color(gg.red)
	// cc.rect(0, 0, 100, 100)

	// sgl.load_pipeline(cc.g().pipeline.alpha)
	// sgl.defaults()
	sgl.begin_quads()
	sgl.c4b(255, 0, 0, 255)
	sgl.v2f_c3b(0, 0, 100, 250, 154)
	sgl.v2f_c3b(w, 0, 247, 253, 236)
	sgl.v2f_c3b(w, h, 255, 94, 44)
	sgl.v2f_c3b(0, h, 119, 102, 229)
	sgl.end()

	cc.set_color(gg.white)
	cc.text_size(60)
	cc.text("cc4v:", 240, 100)
	cc.text_size(30)
	cc.text("creative coding framework", 60, 200)
	cc.text("for V language", 60, 230)
}