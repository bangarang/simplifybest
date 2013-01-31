# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.simplifybest.com"
SitemapGenerator::Sitemap.sitemaps_host = "http://s3.amazonaws.com/assets.simplifybest.com"
SitemapGenerator::Sitemap.public_path = 'tmp/'
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'
SitemapGenerator::Sitemap.adapter = SitemapGenerator::WaveAdapter.new
SitemapGenerator::Sitemap.create do
  add new_service_call_path
  add new_supply_order_path
  add new_meter_path
  add products_path
  add '/getaquote'
  Product.find_each do |product|
    add product_path(product), :lastmod => product.updated_at
  end
  Category.find_each do |category|
    add category_path(category), :lastmod => category.updated_at
  end
    
end
