#import "@preview/cetz:0.2.2"

#cetz.canvas({
  import cetz.draw: *
  
  let size_1 = (1, 0.6)
  // grid((0,0), (13,6), stroke: gray)

  rect((4.5,0.5), (rel: (4, 3)), fill: gray.lighten(80%), name: "eom", stroke: none)
  content("eom.north", [EOM], anchor: "north", padding: .2)

  rect((-0.5,0.5), (rel: (4, 3)), fill: gray.lighten(80%), name: "radiation", stroke: none)
  content("radiation.south", [Radiation source], anchor: "south", padding: .2)

  rect((0,2), (rel: size_1), name: "laser")
  content("laser.north", [Laser], anchor: "south", padding: .2)

  rect((2,2), (rel: size_1), name: "opo")
  content("opo.north", [OPO], anchor: "south", padding: .2)

  group({
      translate(x: 4, y: 2+0.3)
      rotate(z: 45deg)
      rect((-0.05,-0.3), (0.05,0.3))
  }, name: "bs1")

  group({
      translate(x: 4, y: 0+0.3)
      rotate(z: 45deg)
      rect((-0.05,-0.3), (0.05,0.3), fill: black)
  }, name: "bs11")

  group({
      translate(x: 5, y: 2+0.3)
      rotate(z: 45deg)
      rect((-0.05,-0.3), (0.05,0.3))
  }, name: "bs2")

  group({
      translate(x: 5, y: 1)
      rotate(z: 45deg)
      rect((-0.05,-0.3), (0.05,0.3), fill: black)
  }, name: "bs21")

  rect((6.5-0.3,2), (rel: (0.6,0.6)), name: "eom2")

  group({
      translate(x: 8, y: 2+0.3)
      rotate(z: 45deg)
      rect((-0.05,-0.3), (0.05,0.3))
  }, name: "bs3")

  group({
      translate(x: 8, y: 1)
      rotate(z: 45deg)
      rect((-0.05,-0.3), (0.05,0.3), fill: black)
  }, name: "bs31")

  group({
      translate(x: 10, y: 2+0.3)
      rect((-0.5,-0.3), (0.5,0.3), name: "cell")
      rect((-0.2,0.4), (0.2,0.3))
      // content("cell", [#sym.circle.nested])
  }, name: "cell")

  rect((11.5-0.1,2), (rel: (0.2,0.6)), name: "power")
  content("power.north", [PDA], anchor: "south", padding: .2)

  rect((11.5-0.1,0), (rel: (0.2,0.6)), name: "wave")
  content("wave.north", [Spektrometer], anchor: "south", padding: .2)

  group({
      translate(x: 6, y: 5+0.4)
      rect((-0.6,-0.3), (0.6,0.4))
      rect((-0.55,-0.25), (0.55,0.35))
      line((-0.6,-0.3), (-0.8,-0.5), (0.8,-0.5), (0.6,-0.3), closed: true)
  }, name: "pc")

  group({
    set-style(stroke: (paint: red))
    line("laser", "opo", "bs1", "bs2")
    line("bs2", "bs21", "bs31", "bs3", "bs2")
    line("bs3", "power")
    line("bs1", "bs11", "wave")
  })

  group({
    set-style(stroke: (paint: black, dash: "dotted"))
    line("wave", (rel: (1, 0)), ((), "|-", "pc"), "pc")
    line("cell", ((), "|-", "pc"))
    line("power", (rel: (1, 0)))

    line("pc", ((), "-|", "laser"), "laser")
    line("opo", ((), "|-", "pc"))
  })
})