# tools-automation

This repository holds all the terraform code for Tools Infrastructure provisioning and the associated configuration management using ANSIBLE ( roles )



### Vault Installation :

Ref: https://developer.hashicorp.com/vault/install?ajs_aid=b6137d6a-761d-417b-90b7-a5009fe8a78e&product_intent=vault
     https://foxutech.com/hashicorp-vault-how-to-setup-on-linux/
```
    $ sudo yum install -y yum-utils
    $ sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
    $ sudo yum -y install vault
    $ vault version  ( check the verison and to validate the installation of valut )
    $ vault server -help
    $ vault server -config=/opt/vault.hcl                    # Start a server with a configuration file

```

Vault config file:

```
$ cat /opt/vault.hcl
ui = true
storage "file" {
  path = "/vault-data"
}
listener "tcp" {
 address     = "0.0.0.0:8200"
 tls_disable = 1
}
```



### Prometheus Philosophy :
1) They offer metrics that are not really sensitive
2) That would be the reason why you don't find authentication to prometheus



# Prometheus :
  1) Service Discover Mechanism, using this we can tell what to monitor and what not to monitor.