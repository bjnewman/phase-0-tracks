1. Key design philosophies of Linux OS - following Unix principle to assume that the user is computer literate, "don't protect the user from doing stupid things, as that prevents them from doing clever things too" - Doug Gwyn (possibly apocryphal)
Free software licensing with ability for programmers to participate in development from all over the world. 

2. What is a VPS (virtual private server?) What are advantages of using a VPS? 
A virtual private server is a chunk of resources (memory, cpu time, etc) that is assigned to a user with a fully installed OS with superuser access so the user can setup any program that the OS can run. The major advantages over dedicated hosting is cost, with software-defined servers we can only pay for the resources we need with low-use services vs having to pay for the physical hardware. As opposed to shared hosting gives better security and control over resources. 

see https://www.inmotionhosting.com/support/website/difference-between-shared-vps-dedicated-hosting or https://www.techopedia.com/definition/4800/virtual-private-server-vps

3. Bonus: Why is it bad to run programs as root on Linux?
elevated privileges means any mistake can damage the core OS or erase major amounts of files, best practice is to run everything from non-admin account and only elevate privileges on a case-by-case basis as needed. So crashes don't corrupt entire directories and simple security bugs don't allow total attacker control.