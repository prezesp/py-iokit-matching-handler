from subprocess import Popen, PIPE

cimport main

class IOKitMatchingHandler:

	def handle(self):
		script = 'display notification "Usb connected." with title "Info"'
		p = Popen(['osascript', '-'], stdin=PIPE, stdout=PIPE, stderr=PIPE)
		stdout, stderr = p.communicate(script.encode("utf-8"))
		main.handle()

