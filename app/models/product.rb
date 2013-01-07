class Product < ActiveRecord::Base
  attr_accessible :name, :excerpt, :description, :image, :remote_image_url, :category_id, :new_category_name, :accessories_attributes, :supply_items_attributes, :product_pictures_attributes, :downloads_attributes
  mount_uploader :image, ImageUploader

  # Main Specs
  attr_accessible :configuration, :speed, :warmup, :firstout, :resolution, :memory, :hdd, :duplex, :stdoutput, :electrical, :dimensions, :weight, :maxdutycycle

  # Paper Supply
  attr_accessible :stdsources, :optsources, :papercap, :papersize, :paperweight, :inputmaterials

  # Print Specifications
  attr_accessible :stdcontroller, :emulations, :fonts, :windows,  :novell, :macos, :unixos, :interfaces, :protocols, :drivers, :utilities

  # Scan Specifications
  attr_accessible :scanresolutions, :fileformats, :pdfextension, :scanspeed, :connectivity, :scanfunction, :originalsize, :scandriver

  validates :slug, uniqueness: true, presence: true

  before_validation :generate_slug

  has_many :product_pictures

  accepts_nested_attributes_for :product_pictures, allow_destroy: true
  has_many :accessories

  accepts_nested_attributes_for :accessories, allow_destroy: true

  has_many :supply_items

  accepts_nested_attributes_for :supply_items, allow_destroy: true

  has_many :downloads

  accepts_nested_attributes_for :downloads, allow_destroy: true

  # Categories
  belongs_to :category
  attr_accessor :new_category_name
  before_save :create_category_from_name

  def create_category_from_name 
     unless new_category_name.blank? 
        if category = Category.find(:first, :conditions => {:name => new_category_name}) then 
           self.category_id = category 
        else 
           create_category(:name => new_category_name, :slug => new_category_name.parameterize) 
        end 
     end 
  end

  def to_param
  	slug # or "#{id}-#{name}".parameterize
  end

  def generate_slug
  	self.slug ||= name.parameterize
  end
end
