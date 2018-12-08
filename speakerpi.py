import subprocess
import pexpect
btctl = pexpect.spawn("bluetoothctl")
connected = len(subprocess.getoutput("hcitool con").split()) > 1
stillconnected = False

while True:
    if len(subprocess.getoutput("hcitool con").split()) > 1:
        if not connected:
            stillconnected = False
        connected = True
    else:
        if connected:
            stillconnected = False
        connected = False
    if connected and not stillconnected:
        print("Device connected.")
        stillconnected = True
        btctl.send("discoverable off\n")
        btctl.expect(["bluetooth", pexpect.EOF])
    elif not connected and not stillconnected:
        print("Device not connected.")
        stillconnected = True
        btctl.send("discoverable on\n")
        btctl.expect(["bluetooth", pexpect.EOF])
