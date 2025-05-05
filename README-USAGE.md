```
java -jar java-ssl-test-*.jar -showcerts -cipherProbeDisable  www.google.de
```

```
Host [www.google.de] resolves to address [172.217.16.131], [2a00:1450:4001:808:0:0:0:2003]
Auto-detected client-supported protocols: [SSLv3, TLSv1, TLSv1.1, TLSv1.2, TLSv1.3]
Testing server www.google.de:443
Supported Protocol Cipher
Attempting to check certificate:
Certificate: X.509
Subject    : CN=www.google.de
Issuer     : CN=WE2, O=Google Trust Services, C=US
Serial     : 119199011177704509528214839091837972622
Not Before : Mon, Mar 31 2025 at 10:56:00 AM CEST
Not After  : Mon, Jun 23 2025 at 10:55:59 AM CEST
Certificate is currently valid.
Alternate Names: www.google.de
Certificate: X.509
Subject    : CN=WE2, O=Google Trust Services, C=US
Issuer     : CN=GTS Root R4, O=Google Trust Services LLC, C=US
Serial     : 170074604807150777415902075947543458528
Not Before : Wed, Dec 13 2023 at 10:00:00 AM CET
Not After  : Tue, Feb 20 2029 at 03:00:00 PM CET
Certificate is currently valid.
Alternate Names: Unavailable
Certificate: X.509
Subject    : CN=GTS Root R4, O=Google Trust Services LLC, C=US
Issuer     : CN=GlobalSign Root CA, OU=Root CA, O=GlobalSign nv-sa, C=BE
Serial     : 170001980149335831901244157168837298715
Not Before : Wed, Nov 15 2023 at 04:43:21 AM CET
Not After  : Fri, Jan 28 2028 at 01:00:42 AM CET
Certificate is currently valid.
Alternate Names: Unavailable
Total Execution time:01.373s
```

Show Supported Protocol Cipher
```
java -jar java-ssl-test-*.jar -showcerts    www.google.de 
```
Lists additionally about 500 Protocol Cipher in format
```
Rejected    SSLv3 TLS_DHE_DSS_WITH_AES_256_GCM_SHA384
Accepted    TLSv1 TLS_RSA_WITH_AES_256_CBC_SHA
```

