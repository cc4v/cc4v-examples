// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import cc
import gg

fn main() {
	cc.run(draw)
}

fn draw(_ voidptr){
	cc.set_color(gg.red)
	cc.text_size(100)
	cc.text("hello", 10, 10)
}