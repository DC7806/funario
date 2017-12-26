System.create(site_name: "funario")
Pin.create
%w(home articles authors).each do |page|
  Metum.create(page_name: page)
end