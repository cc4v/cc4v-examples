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