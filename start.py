from Tkinter import *
import os
import subprocess

root = Tk()

init_frame = Frame(root)
init_frame.grid(row=1, column=2)

def install_deps():
    subprocess.call(['./setup/install_deps.sh'])
def install_games():
    subprocess.call(['./setup/install_games.sh'])


Button(init_frame, text = 'Install dependancies', command = install_deps).grid(row=0, column=0)

Button(init_frame, text = 'Install games', command = install_games).grid(row=0, column=1)

for filename in os.listdir('games'):
    def play():
        if os.name == 'nt':
            subprocess.call(['./games/' + filename + '/NT_START.exe'])
        else:
            subprocess.call(['./games/' + filename + '/WINE_START.sh'])

    button = Button(root, text = 'Play ' + filename, command = play)
    button.pack(pady=20, padx = 20)

root.mainloop()
