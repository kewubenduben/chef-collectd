bash "install-credis" do
  cwd Chef::Config[:file_cache_path]
  code <<-EOH
    wget http://credis.googlecode.com/files/credis-0.2.3.tar.gz
    tar -xvf credis-0.2.3.tar.gz
    cd credis-0.2.3
    sudo cp credis-0.2.3/* /usr/include/
    cd credis-0.2.3
    make
    sudo cp -f libcredis.so /usr/lib/
    sudo cp -f ./* /usr/include/
  EOH
end
