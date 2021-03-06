import numpy
import moves
import solver
import random
import copy

# 'g' -> Green
# 'w' -> White
# 'r' -> Red
# 'b' -> Blue
# 'o' -> Orange
# 'y' -> Yellow
#
# Move Orientation:
# The center face is defined as columns 6-8 in rows 3-5
# All moves are with respect to look directly at the center face
# An i denotes an inversion
# By covention, we are looking at face we are twisting
# and the standard twist is clockwise and inverted is counter-clockwise
# R: Turns the right column up
#
# From looking at the front face:
# Ri: Turns the right column down
# L: Turns the left column down
# Li: Turns the left column up
# B: Turns the back column counter clockwise
# Bi: Turns the back column clockwise
# D: Turns the bottom row to the right
# Di: Turns the bottom row to the left
# F: Turns the front face clockwise
# Fi: Turns the front face counterclockwise
# U: Turns the upper face to the left
# Ui: Turns the lower face to the right

movelist = []

# Data set a is end goal
a = [[0, 0, 0, 0, 0, 0, 'w', 'w', 'w', 0, 0, 0],
     [0, 0, 0, 0, 0, 0, 'w', 'w', 'w', 0, 0, 0],
     [0, 0, 0, 0, 0, 0, 'w', 'w', 'w', 0, 0, 0],
     ['g', 'g', 'g', 'r', 'r', 'r', 'b', 'b', 'b', 'o', 'o', 'o'],
     ['g', 'g', 'g', 'r', 'r', 'r', 'b', 'b', 'b', 'o', 'o', 'o'],
     ['g', 'g', 'g', 'r', 'r', 'r', 'b', 'b', 'b', 'o', 'o', 'o'],
     [0, 0, 0, 0, 0, 0, 'y', 'y', 'y', 0, 0, 0],
     [0, 0, 0, 0, 0, 0, 'y', 'y', 'y', 0, 0, 0],
     [0, 0, 0, 0, 0, 0, 'y', 'y', 'y', 0, 0, 0]]


#Data set b is sample scrambled data
#b = [[0, 0, 0, 0, 0, 0, 'y', 'g', 'w', 0, 0, 0],
#     [0, 0, 0, 0, 0, 0, 'b', 'o', 'g', 0, 0, 0],
#     [0, 0, 0, 0, 0, 0, 'o', 'r', 'r', 0, 0, 0],
#     ['b', 'r', 'b', 'r', 'w', 'b', 'y', 'y', 'g', 'y', 'o', 'r'],
#     ['o', 'y', 'g', 'w', 'g', 'r', 'w', 'w', 'b', 'r', 'b', 'w'],
#     ['w', 'y', 'o', 'g', 'o', 'w', 'g', 'b', 'w', 'o', 'y', 'g'],
#     [0, 0, 0, 0, 0, 0, 'o', 'y', 'y', 0, 0, 0],
#     [0, 0, 0, 0, 0, 0, 'b', 'r', 'y', 0, 0, 0],
#     [0, 0, 0, 0, 0, 0, 'y', 'o', 'r', 0, 0, 0]]

stage5 = [[0, 0, 0, 0, 0, 0, 'y', 'r', 'g', 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 'r', 'r', 'r', 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 'y', 'r', 'b', 0, 0, 0],
      ['w', 'w', 'r', 'g', 'g', 'b', 'r', 'b', 'w', 'r', 'y', 'r'],
      ['g', 'g', 'g', 'y', 'y', 'y', 'b', 'b', 'b', 'w', 'w', 'w'],
      ['g', 'g', 'g', 'y', 'y', 'y', 'b', 'b', 'b', 'w', 'w', 'w'],
      [0, 0, 0, 0, 0, 0, 'o', 'o', 'o', 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 'o', 'o', 'o', 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 'o', 'o', 'o', 0, 0, 0]]

stage6 =[[0, 0, 0, 0, 0, 0, 'r', 'r', 'r', 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 'r', 'r', 'r', 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 'r', 'r', 'r', 0, 0, 0],
         ['b', 'y', 'b', 'w', 'b', 'w', 'g', 'g', 'g', 'y', 'w', 'y'],
         ['g', 'g', 'g', 'y', 'y', 'y', 'b', 'b', 'b', 'w', 'w', 'w'],
         ['g', 'g', 'g', 'y', 'y', 'y', 'b', 'b', 'b', 'w', 'w', 'w'],
         [0, 0, 0, 0, 0, 0, 'o', 'o', 'o', 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 'o', 'o', 'o', 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 'o', 'o', 'o', 0, 0, 0]]




d = [[0, 0, 0, 0, 0, 0, 'w', 'w', 'o', 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 'b', 'b', 'b', 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 'w', 'w', 'o', 0, 0, 0],
	['w', 'r', 'r', 'b', 'y', 'b', 'o', 'o', 'y', 'g', 'o', 'g'],
	['w', 'o', 'w', 'b', 'w', 'g', 'r', 'r', 'r', 'b', 'y', 'g'],
	['g', 'o', 'g', 'w', 'r', 'r', 'b', 'y', 'b', 'o', 'o', 'y'],
	[0, 0, 0, 0, 0, 0, 'y', 'g', 'y', 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 'y', 'g', 'y', 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 'r', 'g', 'r', 0, 0, 0]]

e = [[0, 0, 0, 0, 0, 0, 'g', 'b', 'o', 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 'g', 'w', 'w', 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 'w', 'w', 'w', 0, 0, 0],
	['g', 'o', 'r', 'w', 'w', 'r', 'b', 'b', 'b', 'o', 'o', 'y'],
	['g', 'o', 'y', 'r', 'g', 'r', 'b', 'r', 'b', 'y', 'b', 'y'],
	['g', 'o', 'g', 'o', 'w', 'b', 'o', 'r', 'b', 'y', 'o', 'y'],
	[0, 0, 0, 0, 0, 0, 'y', 'g', 'r', 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 'r', 'y', 'y', 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 'w', 'g', 'r', 0, 0, 0]]


b =[[0, 0, 0, 0, 0, 0, 'o', 'r', 'b', 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 'g', 'y', 'o', 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 'w', 'b', 'w', 0, 0, 0],
	['w', 'y', 'y', 'g', 'o', 'r', 'b', 'o', 'g', 'r', 'w', 'o'],
	['w', 'b', 'r', 'b', 'r', 'g', 'r', 'g', 'y', 'o', 'o', 'r'],
	['g', 'w', 'o', 'y', 'g', 'g', 'o', 'y', 'r', 'b', 'b', 'y'],
	[0, 0, 0, 0, 0, 0, 'w', 'b', 'y', 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 'y', 'w', 'w', 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 'b', 'g', 'r', 0, 0, 0]]

stage5 = [[0, 0, 0, 0, 0, 0, 'y', 'r', 'g', 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 'r', 'r', 'r', 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 'y', 'r', 'b', 0, 0, 0],
      ['w', 'w', 'r', 'g', 'g', 'b', 'r', 'b', 'w', 'r', 'y', 'r'],
      ['g', 'g', 'g', 'y', 'y', 'y', 'b', 'b', 'b', 'w', 'w', 'w'],
      ['g', 'g', 'g', 'y', 'y', 'y', 'b', 'b', 'b', 'w', 'w', 'w'],
      [0, 0, 0, 0, 0, 0, 'o', 'o', 'o', 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 'o', 'o', 'o', 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 'o', 'o', 'o', 0, 0, 0]]

stage6 =[[0, 0, 0, 0, 0, 0, 'r', 'r', 'r', 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 'r', 'r', 'r', 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 'r', 'r', 'r', 0, 0, 0],
         ['b', 'y', 'b', 'w', 'b', 'w', 'g', 'g', 'g', 'y', 'w', 'y'],
         ['g', 'g', 'g', 'y', 'y', 'y', 'b', 'b', 'b', 'w', 'w', 'w'],
         ['g', 'g', 'g', 'y', 'y', 'y', 'b', 'b', 'b', 'w', 'w', 'w'],
         [0, 0, 0, 0, 0, 0, 'o', 'o', 'o', 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 'o', 'o', 'o', 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 'o', 'o', 'o', 0, 0, 0]]
		 
whitebottom = [[0, 0, 0, 0, 0, 0, 'w', 'w', 'o', 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 'o', 'y', 'g', 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 'g', 'r', 'y', 0, 0, 0],
               ['w', 'b', 'g', 'r', 'b', 'o', 'y', 'b', 'o', 'b', 'w', 'g'],
               ['g', 'g', 'y', 'b', 'o', 'y', 'g', 'b', 'r', 'y', 'r', 'r'],
               ['r', 'y', 'w', 'o', 'w', 'g', 'r', 'o', 'r', 'w', 'w', 'y'],
               [0, 0, 0, 0, 0, 0, 'y', 'g', 'b', 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 'r', 'w', 'o', 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 'b', 'o', 'b', 0, 0, 0]]


#tricky = [[0, 0, 0, 0, 0, 0, 'g', 'w', 'w', 0, 0, 0],
#		  [0, 0, 0, 0, 0, 0, 'o', 'w', 'y', 0, 0, 0],
#		  [0, 0, 0, 0, 0, 0, 'w', 'y', 'y', 0, 0, 0],
#		  ['o', 'g', 'r', 'w', 'w', 'o', 'g', 'g', 'r', 'g', 'r', 'b'],
#		  ['o', 'g', 'y', 'o', 'r', 'b', 'r', 'b', 'o', 'b', 'o', 'g'],
#		  ['b', 'y', 'o', 'y', 'b', 'o', 'g', 'w', 'b', 'y', 'r', 'w'],
#		  [0, 0, 0, 0, 0, 0, 'y', 'r', 'r', 0, 0, 0],
#		  [0, 0, 0, 0, 0, 0, 'w', 'y', 'g', 0, 0, 0],
#		  [0, 0, 0, 0, 0, 0, 'b', 'b', 'r', 0, 0, 0]]


tricky = [[0, 0, 0, 0, 0, 0, 'r', 'r', 'o', 0, 0, 0],
		  [0, 0, 0, 0, 0, 0, 'o', 'b', 'b', 0, 0, 0],
		  [0, 0, 0, 0, 0, 0, 'w', 'b', 'w', 0, 0, 0],
		  ['y', 'y', 'y', 'b', 'w', 'b', 'o', 'r', 'r', 'b', 'o', 'b'],
		  ['b', 'y', 'w', 'b', 'o', 'o', 'y', 'w', 'r', 'w', 'r', 'y'],
		  ['y', 'y', 'y', 'o', 'o', 'o', 'w', 'w', 'w', 'r', 'r', 'r'],
		  [0, 0, 0, 0, 0, 0, 'g', 'g', 'g', 0, 0, 0],
		  [0, 0, 0, 0, 0, 0, 'g', 'g', 'g', 0, 0, 0],
		  [0, 0, 0, 0, 0, 0, 'g', 'g', 'g', 0, 0, 0]]

#solver.finalPrint(tricky, movelist)
#solver.Solve(tricky, movelist)
##solver.Multicolored(e, movelist)
#solver.finalPrint(tricky, movelist)

i = 0;

c = 0
while (c < 1000):
	c += 1
	i += 1
	print(i)
	if (random.randint(0, 1)):
		moves.U(a)
	if (random.randint(0, 1)):
		moves.F(a)
	if (random.randint(0, 1)):
		moves.R(a)
	if (random.randint(0, 1)):
		moves.L(a)
	if (random.randint(0, 1)):
		moves.D(a)
	if (random.randint(0, 1)):
		moves.B(a)
	if (random.randint(0, 1)):
		moves.VU(a)
	if (random.randint(0, 1)):
		moves.HR(a)
	x = copy.deepcopy(a)
	print
	print("Beginning")
	movelist = []
	solver.finalPrint(x, movelist)
	solver.Solve(x, movelist)
	solver.finalPrint(x, movelist)
	print("End")
	print




