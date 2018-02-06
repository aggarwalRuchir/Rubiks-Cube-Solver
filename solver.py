import moves
import time

def finalPrint(a, movelist):
# 	print(movelist)
	print
	c = 0
	while (c < 9):
		print(a[c])
		c = c + 1
	print


def Solve(a, movelist):
	Stage1(a, movelist)
#	print("After stage 1")
# 	finalPrint(a, movelist)
#
# 	print("Sending this cube to Stage 3")
# 	finalPrint(a, movelist)
	Stage3(a, movelist)
#  	print("After stage 3")
#  	finalPrint(a, movelist)
#
# 	print("Sending this cube to Stage 4")
# 	finalPrint(a, movelist)
	Stage4(a, movelist)
# 	print("After stage 4")
# 	finalPrint(a, movelist)

	Stage5(a, movelist)
# 	print("After stage 5")
# 	finalPrint(a, movelist)

	Stage6(a, movelist)
	optimize(movelist)

def Stage1(a, movelist):
	i = 0
	while i < 20:
		Stage1side(a, movelist)
		i = i + 1


	Stage1color(a, movelist)
	while (a[4][1] != a[5][1]):
		moves.HR(a)
		movelist.append('HR')

def Stage1side(a, movelist):
	# Center piece on bottom is a[7][7]
	center_color = a[7][7]
	right_side =  a[7][8] == center_color
	left_side = a[7][6] == center_color
	top_side = a[6][7] == center_color
	bottom_side = a[8][7] == center_color
	if right_side and left_side and top_side and bottom_side:
		g = 0
	else:
		if a[1][8] == center_color: #Begin top face
			if a[7][8] != center_color:
				moves.R(a)
				moves.R(a)
				movelist.append('R')
				movelist.append('R')
			elif a[7][6] != center_color:
				moves.U(a)
				moves.U(a)
				moves.L(a)
				moves.L(a)
				movelist.append('U')
				movelist.append('U')
				movelist.append('L')
				movelist.append('L')
			elif a[6][7] != center_color:
				moves.D(a)
				moves.R(a)
				moves.R(a)
				moves.Di(a)
				movelist.append('D')
				movelist.append('R')
				movelist.append('R')
				movelist.append('Di')
			elif a[8][7] != center_color:
				moves.Di(a)
				moves.R(a)
				moves.R(a)
				moves.D(a)
				movelist.append('Di')
				movelist.append('R')
				movelist.append('R')
				movelist.append('D')
		elif a[1][6] == center_color:
			if a[7][6] != center_color:
				moves.L(a)
				moves.L(a)
				movelist.append('L')
				movelist.append('L')
			elif a[7][8] != center_color:
				moves.U(a)
				moves.U(a)
				moves.R(a)
				moves.R(a)
				movelist.append('U')
				movelist.append('U')
				movelist.append('R')
				movelist.append('R')
			elif a[6][7] != center_color:
				moves.Di(a)
				moves.L(a)
				moves.L(a)
				moves.D(a)
				movelist.append('Di')
				movelist.append('L')
				movelist.append('L')
				movelist.append('D')
			elif a[8][7] != center_color:
				moves.D(a)
				moves.L(a)
				moves.L(a)
				moves.Di(a)
				movelist.append('D')
				movelist.append('L')
				movelist.append('L')
				movelist.append('Di')
		elif a[0][7] == center_color:
			if a[8][7] != center_color:
				moves.B(a)
				moves.B(a)
				movelist.append('B')
				movelist.append('B')
			elif a[7][6] != center_color:
				moves.Ui(a)
				moves.L(a)
				moves.L(a)
				movelist.append('Ui')
				movelist.append('L')
				movelist.append('L')
			elif a[7][8] != center_color:
				moves.U(a)
				moves.R(a)
				moves.R(a)
				movelist.append('U')
				movelist.append('R')
				movelist.append('R')
			elif a[6][7] != center_color:
				moves.U(a)
				moves.U(a)
				moves.F(a)
				moves.F(a)
				movelist.append('U')
				movelist.append('U')
				movelist.append('F')
				movelist.append('F')
		elif a[2][7] == center_color:
			if a[6][7] != center_color:
				moves.F(a)
				moves.F(a)
				movelist.append('F')
				movelist.append('F')
			elif a[8][7] != center_color:
				moves.U(a)
				moves.U(a)
				moves.B(a)
				moves.B(a)
				movelist.append('U')
				movelist.append('U')
				movelist.append('B')
				movelist.append('B')
			elif a[7][6] != center_color:
				moves.U(a)
				moves.L(a)
				moves.L(a)
				movelist.append('U')
				movelist.append('L')
				movelist.append('L')
			elif a[7][8] != center_color:
				moves.Ui(a)
				moves.R(a)
				moves.R(a)
				movelist.append('Ui')
				movelist.append('R')
				movelist.append('R') #End top face
		elif a[4][8] == center_color: #Begin Middle Face
			if a[7][8] != center_color:
				moves.Ri(a)
				movelist.append('Ri')
			elif a[6][7] != center_color:
				moves.D(a)
				moves.Ri(a)
				movelist.append('D')
				movelist.append('Ri')
			elif a[8][7] != center_color:
				moves.Di(a)
				moves.Ri(a)
				movelist.append('Di')
				movelist.append('Ri')
			elif a[7][6] != center_color:
				moves.D(a)
				moves.D(a)
				moves.Ri(a)
				movelist.append('D')
				movelist.append('D')
				movelist.append('Ri')
		elif a[4][6] == center_color:
			if a[7][6] != center_color:
				moves.L(a)
				movelist.append('L')
			elif a[6][7] != center_color:
				moves.Di(a)
				moves.L(a)
				movelist.append('Di')
				movelist.append('L')
			elif a[8][7] != center_color:
				moves.D(a)
				moves.L(a)
				movelist.append('D')
				movelist.append('L')
			elif a[7][8] != center_color:
				moves.D(a)
				moves.D(a)
				moves.L(a)
				movelist.append('D')
				movelist.append('D')
				movelist.append('L')
		elif a[3][7] == center_color:
			if a[6][7] != center_color:
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
			elif a[7][6] != center_color:
				moves.D(a)
				moves.Fi(a)
				moves.HR(a)
				moves.F(a)
				moves.Di(a)
				movelist.append('D')
				movelist.append('Fi')
				movelist.append('HR')
				movelist.append('F')
				movelist.append('Di')
			elif a[7][8] != center_color:
				moves.Di(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				moves.D(a)
				movelist.append('Di')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
				movelist.append('Di')
			elif a[8][7] != center_color:
				moves.D(a)
				moves.D(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				moves.Di(a)
				moves.Di(a)
				movelist.append('D')
				movelist.append('D')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
				movelist.append('Di')
				movelist.append('Di')
		elif a[5][7] == center_color:
			if a[6][7] != center_color:
				moves.U(a)
				moves.U(a)
				moves.HL(a)
				moves.Di(a)
				moves.VD(a)
				moves.HR(a)
				moves.D(a)
				movelist.append('U')
				movelist.append('U')
				movelist.append('HL')
				movelist.append('Di')
				movelist.append('VD')
				movelist.append('HR')
				movelist.append('D')
			elif a[8][7] != center_color:
				moves.B(a)
				moves.B(a)
				moves.HL(a)
				moves.U(a)
				moves.VU(a)
				moves.Ui(a)
				moves.HR(a)
				movelist.append('B')
				movelist.append('B')
				movelist.append('HL')
				movelist.append('U')
				movelist.append('VU')
				movelist.append('Ui')
				movelist.append('HR')
			elif a[7][6] != center_color:
				moves.Ui(a)
				moves.L(a)
				movelist.append('Ui')
				movelist.append('L')
			elif a[7][8] != center_color:
				moves.U(a)
				moves.Ri(a)
				movelist.append('U')
				movelist.append('Ri') #End Middle Face
		elif a[3][4] == center_color: #Start Left Face
			if a[6][7] != center_color:
				moves.Ui(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				movelist.append('Ui')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
			elif a[7][8] != center_color:
				moves.Di(a)
				moves.VU(a)
				moves.Ui(a)
				moves.VD(a)
				movelist.append('Di')
				movelist.append('VU')
				movelist.append('Ui')
				movelist.append('VD')
			elif a[7][6] != center_color:
				moves.D(a)
				moves.Ui(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				movelist.append('D')
				movelist.append('Ui')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
			elif a[8][7] != center_color:
				moves.Li(a)
				moves.B(a)
				movelist.append('Li')
				movelist.append('B')
		elif a[4][5] == center_color:
			if a[6][7] != center_color:
				moves.Fi(a)
				movelist.append('Fi')
			elif a[7][6] != center_color:
				moves.HL(a)
				moves.Li(a)
				movelist.append('HL')
				movelist.append('Li')
			elif a[8][7] != center_color:
				moves.HR(a)
				moves.HR(a)
				moves.Bi(a)
				movelist.append('HR')
				movelist.append('HR')
				movelist.append('Bi')
			elif a[7][8] != center_color:
				moves.HR(a)
				moves.Ri(a)
				movelist.append('HR')
				movelist.append('Ri')
		elif a[5][4] == center_color:
			if a[7][6] != center_color:
				moves.L(a)
				moves.HR(a)
				moves.L(a)
				movelist.append('L')
				movelist.append('HR')
				movelist.append('L')
			elif a[7][8] != center_color:
				moves.L(a)
				moves.HL(a)
				moves.R(a)
				movelist.append('L')
				movelist.append('HL')
				movelist.append('R')
			elif a[6][7] != center_color:
				moves.Li(a)
				moves.Fi(a)
				movelist.append('Li')
				movelist.append('Fi')
			elif a[8][7] != center_color:
				moves.L(a)
				moves.B(a)
				movelist.append('L')
				movelist.append('B')
		elif a[4][3] == center_color:
			if a[8][7] != center_color:
				moves.B(a)
				movelist.append('B')
			elif a[7][6] != center_color:
				moves.HR(a)
				moves.L(a)
				movelist.append('HR')
				movelist.append('L')
			elif a[7][8] != center_color:
				moves.HL(a)
				moves.R(a)
				movelist.append('HL')
				movelist.append('R')
			elif a[6][7] != center_color:
				moves.HR(a)
				moves.HR(a)
				moves.F(a)
				movelist.append('HR')
				movelist.append('HR')
				movelist.append('F') #End left face
		elif a[3][10] == center_color: #Begin right face
			if a[7][8] != center_color:
				moves.R(a)
				moves.HL(a)
				moves.Ri(a)
				movelist.append('R')
				movelist.append('HL')
				movelist.append('Ri')
			elif a[7][6] != center_color:
				moves.U(a)
				moves.U(a)
				moves.Li(a)
				moves.HR(a)
				moves.Li(a)
				movelist.append('U')
				movelist.append('U')
				movelist.append('Li')
				movelist.append('HR')
				movelist.append('Li')
			elif a[6][7] != center_color:
				moves.U(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				movelist.append('U')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
			elif a[8][7] != center_color:
				moves.Ui(a)
				moves.B(a)
				moves.HL(a)
				moves.Bi(a)
				movelist.append('Ui')
				movelist.append('B')
				movelist.append('HL')
				movelist.append('Bi')
		elif a[4][11] == center_color:
			if a[8][7] != center_color:
				moves.Bi(a)
				movelist.append('Bi')
			elif a[6][7] != center_color:
				moves.HL(a)
				moves.HL(a)
				moves.Fi(a)
				movelist.append('HL')
				movelist.append('HL')
				movelist.append('Fi')
			elif a[7][8] != center_color:
				moves.HL(a)
				moves.Ri(a)
				movelist.append('HL')
				movelist.append('Ri')
			elif a[7][6] != center_color:
				moves.HR(a)
				moves.Li(a)
				movelist.append('HR')
				movelist.append('Li')
		elif a[5][10] == center_color:
			moves.Ri(a)
			moves.HL(a)
			moves.Ri(a)
			movelist.append('Ri')
			movelist.append('HL')
			movelist.append('Ri')
		elif a[4][9] == center_color:
			if a[6][7] != center_color:
				moves.F(a)
				movelist.append('F')
			elif a[7][8] != center_color:
				moves.HR(a)
				moves.R(a)
				movelist.append('HR')
				movelist.append('R')
			elif a[7][6] != center_color:
				moves.HL(a)
				moves.L(a)
				movelist.append('HL')
				movelist.append('L')
			elif a[8][7] != center_color:
				moves.HL(a)
				moves.HL(a)
				moves.B(a) #End Right Face
				movelist.append('HL')
				movelist.append('HL')
				movelist.append('B')
		elif a[3][1] == center_color: #Start Back face
			if a[8][7] != center_color:
				moves.B(a)
				moves.HL(a)
				moves.Bi(a)
				movelist.append('B')
				movelist.append('HL')
				movelist.append('Bi')
			elif a[6][7] != center_color:
				moves.U(a)
				moves.U(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				movelist.append('U')
				movelist.append('U')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
			elif a[7][6] != center_color:
				moves.Ui(a)
				moves.Li(a)
				moves.HR(a)
				moves.L(a)
				movelist.append('Ui')
				movelist.append('Li')
				movelist.append('HR')
				movelist.append('L')
			elif a[7][8] != center_color:
				moves.U(a)
				moves.R(a)
				moves.HL(a)
				moves.Ri(a)
				movelist.append('U')
				movelist.append('R')
				movelist.append('HL')
				movelist.append('Ri')
		elif a[5][1] == center_color:
			moves.B(a)
			moves.HR(a)
			moves.B(a)
			movelist.append('B')
			movelist.append('HR')
			movelist.append('B')
		elif a[4][0] == center_color:
			if a[6][7] != center_color:
				moves.HL(a)
				moves.F(a)
				movelist.append('HL')
				movelist.append('F')
			elif a[8][7] != center_color:
				moves.HR(a)
				moves.B(a)
				movelist.append('HR')
				movelist.append('B')
			elif a[7][8] != center_color:
				moves.R(a)
				movelist.append('R')
			elif a[7][6] != center_color:
				moves.HR(a)
				moves.HR(a)
				moves.L(a)
				movelist.append('HR')
				movelist.append('HR')
				movelist.append('L')
		elif a[4][2] == center_color:
			if a[7][6] != center_color:
				moves.Li(a)
				movelist.append('Li')
			elif a[7][8] != center_color:
				moves.HR(a)
				moves.HR(a)
				moves.Ri(a)
				movelist.append('HR')
				movelist.append('HR')
				movelist.append('Ri')
			elif a[6][7] != center_color:
				moves.HR(a)
				moves.Fi(a)
				movelist.append('HR')
				movelist.append('Fi')
			elif a[8][7] != center_color:
				moves.L(a)
				moves.Bi(a)
				movelist.append('L')
				movelist.append('Bi')#End Back side



def Stage1color(a, movelist):

	center_color = a[7][7]
	if center_color == 'w':
		while a[5][7] != 'g':
			moves.D(a)
			movelist.append('D')
		if a[5][10] != 'o':
			if a[5][4] == 'o':
				moves.D(a)
				moves.VU(a)
				moves.U(a)
				moves.VD(a)
				moves.Ui(a)
				moves.D(a)
				moves.D(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				moves.HL(a)
				moves.Li(a)
				moves.Bi(a)
				moves.L(a)
				moves.U(a)
				moves.B(a)
				moves.U(a)
				moves.Bi(a)
				movelist.append('D')
				movelist.append('VU')
				movelist.append('U')
				movelist.append('VD')
				movelist.append('Ui')
				movelist.append('D')
				movelist.append('D')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
				movelist.append('HL')
				movelist.append('Li')
				movelist.append('Bi')
				movelist.append('L')
				movelist.append('U')
				movelist.append('B')
				movelist.append('U')
				movelist.append('Bi')
			elif a[5][1] == 'o':
				moves.VD(a)
				moves.U(a)
				moves.VU(a)
				moves.Di(a)
				moves.U(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				moves.Ri(a)
				moves.HL(a)
				moves.R(a)
				moves.Di(a)
				moves.F(a)
				moves.HR(a)
				moves.HR(a)
				moves.Fi(a)
				moves.HL(a)
				moves.L(a)
				moves.F(a)
				moves.Li(a)
				moves.Ui(a)
				moves.Fi(a)
				moves.Ui(a)
				moves.F(a)
				movelist.append('VD')
				movelist.append('U')
				movelist.append('VU')
				movelist.append('Di')
				movelist.append('U')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
				movelist.append('Ri')
				movelist.append('HL')
				movelist.append('R')
				movelist.append('Di')
				movelist.append('F')
				movelist.append('HR')
				movelist.append('HR')
				movelist.append('Fi')
				movelist.append('HL')
				movelist.append('L')
				movelist.append('F')
				movelist.append('Li')
				movelist.append('Ui')
				movelist.append('Fi')
				movelist.append('Ui')
				movelist.append('F')
		while a[5][7] != 'g':
			moves.D(a)
			movelist.append('D')
		if a[5][4] != 'r':
			moves.VD(a)
			moves.Ui(a)
			moves.VU(a)
			moves.D(a)
			moves.Ui(a)
			moves.F(a)
			moves.HL(a)
			moves.Fi(a)
			moves.Fi(a)
			moves.Li(a)
			moves.F(a)
			moves.U(a)
			moves.L(a)
			moves.U(a)
			moves.Li(a)


	elif center_color == 'g':
		while a[5][7] != 'y':
			moves.D(a)
			movelist.append('D')
		if a[5][10] != 'o':
			if a[5][4] == 'o':
				moves.D(a)
				moves.VU(a)
				moves.U(a)
				moves.VD(a)
				moves.Ui(a)
				moves.D(a)
				moves.D(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				moves.HL(a)
				moves.Li(a)
				moves.Bi(a)
				moves.L(a)
				moves.U(a)
				moves.B(a)
				moves.U(a)
				moves.Bi(a)
				movelist.append('D')
				movelist.append('VU')
				movelist.append('U')
				movelist.append('VD')
				movelist.append('Ui')
				movelist.append('D')
				movelist.append('D')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
				movelist.append('HL')
				movelist.append('Li')
				movelist.append('Bi')
				movelist.append('L')
				movelist.append('U')
				movelist.append('B')
				movelist.append('U')
				movelist.append('Bi')
			elif a[5][1] == 'o':
				moves.VD(a)
				moves.U(a)
				moves.VU(a)
				moves.Di(a)
				moves.U(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				moves.Ri(a)
				moves.HL(a)
				moves.R(a)
				moves.Di(a)
				moves.F(a)
				moves.HR(a)
				moves.HR(a)
				moves.Fi(a)
				moves.HL(a)
				moves.L(a)
				moves.F(a)
				moves.Li(a)
				moves.Ui(a)
				moves.Fi(a)
				moves.Ui(a)
				moves.F(a)
				movelist.append('VD')
				movelist.append('U')
				movelist.append('VU')
				movelist.append('Di')
				movelist.append('U')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
				movelist.append('Ri')
				movelist.append('HL')
				movelist.append('R')
				movelist.append('Di')
				movelist.append('F')
				movelist.append('HR')
				movelist.append('HR')
				movelist.append('Fi')
				movelist.append('HL')
				movelist.append('L')
				movelist.append('F')
				movelist.append('Li')
				movelist.append('Ui')
				movelist.append('Fi')
				movelist.append('Ui')
				movelist.append('F')
		while a[5][7] != 'y':
			moves.D(a)
			movelist.append('D')
		if a[5][4] != 'r':
			moves.VD(a)
			moves.Ui(a)
			moves.VU(a)
			moves.D(a)
			moves.Ui(a)
			moves.F(a)
			moves.HL(a)
			moves.Fi(a)
			moves.Fi(a)
			moves.Li(a)
			moves.F(a)
			moves.U(a)
			moves.L(a)
			moves.U(a)
			moves.Li(a)


	elif center_color == 'y':
		while a[5][7] != 'b':
			moves.D(a)
			movelist.append('D')
		if a[5][10] != 'o':
			if a[5][4] == 'o':
				moves.D(a)
				moves.VU(a)
				moves.U(a)
				moves.VD(a)
				moves.Ui(a)
				moves.D(a)
				moves.D(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				moves.HL(a)
				moves.Li(a)
				moves.Bi(a)
				moves.L(a)
				moves.U(a)
				moves.B(a)
				moves.U(a)
				moves.Bi(a)
				movelist.append('D')
				movelist.append('VU')
				movelist.append('U')
				movelist.append('VD')
				movelist.append('Ui')
				movelist.append('D')
				movelist.append('D')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
				movelist.append('HL')
				movelist.append('Li')
				movelist.append('Bi')
				movelist.append('L')
				movelist.append('U')
				movelist.append('B')
				movelist.append('U')
				movelist.append('Bi')
			elif a[5][1] == 'o':
				moves.VD(a)
				moves.U(a)
				moves.VU(a)
				moves.Di(a)
				moves.U(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				moves.Ri(a)
				moves.HL(a)
				moves.R(a)
				moves.Di(a)
				moves.F(a)
				moves.HR(a)
				moves.HR(a)
				moves.Fi(a)
				moves.HL(a)
				moves.L(a)
				moves.F(a)
				moves.Li(a)
				moves.Ui(a)
				moves.Fi(a)
				moves.Ui(a)
				moves.F(a)
				movelist.append('VD')
				movelist.append('U')
				movelist.append('VU')
				movelist.append('Di')
				movelist.append('U')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
				movelist.append('Ri')
				movelist.append('HL')
				movelist.append('R')
				movelist.append('Di')
				movelist.append('F')
				movelist.append('HR')
				movelist.append('HR')
				movelist.append('Fi')
				movelist.append('HL')
				movelist.append('L')
				movelist.append('F')
				movelist.append('Li')
				movelist.append('Ui')
				movelist.append('Fi')
				movelist.append('Ui')
				movelist.append('F')
		while a[5][7] != 'b':
			moves.D(a)
			movelist.append('D')
		if a[5][4] != 'r':
			moves.VD(a)
			moves.Ui(a)
			moves.VU(a)
			moves.D(a)
			moves.Ui(a)
			moves.F(a)
			moves.HL(a)
			moves.Fi(a)
			moves.Fi(a)
			moves.Li(a)
			moves.F(a)
			moves.U(a)
			moves.L(a)
			moves.U(a)
			moves.Li(a)

	elif center_color == 'b':
		while a[5][7] != 'w':
			moves.D(a)
			movelist.append('D')
		if a[5][10] != 'o':
			if a[5][4] == 'o':
				moves.D(a)
				moves.VU(a)
				moves.U(a)
				moves.VD(a)
				moves.Ui(a)
				moves.D(a)
				moves.D(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				moves.HL(a)
				moves.Li(a)
				moves.Bi(a)
				moves.L(a)
				moves.U(a)
				moves.B(a)
				moves.U(a)
				moves.Bi(a)
				movelist.append('D')
				movelist.append('VU')
				movelist.append('U')
				movelist.append('VD')
				movelist.append('Ui')
				movelist.append('D')
				movelist.append('D')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
				movelist.append('HL')
				movelist.append('Li')
				movelist.append('Bi')
				movelist.append('L')
				movelist.append('U')
				movelist.append('B')
				movelist.append('U')
				movelist.append('Bi')
			elif a[5][1] == 'o':
				moves.VD(a)
				moves.U(a)
				moves.VU(a)
				moves.Di(a)
				moves.U(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				moves.Ri(a)
				moves.HL(a)
				moves.R(a)
				moves.Di(a)
				moves.F(a)
				moves.HR(a)
				moves.HR(a)
				moves.Fi(a)
				moves.HL(a)
				moves.L(a)
				moves.F(a)
				moves.Li(a)
				moves.Ui(a)
				moves.Fi(a)
				moves.Ui(a)
				moves.F(a)
				movelist.append('VD')
				movelist.append('U')
				movelist.append('VU')
				movelist.append('Di')
				movelist.append('U')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
				movelist.append('Ri')
				movelist.append('HL')
				movelist.append('R')
				movelist.append('Di')
				movelist.append('F')
				movelist.append('HR')
				movelist.append('HR')
				movelist.append('Fi')
				movelist.append('HL')
				movelist.append('L')
				movelist.append('F')
				movelist.append('Li')
				movelist.append('Ui')
				movelist.append('Fi')
				movelist.append('Ui')
				movelist.append('F')
		while a[5][7] != 'w':
			moves.D(a)
			movelist.append('D')
		if a[5][4] != 'r':
			moves.VD(a)
			moves.Ui(a)
			moves.VU(a)
			moves.D(a)
			moves.Ui(a)
			moves.F(a)
			moves.HL(a)
			moves.Fi(a)
			moves.Fi(a)
			moves.Li(a)
			moves.F(a)
			moves.U(a)
			moves.L(a)
			moves.U(a)
			moves.Li(a)

	elif center_color == 'o':
		while a[5][7] != 'w':
			moves.D(a)
			movelist.append('D')
		if a[5][10] != 'g':
			if a[5][4] == 'g':
				moves.D(a)
				moves.VU(a)
				moves.U(a)
				moves.VD(a)
				moves.Ui(a)
				moves.D(a)
				moves.D(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				moves.HL(a)
				moves.Li(a)
				moves.Bi(a)
				moves.L(a)
				moves.U(a)
				moves.B(a)
				moves.U(a)
				moves.Bi(a)
				movelist.append('D')
				movelist.append('VU')
				movelist.append('U')
				movelist.append('VD')
				movelist.append('Ui')
				movelist.append('D')
				movelist.append('D')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
				movelist.append('HL')
				movelist.append('Li')
				movelist.append('Bi')
				movelist.append('L')
				movelist.append('U')
				movelist.append('B')
				movelist.append('U')
				movelist.append('Bi')
			elif a[5][1] == 'g':
				moves.VD(a)
				moves.U(a)
				moves.VU(a)
				moves.Di(a)
				moves.U(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				moves.Ri(a)
				moves.HL(a)
				moves.R(a)
				moves.Di(a)
				moves.F(a)
				moves.HR(a)
				moves.HR(a)
				moves.Fi(a)
				moves.HL(a)
				moves.L(a)
				moves.F(a)
				moves.Li(a)
				moves.Ui(a)
				moves.Fi(a)
				moves.Ui(a)
				moves.F(a)
				movelist.append('VD')
				movelist.append('U')
				movelist.append('VU')
				movelist.append('Di')
				movelist.append('U')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
				movelist.append('Ri')
				movelist.append('HL')
				movelist.append('R')
				movelist.append('Di')
				movelist.append('F')
				movelist.append('HR')
				movelist.append('HR')
				movelist.append('Fi')
				movelist.append('HL')
				movelist.append('L')
				movelist.append('F')
				movelist.append('Li')
				movelist.append('Ui')
				movelist.append('Fi')
				movelist.append('Ui')
				movelist.append('F')
		while a[5][7] != 'w':
			moves.D(a)
			movelist.append('D')
		if a[5][4] != 'b':
			moves.VD(a)
			moves.Ui(a)
			moves.VU(a)
			moves.D(a)
			moves.Ui(a)
			moves.F(a)
			moves.HL(a)
			moves.Fi(a)
			moves.Fi(a)
			moves.Li(a)
			moves.F(a)
			moves.U(a)
			moves.L(a)
			moves.U(a)
			moves.Li(a)


	elif center_color == 'r':
		while a[5][7] != 'b':
			moves.D(a)
			movelist.append('D')
		if a[5][10] != 'y':
			if a[5][4] == 'y':
				moves.D(a)
				moves.VU(a)
				moves.U(a)
				moves.VD(a)
				moves.Ui(a)
				moves.D(a)
				moves.D(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				moves.HL(a)
				moves.Li(a)
				moves.Bi(a)
				moves.L(a)
				moves.U(a)
				moves.B(a)
				moves.U(a)
				moves.Bi(a)
				movelist.append('D')
				movelist.append('VU')
				movelist.append('U')
				movelist.append('VD')
				movelist.append('Ui')
				movelist.append('D')
				movelist.append('D')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
				movelist.append('HL')
				movelist.append('Li')
				movelist.append('Bi')
				movelist.append('L')
				movelist.append('U')
				movelist.append('B')
				movelist.append('U')
				movelist.append('Bi')
			elif a[5][1] == 'y':
				moves.VD(a)
				moves.U(a)
				moves.VU(a)
				moves.Di(a)
				moves.U(a)
				moves.F(a)
				moves.HL(a)
				moves.Fi(a)
				moves.Ri(a)
				moves.HL(a)
				moves.R(a)
				moves.Di(a)
				moves.F(a)
				moves.HR(a)
				moves.HR(a)
				moves.Fi(a)
				moves.HL(a)
				moves.L(a)
				moves.F(a)
				moves.Li(a)
				moves.Ui(a)
				moves.Fi(a)
				moves.Ui(a)
				moves.F(a)
				movelist.append('VD')
				movelist.append('U')
				movelist.append('VU')
				movelist.append('Di')
				movelist.append('U')
				movelist.append('F')
				movelist.append('HL')
				movelist.append('Fi')
				movelist.append('Ri')
				movelist.append('HL')
				movelist.append('R')
				movelist.append('Di')
				movelist.append('F')
				movelist.append('HR')
				movelist.append('HR')
				movelist.append('Fi')
				movelist.append('HL')
				movelist.append('L')
				movelist.append('F')
				movelist.append('Li')
				movelist.append('Ui')
				movelist.append('Fi')
				movelist.append('Ui')
				movelist.append('F')
		while a[5][7] != 'b':
			moves.Di(a)
			movelist.append('D')
		if a[5][4] != 'w':
			moves.VD(a)
			moves.Ui(a)
			moves.VU(a)
			moves.D(a)
			moves.Ui(a)
			moves.F(a)
			moves.HL(a)
			moves.Fi(a)
			moves.Fi(a)
			moves.Li(a)
			moves.F(a)
			moves.U(a)
			moves.L(a)
			moves.U(a)
			moves.Li(a)
	loop = 0
	while loop < 6:
		loop = loop + 1
		if len(movelist) != 0:
			if movelist[-1] == 'D':
				del movelist[-1]
				moves.Di(a)



#Stage 6


	
def Check_Corners(a, movelist, check_A, check_B, check_C, check_D):
#	finalPrint(a, movelist)
	num_corners = 0
	while num_corners < 2 :
#	  print("Check Corners:")
#	  finalPrint(a, movelist)
	  if a[3][2] == a[4][2]:			   #Check A
		if a[3][3] == a[4][3]:
		   num_corners = num_corners + 1;
		   check_A = 1;
	  if a[3][0] == a[4][0]:			   #Check B
		if a[3][11] == a[4][11]:
			  num_corners = num_corners + 1;
			  check_B = 1;
	  if a[3][5] == a[4][5]:				#Check C
		if a[3][6] == a[4][6]:
			  num_corners = num_corners + 1;
			  check_C = 1;
	  if a[3][8] == a[4][8]:			   #Check D
		if a[3][9] == a[4][9]:
			  num_corners = num_corners + 1;
			  check_D = 1;
#	  print([num_corners, check_A, check_B, check_C, check_D])
	  if num_corners >= 2:
		break;
	  else :
		num_corners = 0;
		check_A = 0;
		check_B = 0;
		check_C = 0;
		check_D = 0;
		moves.Ui(a);
		movelist.append('Ui');

	completed_check = [num_corners, check_A, check_B, check_C, check_D]

	return completed_check;

def FP_Sequence(a, movelist):
	moves.Ri(a)
	movelist.append('Ri');
	moves.F(a)
	movelist.append('F');
	moves.Ri(a)
	movelist.append('Ri');
	moves.B(a)
	movelist.append('B');
	moves.B(a)
	movelist.append('B');
	moves.R(a)
	movelist.append('R');
	moves.Fi(a)
	movelist.append('Fi');
	moves.Ri(a)
	movelist.append('Ri');
	moves.B(a)
	movelist.append('B');
	moves.B(a)
	movelist.append('B');
	moves.R(a)
	movelist.append('R');
	moves.R(a)
	movelist.append('R');
	moves.Ui(a)
	movelist.append('Ui');
	
def BP_Sequence(a, movelist):
	moves.Li(a)
	movelist.append('Li');
	moves.B(a)
	movelist.append('B');
	moves.Li(a)
	movelist.append('Li');
	moves.F(a)
	movelist.append('F');
	moves.F(a)
	movelist.append('F');
	moves.L(a)
	movelist.append('L');
	moves.Bi(a)
	movelist.append('Bi');
	moves.Li(a)
	movelist.append('Li');
	moves.F(a)
	movelist.append('F');
	moves.F(a)
	movelist.append('F');
	moves.L(a)
	movelist.append('L');
	moves.L(a)
	movelist.append('L');
	moves.Ui(a)
	movelist.append('Ui');

def LP_Sequence(a, movelist):
	moves.Fi(a)
	movelist.append('Fi');
	moves.L(a)
	movelist.append('L');
	moves.Fi(a)
	movelist.append('Fi');
	moves.R(a)
	movelist.append('R');
	moves.R(a)
	movelist.append('R');
	moves.F(a)
	movelist.append('F');
	moves.Li(a)
	movelist.append('Li');
	moves.Fi(a)
	movelist.append('Fi');
	moves.R(a)
	movelist.append('R');
	moves.R(a)
	movelist.append('R');
	moves.F(a)
	movelist.append('F');
	moves.F(a)
	movelist.append('F');
	moves.Ui(a)
	movelist.append('Ui');

def RP_Sequence(a, movelist):
	moves.Bi(a)
	movelist.append('Bi');
	moves.R(a)
	movelist.append('R');
	moves.Bi(a)
	movelist.append('Bi');
	moves.L(a)
	movelist.append('L');
	moves.L(a)
	movelist.append('L');
	moves.B(a)
	movelist.append('B');
	moves.Ri(a)
	movelist.append('Ri');
	moves.Bi(a)
	movelist.append('Bi');
	moves.L(a)
	movelist.append('L');
	moves.L(a)
	movelist.append('L');
	moves.B(a)
	movelist.append('B');
	moves.B(a)
	movelist.append('B');
	moves.Ui(a)
	movelist.append('Ui');
	
###################### END OF METHODS #################################

##################  METHODS FOR STEP 2  ############################

def Check_Edges(a):	#Checks number of correct edges
	num_edges = 0
	Front = 0
	Back = 0
	Right = 0
	Left = 0
	if a[3][7] == a[4][7]:
		num_edges += 1
		Front += 1
	if a[3][10] == a[4][10]:
		num_edges += 1
		Right += 1
	if a[3][1] == a[4][1]:
		num_edges += 1
		Back += 1
	if a[3][4] == a[4][4]:
		num_edges += 1
		Left += 1
	edge_set = [num_edges, Front, Back, Right, Left]

	return edge_set

def Center_Colors(a):			#Gets the center piece color in each phase
	front_Center = a[4][7]
	back_Center = a[4][1]
	right_Center = a[4][10]
	left_Center = a[4][4]
	center_set = [front_Center, back_Center, right_Center, left_Center]

	return center_set

def FP_CW(a, movelist):
	moves.F(a)
	movelist.append('F');
	moves.F(a)
	movelist.append('F');
	moves.U(a)
	movelist.append('U');
	moves.L(a)
	movelist.append('L');
	moves.Ri(a)
	movelist.append('Ri');
	moves.F(a)
	movelist.append('F');
	moves.F(a)
	movelist.append('F');
	moves.Li(a)
	movelist.append('Li');
	moves.R(a)
	movelist.append('R');
	moves.U(a)
	movelist.append('U');
	moves.F(a)
	movelist.append('F');
	moves.F(a)
	movelist.append('F');

def FP_CCW(a, movelist):
	moves.F(a)
	movelist.append('F');
	moves.F(a)
	movelist.append('F');
	moves.Ui(a)
	movelist.append('Ui');
	moves.L(a)
	movelist.append('L');
	moves.Ri(a)
	movelist.append('Ri');
	moves.F(a)
	movelist.append('F');
	moves.F(a)
	movelist.append('F');
	moves.Li(a)
	movelist.append('Li');
	moves.R(a)
	movelist.append('R');
	moves.Ui(a)
	movelist.append('Ui');
	moves.F(a)
	movelist.append('F');
	moves.F(a)
	movelist.append('F');

def BP_CW(a, movelist):
	moves.B(a)
	movelist.append('B');
	moves.B(a)
	movelist.append('B');
	moves.U(a)
	movelist.append('U');
	moves.R(a)
	movelist.append('R');
	moves.Li(a)
	movelist.append('Li');
	moves.B(a)
	movelist.append('B');
	moves.B(a)
	movelist.append('B');
	moves.Ri(a)
	movelist.append('Ri');
	moves.L(a)
	movelist.append('L');
	moves.U(a)
	movelist.append('U');
	moves.B(a)
	movelist.append('B');
	moves.B(a)
	movelist.append('B');

def BP_CCW(a, movelist):
	moves.B(a)
	movelist.append('B');
	moves.B(a)
	movelist.append('B');
	moves.Ui(a)
	movelist.append('Ui');
	moves.R(a)
	movelist.append('R');
	moves.Li(a)
	movelist.append('Li');
	moves.B(a)
	movelist.append('B');
	moves.B(a)
	movelist.append('B');
	moves.Ri(a)
	movelist.append('Ri');
	moves.L(a)
	movelist.append('L');
	moves.Ui(a)
	movelist.append('Ui');
	moves.B(a)
	movelist.append('B');
	moves.B(a)
	movelist.append('B');

def RP_CW(a, movelist):
	moves.R(a)
	movelist.append('R');
	moves.R(a)
	movelist.append('R');
	moves.U(a)
	movelist.append('U');
	moves.F(a)
	movelist.append('F');
	moves.Bi(a)
	movelist.append('Bi');
	moves.R(a)
	movelist.append('R');
	moves.R(a)
	movelist.append('R');
	moves.Fi(a)
	movelist.append('Fi');
	moves.B(a)
	movelist.append('B');
	moves.U(a)
	movelist.append('U');
	moves.R(a)
	movelist.append('R');
	moves.R(a)
	movelist.append('R');

def RP_CCW(a, movelist):
	moves.R(a)
	movelist.append('R');
	moves.R(a)
	movelist.append('R');
	moves.Ui(a)
	movelist.append('Ui');
	moves.F(a)
	movelist.append('F');
	moves.Bi(a)
	movelist.append('Bi');
	moves.R(a)
	movelist.append('R');
	moves.R(a)
	movelist.append('R');
	moves.Fi(a)
	movelist.append('Fi');
	moves.B(a)
	movelist.append('B');
	moves.Ui(a)
	movelist.append('Ui');
	moves.R(a)
	movelist.append('R');
	moves.R(a)
	movelist.append('R');

def LP_CW(a, movelist):
	moves.L(a)
	movelist.append('L');
	moves.L(a)
	movelist.append('L');
	moves.U(a)
	movelist.append('U');
	moves.B(a)
	movelist.append('B');
	moves.Fi(a)
	movelist.append('Fi');
	moves.L(a)
	movelist.append('L');
	moves.L(a)
	movelist.append('L');
	moves.Bi(a)
	movelist.append('Bi');
	moves.F(a)
	movelist.append('F');
	moves.U(a)
	movelist.append('U');
	moves.L(a)
	movelist.append('L');
	moves.L(a)
	movelist.append('L');

def LP_CCW(a, movelist):
	moves.L(a)
	movelist.append('L');
	moves.L(a)
	movelist.append('L');
	moves.Ui(a)
	movelist.append('Ui');
	moves.B(a)
	movelist.append('B');
	moves.Fi(a)
	movelist.append('Fi');
	moves.L(a)
	movelist.append('L');
	moves.L(a)
	movelist.append('L');
	moves.Bi(a)
	movelist.append('Bi');
	moves.F(a)
	movelist.append('F');
	moves.Ui(a)
	movelist.append('Ui');
	moves.L(a)
	movelist.append('L');
	moves.L(a)
	movelist.append('L');
	
###################  END OF METHODS FOR STEP 2  #####################

######################	 STAGE 6	 #################################

def Stage6(a, movelist):

####################	   STEP 1	  ###############################	

	check_A = 0
	check_B = 0
	check_C = 0
	check_D = 0
#	print("Before 6")
#	finalPrint(a, movelist)
	completed_check = Check_Corners(a, movelist, check_A, check_B, check_C, check_D)
	num_corners = completed_check[0]
	check_A = completed_check[1]
	check_B = completed_check[2]
	check_C = completed_check[3]
	check_D = completed_check[4]
#	print(check_A)
#	print(check_B)
#	print(check_C)
#	print(check_D)

	#Performs sequence based on the location of the correct corners
	while num_corners != 4:
#		finalPrint(a, movelist)
		if check_A == 1 and check_B == 1:
			FP_Sequence(a, movelist)
			check_A = 0
			check_B = 0
			check_C = 0
			check_D = 0
			completed_check = Check_Corners(a, movelist, check_A, check_B, check_C, check_D)
			num_corners = completed_check[0]
			check_A = completed_check[1]
			check_B = completed_check[2]
			check_C = completed_check[3]
			check_D = completed_check[4]
			
		elif check_B == 1 and check_C == 1:
			FP_Sequence(a, movelist)
			check_A = 0
			check_B = 0
			check_C = 0
			check_D = 0
			completed_check = Check_Corners(a, movelist, check_A, check_B, check_C, check_D)
			num_corners = completed_check[0]
			check_A = completed_check[1]
			check_B = completed_check[2]
			check_C = completed_check[3]
			check_D = completed_check[4]
			
		elif check_B == 1 and check_D == 1:
			LP_Sequence(a, movelist)
			check_A = 0
			check_B = 0
			check_C = 0
			check_D = 0
			completed_check = Check_Corners(a, movelist, check_A, check_B, check_C, check_D)
			num_corners = completed_check[0]
			check_A = completed_check[1]
			check_B = completed_check[2]
			check_C = completed_check[3]
			check_D = completed_check[4]
			
		elif check_A == 1 and check_C == 1:
			RP_Sequence(a, movelist)
			check_A = 0
			check_B = 0
			check_C = 0
			check_D = 0
			completed_check = Check_Corners(a, movelist, check_A, check_B, check_C, check_D)
			num_corners = completed_check[0]
			check_A = completed_check[1]
			check_B = completed_check[2]
			check_C = completed_check[3]
			check_D = completed_check[4]


		elif check_A == 1 and check_D == 1:
			FP_Sequence(a, movelist)
			check_A = 0
			check_B = 0
			check_C = 0
			check_D = 0
			completed_check = Check_Corners(a, movelist, check_A, check_B, check_C, check_D)
			num_corners = completed_check[0]
			check_A = completed_check[1]
			check_B = completed_check[2]
			check_C = completed_check[3]
			check_D = completed_check[4]


		elif check_C == 1 and check_D == 1:
			BP_Sequence(a, movelist)
			check_A = 0
			check_B = 0
			check_C = 0
			check_D = 0
			completed_check = Check_Corners(a, movelist, check_A, check_B, check_C, check_D)
			num_corners = completed_check[0]
			check_A = completed_check[1]
			check_B = completed_check[2]
			check_C = completed_check[3]
			check_D = completed_check[4]

# 	finalPrint(a, movelist)
###################		   STEP 2			######################

	#Gets color of the edges and checks number of correct edges
	edge_set = Check_Edges(a)
	num_edges = edge_set[0]	 #number of correct edges
	Front = edge_set[1]		 #checks if front face edge is correct
	Back = edge_set[2]		  #checks if back face edge is correct
	Right = edge_set[3]		 #checks if right face edge is correct
	Left = edge_set[4]		  #checks if left face edge is correct

	#Performs Sequence based on the number of correct edges
	while num_edges != 4:
	   if num_edges == 1:
		   if Front == 1:
			   color1 = a[3][1]  #Back Phase Center Color
			   center_set = Center_Colors(a)
			   if color1 == center_set[2]:
				   CW = 1
				   BP_CW(a, movelist)
			   elif color1 == center_set[3]:
				   CCW = 1
				   BP_CCW(a, movelist)
				  
		   elif Back == 1:
			   color1 = a[3][7]   #Front Phase Center Color
			   center_set = Center_Colors(a)
			   if color1 == center_set[2]:
				   CCW = 1
				   FP_CCW(a, movelist)
			   elif color1 == center_set[3]:
				   CW = 1
				   FP_CW(a, movelist)
			   
		   elif Right == 1:
			   color1 = a[3][4]	#Left Phase Center Color
			   center_set = Center_Colors(a)
			   if color1 == center_set[0]:
				   CCW = 1
				   LP_CCW(a, movelist)
			   elif color1 == center_set[1]:
				   CW = 1
				   LP_CW(a, movelist)
	   
		   elif Left == 1:
			   color1 = a[3][10]   #Right Phase Center Color
			   center_set = Center_Colors(a)
			   if color1 == center_set[0]:
				   CW = 1
				   RP_CW(a, movelist)
			   elif color1 == center_set[1]:
				   CCW = 1
				   RP_CCW(a, movelist)

		   #Gets new data after performing sequence		
		   edge_set = Check_Edges(a)
		   num_edges = edge_set[0]
		   Front = edge_set[1]
		   Back = edge_set[2]
		   Right = edge_set[3]
		   Left = edge_set[4]
		   
	   elif num_edges == 0:
		   FP_CW(a, movelist)
		   edge_set = Check_Edges(a)
		   num_edges = edge_set[0]
		   Front = edge_set[1]
		   Back = edge_set[2]
		   Right = edge_set[3]
		   Left = edge_set[4]


def optimize(movelist):

	listLength = len(movelist)

	i = 0
	while (i < (listLength-2)):
		#3 R makes a Ri, and 3 Ri makes a R
		if (movelist[i] == movelist[i+1]) and (movelist[i+1] == movelist[i+2]):
				if movelist[i] == 'R':
					movelist[i] = 'Ri'
					movelist.pop(i+1)
					movelist.pop(i+1)
					listLength -= 2
				elif movelist[i] == 'Ri':
					movelist[i] = 'R'
					movelist.pop(i+1)
					movelist.pop(i+1)
					listLength -= 2
		#3 L makes a Li, and 3 Li makes a L			
				elif movelist[i] == 'L':
					movelist[i] = 'Li'
					movelist.pop(i+1)
					movelist.pop(i+1)
					listLength -= 2
				elif movelist[i] == 'Li':
					movelist[i] = 'L'
					movelist.pop(i+1)
					movelist.pop(i+1)
					listLength -= 2
		#3 B makes a Bi, and 3 Bi makes a B			
				elif movelist[i] == 'B':
					movelist[i] = 'Bi'
					movelist.pop(i+1)
					movelist.pop(i+1)
					listLength -= 2
				elif movelist[i] == 'Bi':
					movelist[i] = 'B'
					movelist.pop(i+1)
					movelist.pop(i+1)
					listLength -= 2
		#3 D makes a Di, and 3 Di makes a D		   
				elif movelist[i] == 'D':
					movelist[i] = 'Di'
					movelist.pop(i+1)
					movelist.pop(i+1)
					listLength -= 2
				elif movelist[i] == 'Di':
					movelist[i] = 'D'
					movelist.pop(i+1)
					movelist.pop(i+1)
					listLength -= 2
					#3 F makes a Fi, and 3 Fi makes a F			
				elif movelist[i] == 'F':
					movelist[i] = 'Fi'
					movelist.pop(i+1)
					movelist.pop(i+1)
					listLength -= 2
				elif movelist[i] == 'Fi':
					movelist[i] = 'F'
					movelist.pop(i+1)
					movelist.pop(i+1)
					listLength -= 2
			#3 U makes a Ui, and 3 Ui makes a U			
				elif movelist[i] == 'U':
					movelist[i] = 'Ui'
					movelist.pop(i+1)
					movelist.pop(i+1)
					listLength -= 2
				elif movelist[i] == 'Ui':
					movelist[i] = 'U'
					movelist.pop(i+1)
					movelist.pop(i+1)
					listLength -= 2
					
		i += 1
					
#Moves for creating the "Multicolored Cross" from a solved rubix cube
def Multicolored(a, movelist):
	moves.R(a)
	movelist.append('R')
	moves.R(a)
	movelist.append('R')
	moves.L(a)
	movelist.append('L')
	moves.L(a)
	movelist.append('L')
	moves.U(a)
	movelist.append('U')
	moves.U(a)
	movelist.append('U')
	moves.D(a)
	movelist.append('D')
	moves.D(a)
	movelist.append('D')
	moves.F(a)
	movelist.append('F')
	moves.F(a)
	movelist.append('F')
	moves.B(a)
	movelist.append('B')
	moves.B(a)
	movelist.append('B')


#Moves for creating the "Square In The Middle" from a solved rubix cube
def SquareInMiddle(a, movelist):
	moves.R(a)
	movelist.append('R')
	moves.Li(a)
	movelist.append('Li')
	moves.U(a)
	movelist.append('U')
	moves.Di(a)
	movelist.append('Di')
	moves.Fi(a)
	movelist.append('Fi')
	moves.B(a)
	movelist.append('B')
	moves.R(a)
	movelist.append('R')
	moves.Li(a)
	movelist.append('Li')

def Stage3(cube, movelist):
	colour = cube[7][7]
	#check if the colour piece is on the bottom or not?
	rotation_count = 0
	condition_true = 0
	if (cube[6][6] != colour):
		#if the first colour corner piece is on the top face
		if(check_posi(cube, colour) == 1):
			rotation_count = 0
			while(rotation_count < 4):
				rotation_count = rotation_count + 1
				if(cube[3][6] == colour):
					if(((cube[2][6] == cube[4][7]) or (cube[2][6] == cube[4][4])) and ((cube[3][5] == cube[4][7]) or (cube[3][5] == cube[4][4]))):
						condition_true = 1
						break
				elif(cube[3][5] == colour):
					if(((cube[2][6] == cube[4][7]) or (cube[2][6] == cube[4][4])) and ((cube[3][6] == cube[4][7]) or (cube[3][6] == cube[4][4]))):
						condition_true = 1
						break
				elif(cube[2][6] == colour):
					if(((cube[3][6] == cube[4][7]) or (cube[3][6] == cube[4][4])) and ((cube[3][5] == cube[4][7]) or (cube[3][5] == cube[4][4]))):
						condition_true = 1
						break
				moves.Ui(cube)
				movelist.append('Ui')
		
		if(condition_true == 1):
			#if the colour corner piece is on the bottom face
			while(cube[6][6] != colour):
				moves.Li(cube)
				movelist.append('Li')
				moves.Ui(cube)
				movelist.append('Ui')
				moves.L(cube)
				movelist.append('L')
				moves.U(cube)
				movelist.append('U')

	condition_true = 0
	if (cube[6][8] != colour):
	#if the second colour corner piece is on the top face
		if(check_posi(cube, colour) == 1):
			rotation_count = 0
			while(rotation_count < 4):
				rotation_count = rotation_count + 1
				if(cube[3][8] == colour):
					if(((cube[2][8] == cube[4][7]) or (cube[2][8] == cube[4][10])) and ((cube[3][9] == cube[4][7]) or (cube[3][9] == cube[4][10]))):
						condition_true = 1
						break
				elif(cube[3][9] == colour):
					if(((cube[2][8] == cube[4][7]) or (cube[2][8] == cube[4][10])) and ((cube[3][8] == cube[4][7]) or (cube[3][8] == cube[4][10]))):
						condition_true = 1
						break
				elif(cube[2][8] == colour):
					if(((cube[3][8] == cube[4][7]) or (cube[3][8] == cube[4][10])) and ((cube[3][9] == cube[4][7]) or (cube[3][9] == cube[4][10]))):
						condition_true = 1
						break

				moves.Ui(cube)
				movelist.append('Ui')
		
		if(condition_true == 1):
			#if the colour corner piece is on the bottom face
			while(cube[6][8] != colour):
				moves.Fi(cube)
				movelist.append('Fi')
				moves.Ui(cube)
				movelist.append('Ui')
				moves.F(cube)
				movelist.append('F')
				moves.U(cube)
				movelist.append('U')

	condition_true = 0
	if (cube[8][8] != colour):
		#if the third colour corner piece is on the top face
		if(check_posi(cube, colour) == 1):
			rotation_count = 0
			while(rotation_count < 4):
				rotation_count = rotation_count + 1
				#checking for positions around [0][8]
				if(cube[0][8] == colour):
					if(((cube[3][0] == cube[4][10]) or (cube[3][0] == cube[4][1])) and ((cube[3][11] == cube[4][10]) or (cube[3][11] == cube[4][1]))):
						condition_true = 1
						break
				elif(cube[3][0] == colour):
					if(((cube[0][8] == cube[4][1]) or (cube[0][8] == cube[4][10])) and ((cube[3][11] == cube[4][1]) or (cube[3][11] == cube[4][10]))):
						condition_true = 1
						break
				elif(cube[3][11] == colour):
					if(((cube[3][0] == cube[4][1]) or (cube[3][0] == cube[4][10])) and ((cube[0][8] == cube[4][1]) or (cube[0][8] == cube[4][10]))):
						condition_true = 1
						break

				moves.Ui(cube)
				movelist.append('Ui')

		if(condition_true == 1):
			#if the colour corner piece is on the bottom face
			while(cube[8][8] != colour):
				moves.Ri(cube)
				movelist.append('Ri')
				moves.Ui(cube)
				movelist.append('Ui')
				moves.R(cube)
				movelist.append('R')
				moves.U(cube)
				movelist.append('U')

	condition_true = 0
	if (cube[8][6] != colour):
		#if the fourth colour corner piece is on the top face
		if(check_posi(cube, colour) == 1):
			rotation_count = 0
			while(rotation_count < 4):
				rotation_count = rotation_count + 1
				#checking for positions around [0][6]
				if(cube[0][6] == colour):
					if(((cube[3][2] == cube[4][1]) or (cube[3][2] == cube[4][4])) and ((cube[3][3] == cube[4][1]) or (cube[3][3] == cube[4][4]))):
						condition_true = 1
						break
				elif(cube[3][2] == colour):
					if(((cube[0][6] == cube[4][1]) or (cube[0][6] == cube[4][4])) and ((cube[3][3] == cube[4][1]) or (cube[3][3] == cube[4][4]))):
						condition_true = 1
						break
				elif(cube[3][3] == colour):
					if(((cube[3][2] == cube[4][1]) or (cube[3][2] == cube[4][4])) and ((cube[0][6] == cube[4][1]) or (cube[0][6] == cube[4][4]))):
						condition_true = 1
						break
							
				moves.Ui(cube)
				movelist.append('Ui')

		if(condition_true == 1):
			#if the colour corner piece is on the bottom face
			while(cube[8][6] != colour):
				moves.Bi(cube)
				movelist.append('Bi')
				moves.Ui(cube)
				movelist.append('Ui')
				moves.B(cube)
				movelist.append('B')
				moves.U(cube)
				movelist.append('U')

	if(((cube[5][5] == colour) or (cube[5][6] == colour)) and (cube[6][6] != colour)):
	#if colour corner piece is on the top face, move it to the bottom face first
		moves.Li(cube)
		movelist.append('Li')
		moves.Ui(cube)
		movelist.append('Ui')
		moves.L(cube)
		movelist.append('L')
	elif((cube[5][2] == colour) or (cube[5][3] == colour) and (cube[8][6] != colour)):
		#if colour corner piece is on the top face, move it to the bottom face first
		moves.Bi(cube)
		movelist.append('Bi')
		moves.Ui(cube)
		movelist.append('Ui')
		moves.B(cube)
		movelist.append('B')
	elif(((cube[5][0] == colour) or (cube[5][11] == colour)) and (cube[8][8] != colour)):
		#if colour corner piece is on the top face, move it to the bottom face first
		moves.Ri(cube)
		movelist.append('Ri')
		moves.Ui(cube)
		movelist.append('Ui')
		moves.R(cube)
		movelist.append('R')
	elif(((cube[5][8] == colour) or (cube[5][9] == colour)) and (cube[6][8] != colour)):
		#if colour corner piece is on the top face, move it to the bottom face first
		moves.Fi(cube)
		movelist.append('Fi')
		moves.Ui(cube)
		movelist.append('Ui')
		moves.F(cube)
		movelist.append('F')

	if((cube[6][6] == colour) and ((cube[5][5] != cube[4][4]) or (cube[5][6] != cube[4][7]))):
		moves.Ui(cube)
		movelist.append('Ui')
		moves.Li(cube)
		movelist.append('Li')
		moves.U(cube)
		movelist.append('U')
		moves.L(cube)
		movelist.append('L')
	elif((cube[8][6] == colour) and ((cube[5][2] != cube[4][1]) or (cube[5][3] != cube[4][4]))):
		moves.Ui(cube)
		movelist.append('Ui')
		moves.Bi(cube)
		movelist.append('Bi')
		moves.U(cube)
		movelist.append('U')
		moves.B(cube)
		movelist.append('B')
	elif((cube[8][8] == colour) and ((cube[5][0] != cube[4][1]) or (cube[5][11] != cube[4][10]))):
		moves.Ui(cube)
		movelist.append('Ui')
		moves.Ri(cube)
		movelist.append('Ri')
		moves.U(cube)
		movelist.append('U')
		moves.R(cube)
		movelist.append('R')
	elif((cube[6][8] == colour) and ((cube[5][8] != cube[4][7]) or (cube[5][9] != cube[4][10]))):
		moves.Ui(cube)
		movelist.append('Ui')
		moves.Fi(cube)
		movelist.append('Fi')
		moves.U(cube)
		movelist.append('U')
		moves.F(cube)
		movelist.append('F')

	if(check_posi(cube, colour) == 1):
		Stage3(cube, movelist)

def check_posi(cube, colour):
	if((cube[3][5] == colour) or (cube[3][6] == colour) or (cube[2][6] == colour) or (cube[3][8] == colour) or (cube[3][9] == colour) or (cube[2][8] == colour) or (cube[0][8] == colour) or (cube[3][11] == colour) or (cube[3][0] == colour) or (cube[0][6] == colour) or (cube[3][2] == colour) or (cube[3][3] == colour)):
		return 1
	else:
		return 0


def Stage4(s4, movelist):
	#Front check 
	check = -1
	i = -1
	flag = -1

	if((s4[3][7] == s4[4][7]) or (s4[3][7] == s4[4][10]) or (s4[3][7] == s4[4][1]) or (s4[3][7] == s4[4][4]) or (s4[3][10] == s4[4][7]) or (s4[3][10] == s4[4][10]) or (s4[3][10] == s4[4][1]) or (s4[3][10] == s4[4][4]) or (s4[3][1] == s4[4][7]) or (s4[3][1] == s4[4][10]) or (s4[3][1] == s4[4][1]) or (s4[3][1] == s4[4][4]) or (s4[3][4] == s4[4][7]) or (s4[3][4] == s4[4][10]) or (s4[3][4] == s4[4][1]) or (s4[3][4] == s4[4][4])):
		while (i < 4):
			if(((s4[4][7] == s4[3][7]) and ((s4[2][7] == s4[4][4]) or (s4[2][7] == s4[4][10]))) or ((s4[4][4] == s4[3][4]) and ((s4[1][6] == s4[4][7]) or (s4[1][6] == s4[4][1]))) or ((s4[4][1] == s4[3][1]) and ((s4[0][7] == s4[4][4]) or (s4[2][7] == s4[4][10]))) or ((s4[4][10] == s4[3][10]) and ((s4[1][8] == s4[4][7]) or (s4[1][8] == s4[4][1])))):
				Stage4_moves(s4, movelist)

			i = i + 1


	if((s4[4][10] != s4[4][11]) or (s4[4][0] != s4[4][1])): #Right + Back
		moves.U(s4)
		movelist.append('U')
		moves.B(s4)
		movelist.append('B')
		moves.Ui(s4)
		movelist.append('Ui')
		moves.Bi(s4)
		movelist.append('Bi')
		moves.Ui(s4)
		movelist.append('Ui')
		moves.Ri(s4)
		movelist.append('Ri')
		moves.U(s4)
		movelist.append('U')
		moves.R(s4)
		movelist.append('R')
		check = Stage4_moves(s4, movelist)

		if(check == 0):
			moves.Ri(s4)
			movelist.append('Ri')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.R(s4)
			movelist.append('R')
			moves.U(s4)
			movelist.append('U')
			moves.B(s4)
			movelist.append('B')
			moves.U(s4)
			movelist.append('U')
			moves.Bi(s4)
			movelist.append('Bi')
			moves.Ui(s4)
			movelist.append('Ui')

			moves.Ui(s4)
			movelist.append('Ui')
			moves.Ri(s4)
			movelist.append('Ri')
			moves.U(s4)
			movelist.append('U')
			moves.R(s4)
			movelist.append('R')
			moves.U(s4)
			movelist.append('U')
			moves.B(s4)
			movelist.append('B')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Bi(s4)
			movelist.append('Bi')
			check = Stage4_moves(s4, movelist)

	elif((s4[4][1] != s4[4][2]) or (s4[4][3] != s4[4][4])): #Back + Left	
		moves.U(s4)
		movelist.append('U')
		moves.L(s4)
		movelist.append('L')
		moves.Ui(s4)
		movelist.append('Ui')
		moves.Li(s4)
		movelist.append('Li')
		moves.Ui(s4)
		movelist.append('Ui')
		moves.Bi(s4)
		movelist.append('Bi')
		moves.U(s4)
		movelist.append('U')
		moves.B(s4)
		movelist.append('B')
		check = Stage4_moves(s4, movelist)

		if(check == 0):
			moves.Bi(s4)
			movelist.append('Bi')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.B(s4)
			movelist.append('B')
			moves.U(s4)
			movelist.append('U')
			moves.L(s4)
			movelist.append('L')
			moves.U(s4)
			movelist.append('U')
			moves.Li(s4)
			movelist.append('Li')
			moves.Ui(s4)
			movelist.append('Ui')

			moves.Ui(s4)
			movelist.append('Ui')
			moves.Bi(s4)
			movelist.append('Bi')
			moves.U(s4)
			movelist.append('U')
			moves.B(s4)
			movelist.append('B')
			moves.U(s4)
			movelist.append('U')
			moves.L(s4)
			movelist.append('L')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Li(s4)
			movelist.append('Li')
			check = Stage4_moves(s4, movelist)

	# else:
	elif((s4[4][4] != s4[4][5]) or (s4[4][6] != s4[4][7])): #Front + Left
		moves.U(s4)
		movelist.append('U')
		moves.F(s4)
		movelist.append('F')
		moves.Ui(s4)
		movelist.append('Ui')
		moves.Fi(s4)
		movelist.append('Fi')
		moves.Ui(s4)
		movelist.append('Ui')
		moves.Li(s4)
		movelist.append('Li')
		moves.U(s4)
		movelist.append('U')
		moves.L(s4)
		movelist.append('L')
		check = Stage4_moves(s4, movelist)

		if(check == 0):
			moves.Li(s4)
			movelist.append('Li')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.L(s4)
			movelist.append('L')
			moves.U(s4)
			movelist.append('U')
			moves.F(s4)
			movelist.append('F')
			moves.U(s4)
			movelist.append('U')
			moves.Fi(s4)
			movelist.append('Fi')
			moves.Ui(s4)
			movelist.append('Ui')

			moves.Ui(s4)
			movelist.append('Ui')
			moves.Li(s4)
			movelist.append('Li')
			moves.U(s4)
			movelist.append('U')
			moves.L(s4)
			movelist.append('L')
			moves.U(s4)
			movelist.append('U')
			moves.F(s4)
			movelist.append('F')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Fi(s4)
			movelist.append('Fi')
			check = Stage4_moves(s4, movelist)

	elif((s4[4][7] != s4[4][8]) or (s4[4][9] != s4[4][10])): #Front + Right
		moves.Ui(s4)
		movelist.append('Ui')
		moves.Fi(s4)
		movelist.append('Fi')
		moves.U(s4)
		movelist.append('U')
		moves.F(s4)
		movelist.append('F')
		moves.U(s4)
		movelist.append('U')
		moves.R(s4)
		movelist.append('R')
		moves.Ui(s4)
		movelist.append('Ui')
		moves.Ri(s4)
		movelist.append('Ri')
		check = Stage4_moves(s4, movelist)

		if(check == 0):
			moves.R(s4)
			movelist.append('R')
			moves.U(s4)
			movelist.append('U')
			moves.Ri(s4)
			movelist.append('Ri')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Fi(s4)
			movelist.append('Fi')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.F(s4)
			movelist.append('F')
			moves.U(s4)
			movelist.append('U')

			moves.U(s4)
			movelist.append('U')
			moves.R(s4)
			movelist.append('R')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Ri(s4)
			movelist.append('Ri')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Fi(s4)
			movelist.append('Fi')
			moves.U(s4)
			movelist.append('U')
			moves.F(s4)
			movelist.append('F')
			check = Stage4_moves(s4, movelist)
	

	if((s4[4][4] != s4[4][5]) or (s4[4][6] != s4[4][7]) or (s4[4][7] != s4[4][8]) or (s4[4][9] != s4[4][10]) or (s4[4][10] != s4[4][11]) or (s4[4][0] != s4[4][1]) or (s4[4][1] != s4[4][2]) or (s4[4][3] != s4[4][4])):
		Stage4(s4, movelist)


def Stage4_moves(s4, movelist):
	#FRONT FACE MOVES
	#Right side
	flag = 0
	i = 0
	while(i < 4):
		moves.U(s4)
		movelist.append('U')
		i = i + 1
		
		#finalPrint(s4, movelist)
		
		if((s4[2][7] == s4[4][10]) and (s4[4][7] == s4[3][7]) and ((s4[4][7] != s4[4][8]) or (s4[4][10] != s4[4][9]))):
			moves.U(s4)
			movelist.append('U')
			moves.R(s4)
			movelist.append('R')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Ri(s4)
			movelist.append('Ri')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Fi(s4)
			movelist.append('Fi')
			moves.U(s4)
			movelist.append('U')
			moves.F(s4)
			movelist.append('F')
			flag = 1

		#Left Side
		elif((s4[2][7] == s4[4][4]) and (s4[4][7] == s4[3][7]) and ((s4[4][7] != s4[4][6]) or (s4[4][5] != s4[4][4]))):
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Li(s4)
			movelist.append('Li')
			moves.U(s4)
			movelist.append('U')
			moves.L(s4)
			movelist.append('L')
			moves.U(s4)
			movelist.append('U')
			moves.F(s4)
			movelist.append('F')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Fi(s4)
			movelist.append('Fi')
			flag = 1

		#RIGHT FACE MOVES
		#Right side
		if((s4[1][8] == s4[4][1]) and (s4[4][10] == s4[3][10]) and ((s4[4][10] != s4[4][11]) or (s4[4][0] != s4[4][1]))):
			moves.U(s4)
			movelist.append('U')
			moves.B(s4)
			movelist.append('B')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Bi(s4)
			movelist.append('Bi')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Ri(s4)
			movelist.append('Ri')
			moves.U(s4)
			movelist.append('U')
			moves.R(s4)
			movelist.append('R')
			flag = 1
			  
		#Left Side
		elif((s4[1][8] == s4[4][7]) and (s4[4][10] == s4[3][10]) and ((s4[4][10] != s4[4][9]) or (s4[4][7] != s4[4][8]))):
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Fi(s4)
			movelist.append('Fi')
			moves.U(s4)
			movelist.append('U')
			moves.F(s4)
			movelist.append('F')
			moves.U(s4)
			movelist.append('U')
			moves.R(s4)
			movelist.append('R')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Ri(s4)
			movelist.append('Ri')
			flag = 1

		#BACK FACE MOVES
		#Right side
		if((s4[0][7] == s4[4][4]) and (s4[3][1] == s4[4][1]) and ((s4[4][1] != s4[4][2]) or (s4[4][3] != s4[4][4]))):
			moves.U(s4)
			movelist.append('U')
			moves.L(s4)
			movelist.append('L')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Li(s4)
			movelist.append('Li')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Bi(s4)
			movelist.append('Bi')
			moves.U(s4)
			movelist.append('U')
			moves.B(s4)
			movelist.append('B')
			flag = 1
			
		#Left Side
		elif((s4[0][7] == s4[4][10]) and (s4[3][1] == s4[4][1]) and((s4[4][1] != s4[4][0]) or (s4[4][10] != s4[4][11]))):
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Ri(s4)
			movelist.append('Ri')
			moves.U(s4)
			movelist.append('U')
			moves.R(s4)
			movelist.append('R')
			moves.U(s4)
			movelist.append('U')
			moves.B(s4)
			movelist.append('B')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Bi(s4)
			movelist.append('Bi')
			flag = 1

		#LEFT FACE MOVES
		#Right side
		if((s4[1][6] == s4[4][7]) and (s4[4][4] == s4[3][4]) and ((s4[4][4] != s4[4][5]) or (s4[4][6] != s4[4][7]))):
			moves.U(s4)
			movelist.append('U')
			moves.F(s4)
			movelist.append('F')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Fi(s4)
			movelist.append('Fi')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Li(s4)
			movelist.append('Li')
			moves.U(s4)
			movelist.append('U')
			moves.L(s4)
			movelist.append('L')
			flag = 1
			
		#Left Side
		elif((s4[1][6] == s4[4][1]) and (s4[4][4] == s4[3][4]) and ((s4[4][4] != s4[4][3]) or (s4[4][1] != s4[4][2]))):
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Bi(s4)
			movelist.append('Bi')
			moves.U(s4)
			movelist.append('U')
			moves.B(s4)
			movelist.append('B')
			moves.U(s4)
			movelist.append('U')
			moves.L(s4)
			movelist.append('L')
			moves.Ui(s4)
			movelist.append('Ui')
			moves.Li(s4)
			movelist.append('Li')
			flag = 1

	return flag

def Stage5step1(a, movelist):
#	print("Before Step 1")
#	finalPrint(a, movelist)
	color = a[1][7]; flag = 0
#	finalPrint(a, movelist)
	while flag == 0:
		if (a[0][7] == color and a[1][8] == color and a[2][7] == color and a[1][6] == color):
			flag = 1
		elif (a[1][6] == color and a[1][8] == color):
			stage5movesStep1State4(a, movelist)
		elif (a[0][7] == color and a[2][7] == color):
			moves.U(a); movelist.append('U')
			stage5movesStep1State4(a, movelist)
		elif (a[0][7] == color and a[1][6] == color):
			stage5movesStep1State2and3(a, movelist)
		elif (a[0][7] == color and a[1][8] == color):
			moves.Ui(a); movelist.append('Ui')
			stage5movesStep1State2and3(a, movelist)
		elif (a[1][8] == color and a[2][7] == color):
			moves.Ui(a); movelist.append('Ui')
			moves.Ui(a); movelist.append('Ui')
			stage5movesStep1State2and3(a, movelist)
		elif (a[2][7] == color and a[1][6] == color):
			moves.U(a); movelist.append('U')
			stage5movesStep1State2and3(a, movelist)
		else:
			stage5movesStep1State2and3(a, movelist)

def Stage5step2(a, movelist):
#	print("Before Step 2")
#	finalPrint(a, movelist)
	color = a[1][7]
	i = 0; j = 0; flag = 0; count = 0
	while (flag == 0):
		count = 0
		for i in range(0,3):
			for j in range(6,9):
				if (a[i][j] == color):
					count += 1
		if (count == 9):
			flag = 1
		elif (count == 5):
			while (a[3][5] != color):
				moves.U(a); movelist.append('U')
			Stage5movesStep2(a, movelist)
		elif (count == 6):
			while (a[2][6] != color):
				moves.U(a); movelist.append('U')
			Stage5movesStep2(a, movelist)
		elif (count == 7 or count == 8):
			while (a[3][6] != color):
				moves.U(a); movelist.append('U')
			Stage5movesStep2(a, movelist)

def stage5movesStep1State2and3(a, movelist):
	moves.F(a); moves.U(a); moves.R(a)
	moves.Ui(a); moves.Ri(a); moves.Fi(a)
	movelist.append('F')
	movelist.append('U')
	movelist.append('R')
	movelist.append('Ui')
	movelist.append('Ri')
	movelist.append('Fi')
def stage5movesStep1State4(a, movelist):
	moves.F(a); moves.R(a); moves.U(a)
	moves.Ri(a); moves.Ui(a); moves.Fi(a)
	movelist.append('F')
	movelist.append('R')
	movelist.append('U')
	movelist.append('Ri')
	movelist.append('Ui')
	movelist.append('Fi')



def Stage5movesStep2(a, movelist):
	moves.R(a); moves.U(a); moves.Ri(a); moves.U(a)
	moves.R(a); moves.U(a); moves.U(a); moves.Ri(a)
	movelist.append('R')
	movelist.append('U')
	movelist.append('Ri')
	movelist.append('U')
	movelist.append('R')
	movelist.append('U')
	movelist.append('U')
	movelist.append('Ri')

def Stage5(a, movelist):
	Stage5step1(a, movelist)
	Stage5step2(a, movelist)