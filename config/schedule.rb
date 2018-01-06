# env :PATH, ENV['PATH']
set :output, 'log/cron.log'

## sitemap automation
every 1.minute do
  rake "-s sitemap: refresh"
end