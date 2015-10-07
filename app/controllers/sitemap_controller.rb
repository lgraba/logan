class SitemapController < ApplicationController
	def show
		# Redirect to CloudFront + S3 for the sitemap
	    redirect_to "http://logangraba.s3.amazonaws.com/sitemaps/sitemap.xml.gz"
	end
end
