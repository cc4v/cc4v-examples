import cc

struct Data {
	str string
}

fn main() {
	data := Data{
		str: "world"
	}
	cc.set_data(&data)
	cc.run(draw)
}

fn draw(dat &Data){
	cc.text("hello ${dat.str}", 10, 10)
}