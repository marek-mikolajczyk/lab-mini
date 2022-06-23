#!/usr/bin/python3

import os

menu_options = {
    1: 'OS Standarize',
    2: 'Gitlab Runner',
    3: 'Workstation configure',
    4: 'Server Devops configure',
    5: 'Exit',
}

def print_menu():
    for key in menu_options.keys():
        print (key, '--', menu_options[key] )

def option1():
     print('Running playbook os_standarize')
     os.system('sh ./script-os_standard.sh')

def option2():
     print('Running playbook gitlab_runner')
     os.system('sh ./script-gitlab_runner.sh')

def option3():
     print('Configuring workstation')
     os.system('sh ./script-workstation.sh')


def option4():
     print('Configuring devops server ')
     os.system('sh ./script-devops.sh')

if __name__=='__main__':
    while(True):
        print_menu()
        option = ''
        try:
            option = int(input('Enter your choice: '))
        except:
            print('Wrong input. Please enter a number ...')
        #Check what choice was entered and act accordingly
        if option == 1:
           option1()
        elif option == 2:
            option2()
        elif option == 3:
            option3()
        elif option == 4:
            option4()
        elif option == 5:
            print('Thanks message before exiting')
            exit()
        else:
            print('Invalid option. Please enter a number between 1 and 5.')
