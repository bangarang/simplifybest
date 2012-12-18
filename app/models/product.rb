class Product < ActiveRecord::Base
  attr_accessible :name, :excerpt, :description, :image, :remote_image_url
  mount_uploader :image, ImageUploader

  # General Specs
  attr_accessible :configuration, :speed, :warmup, :firstout, :resolution, :memory, :hdd, :duplex, :stdoutput, :electrical, :dimensions, :weight, :maxdutycycle

  # Paper Supply
  attr_accessible :stdsources, :optsources, :papercap, :papersize, :paperweight, :inputmaterials

  # Print Specifications
  attr_accessible :stdcontroller, :emulations, :fonts, :windows,  :novell, :macos, :unixos, :interfaces, :protocols, :drivers, :utilities

  # Scan Specifications
  attr_accessible :scanresolutions, :fileformats, :pdfextension, :scanspeed, :connectivity, :scanfunction, :originalsize, :scandriver

  validates :slug, uniqueness: true, presence: true

  before_validation :generate_slug

  def to_param
  	slug # or "#{id}-#{name}".parameterize
  end

  def generate_slug
  	self.slug ||= name.parameterize
  end
end
