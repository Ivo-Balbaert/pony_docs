use "collections"

actor Main
  new create(env: Env) =>
    var str: String = ""
    for i in Range[F32](1, 4) do
      let rt = Rectangle(i, i + 2)
      // make a String str with the info
      str = "Width and height: " + rt.get_width_and_height() + 
            "\nCircumference: " + rt.circumference().string() +
            "\nArea: " + rt.area().string() + "\n"
      env.out.print(str)
    end

class Rectangle
  var _width: F32 = 0
  var _height: F32 = 0

  new create(width: F32, height: F32) =>
    _width = width
    _height = height

  fun get_width_and_height(): String => 
    _width.string() + " " + _height.string()

  fun circumference(): F32 =>
    2 * (_width + _height)

  fun area(): F32 =>
     _width * _height

// output:
// Width and height: 1 3
// Circumference: 8
// Area: 3

// Width and height: 2 4
// Circumference: 12
// Area: 8

// Width and height: 3 5
// Circumference: 16
// Area: 15
