#1º En VirtualBox, con la máquina apagada, seleccionarla e ir a "configuración / carpetas compartidas / botón de añadir carpeta" y elegimos 
#la carpeta del proyecto que queramos compartir en "ruta de carpeta".

#2º Arrancamos la máquina, una vez arrancada vamos al menu superior de la ventana de nuestra máquina virtual y pulsamos sobre
#"Dispositivos/Unidades ópticas "Guest Additions"

#3º Dentro de la consola de Ubuntu Server escribimos los siguientes comandos:

#sudo mkdir /media/cdrom 
#sudo mount -t iso9660 /dev/cdrom /media/cdrom 
#sudo apt update
#sudo apt install -y build-essential linux-headers-`uname -r` 
#sudo /media/cdrom/./VBoxLinuxAdditions.run 
#sudo shutdown -r now 
#sudo mkdir ~/carpeta_de_ejemplo  
#sudo mount -t vboxsf carpeta_de_ejemplo ~/carpeta_de_ejemplo
#cd ~/carpeta_de_ejemplo 

#4º Para hacer este cambio permanente

#sudo nano /etc/fstab (entramos dentro de este archivo y escribimos la siguiente línea sustituyendo nombre_de_usuario y carpeta_de_ejemplo)
#carpeta_de_ejemplo	/home/nombre_de_usuario/carpeta_de_ejemplo	vboxsf	defaults	0	0

#sudo nano /etc/modules (entramos dentro de este archivo y escribimos)
#vboxsf

#sudo shutdown -r now 
