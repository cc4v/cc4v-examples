// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import cc

struct Data {
mut:
	image cc.Image
}

fn main() {
	cc.on_init_with(setup)
	cc.run_new[Data](draw)

	// or:
	// cc.run_with(draw, &Data{})
}

fn setup(mut d Data) {
	d.image = cc.load_image("assets/sample.png") or { panic(err) }
}

fn draw(d &Data){
	cc.image(d.image, 0, 0)
	cc.image_with_size(d.image, 60, 0, 50, 100)
}