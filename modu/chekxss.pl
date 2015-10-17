# By Rodrigo
# Cheking XSS Beta V0.1
# Actualizado el 17/10/2015
# 9:04 a.m
use LWP::Simple;
print "\n";
print "Introduce tu URL \n";
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

