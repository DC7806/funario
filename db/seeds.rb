System.create(site_name: "funario")

%w(home articles authors).each do |page|
  Metum.create(page_name: page)
end

["all", "jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec"].each{|e| Pin.create(month: e)}