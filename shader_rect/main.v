// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

module main

import cc
import sokol.gfx

#include "@VMODROOT/shader.h"

fn C.shader_rect_shader_rect_shader_desc(gfx.Backend) &gfx.ShaderDesc

struct Params {
	time f32
	width f32
	height f32
	padding f32
}

struct Data {
mut:
	shader cc.ShaderRect
}

fn main() {
	cc.on_init_with(setup)
	cc.run_new[Data](draw)
}

fn setup(mut data Data) {
	data.shader = cc.shader_rect_from_desc(C.shader_rect_shader_rect_shader_desc(gfx.query_backend()), 0)
}

fn draw(data &Data) {
	params := Params{f32(cc.elapsed_time()), f32(cc.width()), f32(cc.height()), 0}
	range := gfx.Range{ptr: &params, size: sizeof(Params)}
	mut shader := data.shader
	shader.begin()
	shader.set_uniform(.fs, 0, &range)
	shader.rect(0, 0, f32(cc.width()), f32(cc.height()))
}