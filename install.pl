# V 0.1 Install.pl
# Upload 29/11/15
# 12:37 p.m
#By Rodrigo
system('clear');

$banner =<<ETQT;

                                                                            
           ***** ***          **              * ***            ***** **    
        ******  * **       *****            *  ****  *      ******  ****   
       **   *  *  **      *  ***           *  *  ****      **   *  *  ***  
      *    *  *   **         ***          *  **   **      *    *  *    *** 
          *  *    *         *  **        *  ***               *  *      ** 
         ** **   *          *  **       **   **              ** **      ** 
         ** **  *          *    **      **   **              ** **      ** 
         ** ****           *    **      **   **            **** **      *  
         ** **  ***       *      **     **   **           * *** **     *   
         ** **    **      *********     **   **              ** *******    
         *  **    **     *        **     **  **              ** ******     
            *     **     *        **      ** *      *        ** **         
        ****      ***   *****      **      ***     *         ** **         
       *  ****    **   *   ****    ** *     *******          ** **         
      *    **     *   *     **      **        ***       **   ** **         
      *               *                                ***   *  *          
       **              **                               ***    *           
                                                         ******            
                                                           ***             
             
            [*]Have fun. Created by Rodrigo Canaza.
            [*]Blog : http://racp-pl.blogspot.pe/
            [*]Version - 0.8 ...


ETQT
print "$banner";
print "\n\n";
print "[+] Instalando RACP ...\n"; 
print "[+] Espere un momento porfavor ... ! \n";
print "\n";
sleep(6);
system('mkdir /usr/share/RACP/');
system('cp -r Diccionarios /usr/share/RACP/');
system('cp -r mhe /usr/share/RACP/');
system('cp -r modu /usr/share/RACP/');
system('cp -r opt /usr/share/RACP/');
system('cp -r tak /usr/share/RACP/');
system('cp RACP.pl /usr/share/RACP/');
system('cp LICENSE.txt /usr/share/RACP/');
system('cp README.md /usr/share/RACP/');
system('cp RACP /usr/bin/');
print "[*] Brindando Privilegios *** \n";
sleep(6);
print "\n\n";
system('chmod -c -R 777 /usr/share/RACP/');
system('chmod -c 777 /usr/bin/RACP');
print "\n\n";
print "[+] Instalacion Completa .\n";
print "[+] Usted podra llamar ahora al programa desde cualquier lado , escribiendo en la consola RACP ...!\n";
print "[-] ATTE : \" Rodrigo C. \" \n\n";
