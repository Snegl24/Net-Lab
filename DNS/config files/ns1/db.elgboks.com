;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns1.elgboks.com. admin.elgboks.com. (
			      9		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;

; name servers - NS records
	IN	NS	ns1.elgboks.com.
	IN	NS	ns2.elgboks.com.

; name server - A records
ns1.elgboks.com.	IN	A	192.168.56.104
ns2.elgboks.com.	IN	A	192.168.56.105

; 192.168.56.0/24 - A records
ftp1.elgboks.com.	IN	A	192.168.56.106
apollo.elgboks.com.	IN	A	192.168.56.1
media1.elgboks.com.	IN	A	192.168.56.107
