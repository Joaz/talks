#!/usr/bin/ruby1.9.3

require "rubygems"
require "crystalscad"

include CrystalScad

class MyPart < CrystalScad::Assembly
	def show
		part(true)
	end

	def output
		part(false)
	end

	def part(show)
		res = cube([20,20,5]).center_xy
		bolt = Bolt.new(3,10)
		res-= bolt.output # produces a d = 3.3mm cylinder
		res+= bolt.show if show # produces a d = 3mm bolt
		res
	end
	
end	


MyPart.new.show.save("show.scad","$fn=64;") 
MyPart.new.output.save("output.scad","$fn=64;") 

