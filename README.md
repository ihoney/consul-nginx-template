# Consul-Nginx-Template

* firstly, [install ansible](http://docs.ansible.com/ansible/intro_installation.html)
* modify the host config `etc/consul.host`, add real host into the config file
* modify `roles/consul-template/files/template.ctpl`
* execute the `start`


### Reference
* [consul](https://www.consul.io/docs/index.html)
* [consul-template](https://www.hashicorp.com/blog/introducing-consul-template.html)
* [Nginx stream & TCP Load Balancing](https://www.nginx.com/resources/admin-guide/tcp-load-balancing)
