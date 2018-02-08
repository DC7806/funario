env :PATH, ENV['PATH']
set :output, 'log/cron.log'
## sitemap automation
every 1.day, at: '12:00 pm' do
  rake "-s sitemap:refresh"
end