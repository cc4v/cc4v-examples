import cc
import gg

fn main() {
	cc.run(draw)
}

fn draw(_ voidptr){
	cc.set_color(gg.red)
	cc.rect(10, 10, 100, 100)
}