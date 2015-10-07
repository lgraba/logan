# # Set the host name for URL creation
# SitemapGenerator::Sitemap.default_host = "http://logangraba.com"

# SitemapGenerator::Sitemap.create do
#   # Put links creation logic here.
#   #
#   # The root path '/' and sitemap index file are added automatically for you.
#   # Links are added to the Sitemap in the order they are specified.
#   #
#   # Usage: add(path, options={})
#   #        (default options are used if you don't specify)
#   #
#   # Defaults: :priority => 0.5, :changefreq => 'weekly',
#   #           :lastmod => Time.now, :host => default_host
#   #
#   # Examples:
#   #
#   # Add '/articles'
#   #
#   #   add articles_path, :priority => 0.7, :changefreq => 'daily'
#   #
#   # Add all articles:
#   #
#   #   Article.find_each do |article|
#   #     add article_path(article), :lastmod => article.updated_at
#   #   end
# end

# config/sitemap.rb

# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.logangraba.com"
# Inform the map cross-linking where to find the other maps
SitemapGenerator::Sitemap.sitemaps_host = "http://#{ENV['FOG_DIRECTORY']}.s3.amazonaws.com/"
# pick a place safe to write the files
SitemapGenerator::Sitemap.public_path = 'tmp/'
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'
SitemapGenerator::Sitemap.adapter = SitemapGenerator::WaveAdapter.new

SitemapGenerator::Sitemap.create do
  add '/projects', 'changefreq': 'weekly'
  Project.find_each do |project|
    add project_path(project), lastmod: project.updated_at
  end
  add '/resume', 'changefreq': 'weekly'
  add '/contacts/new', 'changefreq': 'weekly'
  add '/about', 'changefreq': 'weekly'
end

# Ping Google and Bing
# SitemapGenerator::Sitemap.ping_search_engines


# SitemapGenerator::Sitemap.sitemaps_host = "http://s3.amazonaws.com/sitemap-generator/"