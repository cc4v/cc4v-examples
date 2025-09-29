// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import cc

fn main() {
	cc.title("hello")
	cc.run(draw)
}

fn draw(_ voidptr){
	// cc.title("hello")
	cc.text("hello world", 10, 10)
}