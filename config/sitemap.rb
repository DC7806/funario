# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.#{System.first.site_name}.co"

SitemapGenerator::Sitemap.compress = false

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
  # add root_path, :priority => 0.7, :changefreq => 'daily'

  add authors_path, priority: 0.5, changefreq: 'weekly', lastmod: 1.week.ago

  add articles_path, priority: 0.7, changefreq: 'daily', lastmod: 1.day.ago

  Article.find_each do |article|
    add article_path(article.permalink), :lastmod => article.updated_at, priority: 0.8, changefreq: 'weekly',
  end
end
