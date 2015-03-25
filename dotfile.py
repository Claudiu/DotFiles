import shutil
import os
import argparse

HERE = os.path.dirname(os.path.abspath(__file__));
HOME = os.path.expanduser("~") 

files = [".zshrc"]

def installFile(fileName):
	shutil.copyfile(HERE + "/" + fileName, HOME + "/" + fileName)
	print "Copying " + fileName + " to your home directory."

def install():
	print "Starting DotFile installation."
		
	for file in files:
		installFile(file)
		pass

	pass


def grab():
	print "Starting DotFile grab."
		
	for file in files:
		grabFile(file)
		pass
	pass

def grabFile(fileName):
	shutil.copyfile(HOME + "/" + fileName, HERE + "/" + fileName)
	print "Copying " + fileName + " from your home directory."

parser = argparse.ArgumentParser(description='Installation utility for https://github.com/Claudiu/DotFiles')
parser.add_argument('-i','--install', help='Install DotFiles to current user.',action='store_true', required=False)
parser.add_argument('-g','--grab', help='Grab DotFiles from current user.',action='store_true', required=False)
args = parser.parse_args()

if args.install and not args.grab:
	install()
	pass

if args.grab and not args.install:
	grab()
	pass
