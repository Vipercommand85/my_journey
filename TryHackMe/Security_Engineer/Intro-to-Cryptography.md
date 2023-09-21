## PKI & SSL/TLS
* using PKI allows for the nonrepudation of data sent to individual parties
* of the main users of PKI is web browsing, this can be seen with the lock symbol in the left corner of the address bar

### What is the size of the public key in bits?
* using the following command
```bash
openssl x509 -in cert.pem -text
```
```bash
4096
```

### Until what year is this certificate valid?
```bash
2039
```

## Task 7: Authenticating with Passwords
### You were auditing a system when you discovered that the MD5 hash of the admin password is **3fc0a7acf087f549ac2b266baf94b8b1**
### What is the original password?
```bash
qwert123
```
