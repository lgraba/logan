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

# SitemapGenerator::Sitemap.create do
#   add '/projects', 'changefreq': 'weekly'
#   Project.find_each do |project|
#     add project_path(project), lastmod: project.updated_at
#   end
#   add '/resume', 'changefreq': 'weekly'
#   add '/contacts/new', 'changefreq': 'weekly'
#   add '/about', 'changefreq': 'weekly'
# end

# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://logangraba.com"
# pick a place safe to write the files
SitemapGenerator::Sitemap.public_path = 'tmp/'
# store on S3 using Fog (pass in configuration values as shown above if needed)
SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new
# inform the map cross-linking where to find the other maps
SitemapGenerator::Sitemap.sitemaps_host = "http://#{ENV['FOG_DIRECTORY']}.s3.amazonaws.com/"
# pick a namespace within your bucket to organize your maps
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new(
  fog_provider: 'AWS',
  aws_access_key_id: ENV[AWS_ACCESS_KEY_ID],
  aws_secret_access_key: [AWS_SECRET_ACCESS_KEY],
  fog_directory: [S3_BUCKET_NAME],
  fog_region: us-west-1
)


SitemapGenerator::Sitemap.ping_search_engines