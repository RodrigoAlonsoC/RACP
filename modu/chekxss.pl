#!/usr/bin/perl
# By Rodrigo
# Cheking XSS Beta V0.2
# Actualizado el 17/12/2015
# 3:41 pm
use LWP::Simple;
print "\n";
print "[A] Default. \n";
print "[B] Usar diccionario de paginas para verificar XSS. \n";
$opcio = <STDIN>;
chomp($opcio);
if ($opcio eq 'A'){
print "[!]Example : www.target.com/php.id= \n\n";
print "[!]Introduce tu URL \n";
$url = <STDIN>; 
chomp($url);
print "\n";
if ($url !~ /^http:/){
	$url = 'http://' . $url;
}
print "\n\n";
$dicxss = 'mhe/dicxss.txt';
open (XSS , "<$dicxss" );
while (@payload = <XSS>){
	chomp(@payload);
	

foreach $payaso(@payload){
	$new = $url.$payaso;
	$pagina_codigo = LWP::Simple::get($new);

if ( $pagina_codigo =~ /RACP/ ||
	 $pagina_codigo =~ /racp/ ){
	print "[+] Posible Vulnerable -> $new\n\n";

}
else {
	print "[-] No vulnerable -> $new\n\n";
}

}
close(XSS);
}

} 
elsif ( $opcio eq 'B'){
	print "\n";
print "INICIANDO MODULO ...\n\n";
sleep(6);
print "[!] Tu puedes agregar las paginas en el siguiente archivo : \n";
print "[*] /RACP-master/tak/paginasxss.txt\n\n";
sleep(6);
print "[!] Las paginas vulnerables se guardaran en : \n";
print "[*] /RACP-master/output/outxss.txt\n\n";
sleep(6);
$pagxs = "tak/paginasxss.txt";
$dicxss = "mhe/dicxss.txt";
$outp = "output/outxss.txt";
open (XSS , "<$dicxss");
while ( @payload = <XSS>){
	chomp(@payload);

open ( TARX , "<$pagxs");
while (@target = <TARX>){
chomp(@target);

	foreach $tar(@target){

		if ($tar !~ /^http:/){
	    $tar = 'http://' . $tar;
}
		
		

foreach $pay(@payload){

        $url = $tar.$pay;
		$pagina_codigo = LWP::Simple::get($url);

		if ( $pagina_codigo =~ /RACP/ ||
	         $pagina_codigo =~ /racp/ ){
			print "[+] Posible Vulnerable ! $url \n";

			open ( SAV , ">>$outp");
print SAV "\n\n";
print SAV " RACP | Happy Hacking :D !\n";
print SAV "===================================\n";
print SAV "===================================\n\n";
print SAV "$url\n";
close SAV;

		}
		else {
         print "[-] No vulnerable ! $url \n";
		}


	}



}



	close(TARX);
}
 


close(XSS);
}  
}
