![Screenshot] (https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/12075097_914576941946486_3455918917180557948_n.jpg?oh=fcae24b8744062e442508b6014e37bb0&oe=568719F5&__gda__=1455549261_48f053634aa8b295e8a26a2f4b468fe6)
         
        
# RACP V0.8
Saludos !  Pronto una actualizacion ... !  expect us !

#Que necesisto para usar RACP ? 
Mi intencion fue hacerlo multiplataforma, ya que existe gente que no cuenta con un sistema operativo linux ;) .
Lo malo esque para windows no funciona algunas funciones de RACP .
Son Pocas ;) xd .
Los requirimientos son los siguientes :

-Tener instalado Mechanize . 

#¿Qué es «RACP»? 
RACP una herramienta desarrollada por mi persona es lanzada a la gran fila de herramientas en pentest para hackers y para personas que les interesa la «INSEGURIDAD INFORMATICA», esta herramienta facilita al usuario a llevar acabo una inspección en busca de paneles de administrador e intentar ataques de fuerza bruta a CMS muy conocidas como la de wordpress y la de joomla.


#Probado 
Lo e probado en windows 7 y kali linux ;) .

# LFI chek vuln : 
-> [A] Default . 

- El script se ejecutara en forma normal . 


-> [B] Usar diccionario de paginas para verificar LFI. 
-> Uso ? <-


[!] Tu puedes agregar las paginas en el siguiente archivo : \n";
[*] /RACP-master/tak/paginaslfi.txt\n\n";



Usted tiene la posibilidad de añadir targets para pasar el actual modulo . Ejemplo de como añadir las targets : 



www.xxx.com/?php=
www.xsaxx.gob.cl/[PATH]/?php=
www.target.gob.bo/?php=



Y pues se puede aumentar mas targets :P ! 



[!] Las paginas vulnerables se guardaran en : \n";
[*] /RACP-master/output/outlfi.txt\n\n";



Las paginas vulnerables se guardaran en un archivo .txt llamado "outlfi.txt" . 
Se guardaran las paginas que se encontraron vulnerables a los payloads .



#Blog : 
- http://racp-pl.blogspot.pe/

#[!] Aviso Legal : 
Mi persona no se hace responsable de cualquier mal uso o daño causado por este programa.

#[!] Legal Disclaimer :
My person is not responsible for any misuse or damage caused by this program.

Disculpen por mi ortografia :c .

Atte : Rodrigo Canaza P.

Fb : https://www.facebook.com/RodrigoAlonzoWar

![Screenshot](https://avatars2.githubusercontent.com/u/13175793?v=3&u=7c2c8158ccbbaf672044ff58540ff13aaa1c8157&s=140)


Logs : 
Upload 20/2/2015 .  (tools) 
+[FIND ADMIN PAGE]
+[FORCE BRUTE JOOMLA]
+[FORCE BRUTE WORDPRESS]
+[CHECK LFI VULNERABILIDAD]
+[CHECK XSS VULNERABILIDAD]
Borrado de LWP::UserAgent 10/09/2015.
Añadi Banners random :) .
