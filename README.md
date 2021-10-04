# MailboxLight
An LED that illuminates the inside of the mailbox when the door is opened.

by Adrian McCarthy

This was a very simple project I undertook to learn how to use KiCAD to design a printed circuit board.  The fact that I can now see all the mail in my mailbox when I check it at night is a nice bonus.

You're welcome to make these yourself or to fork and modify them to better suit your own requirements.  Since this was just a learning project for me, I probably won't bother responding to pull-requests.

No warranty.  No claims of fitness for any purpose.  Use at your own risk.

## Assembly Notes

The specified value for R1 is 15 Ohms, which would yield the brightest light, but it's not a standard resistor value.  I used 22 Ohms in mine, which worked out fine.  The CR2032 battery lasted approximately one year of usage.

Rather than mounting the LED flush with the board, you might want to mount it a few millimeters above the board, which would allow you to bend the leads so that the LED points toward the back of the mailbox when mounted.

## Mounting

The mounting plate can be rendered to STL with OpenSCAD.  Use your favorite slicer to generate the appropriate file for your 3D printer.  It's very simple and should work just fine with all of the default settings.  I used the Cura slicer with an Ultimaker 2 and PLA filament.

The PCB can be secured to the mounting plate with 8mm long M2 machine screws and nuts.  (The nuts fit into recesses in the back of the plate.)  The device can then be attached to the side of the mailbox, just behind the door, using double-sided tape.  For me, 3M Command-brand mounting tape worked perfectly, but any double-sided foam tape should also work.  Follow your tape's instructions for best adhesion.

The lever arm of the switch is too short, so it's important to mount it as close as possible to the threshold.  Even so, you might want to mount a small square of cardboard or foam tape to the inside of the door to ensure the switch is fully depressed when the door is closed.
