import cc
import gg

fn main() {
	cc.run(draw)
}

fn draw(_ voidptr){
	g := cc.g()
	g.draw_rect_filled(g.mouse_pos_x, g.mouse_pos_y, 20, 20, gg.red)
}