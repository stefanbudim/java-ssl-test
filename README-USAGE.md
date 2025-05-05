# Installation
Download latest Release from https://github.com/stefanbudim/java-ssl-test/releases/

# Run tool to test SSL/certificates 
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

# Show Supported Protocol Cipher
```
java -jar java-ssl-test-*.jar -showcerts    www.google.de 
```
Lists additionally about 500 Protocol Cipher in format
```
Rejected    SSLv3 TLS_DHE_DSS_WITH_AES_256_GCM_SHA384
Accepted    TLSv1 TLS_RSA_WITH_AES_256_CBC_SHA
```

# USAGE
```
Usage: javassltest [opts] host[:port]

Options:
-sslprotocol                 Sets the SSL/TLS protocol to be used (e.g. SSL, TLS, SSLv3, TLSv1.2, etc.)
-enabledprotocols protocols  Sets individual SSL/TLS ptotocols that should be enabled
-ciphers cipherspec          A comma-separated list of SSL/TLS ciphers

-keystore                    Sets the key store for connections (for TLS client certificates)
-keystoretype type           Sets the type for the key store
-keystorepassword pass       Sets the password for the key store
-keystoreprovider provider   Sets the crypto provider for the key store

-truststore                  Sets the trust store for connections
-truststoretype type         Sets the type for the trust store
-truststorepassword pass     Sets the password for the trust store
-truststorealgorithm alg     Sets the algorithm for the trust store
-truststoreprovider provider Sets the crypto provider for the trust store
-crlfilename                 Sets the CRL filename to use for the trust store

-check-certificate           Checks certificate trust (default: false)
-no-check-certificate        Ignores certificate errors (default: true)
-verify-hostname             Verifies certificate hostname (default: false)
-no-verify-hostname          Ignores hostname mismatches (default: true)

-showsslerrors               Show SSL/TLS error details
-showhandshakeerrors         Show SSL/TLS handshake error details
-showerrors                  Show all connection error details
-hiderejects                 Only show protocols/ciphers which were successful
-cipherProbeDisable          Only show protocols/ciphers which were successful
-showcerts                   Shows some basic Certificate details

-h -help --help              Shows this help message
u  ~/Downloads $ 
```

