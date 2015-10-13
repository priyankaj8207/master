execute "apt-get update"
package "nginx"
execute "rm -fr /var/www"
link "/var/www" do
      to "/vagrant"
end