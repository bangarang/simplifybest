class AddSpecsToProducts < ActiveRecord::Migration
  def change
  	# General Specs
  	add_column :products, :configuration, :string
  	add_column :products, :speed, :string
  	add_column :products, :warmup, :string
  	add_column :products, :firstout, :string
  	add_column :products, :resolution, :string
  	add_column :products, :memory, :string
  	add_column :products, :hdd, :string
  	add_column :products, :duplex, :string
  	add_column :products, :stdoutput, :string
  	add_column :products, :electrical, :string
  	add_column :products, :dimensions, :string
  	add_column :products, :weight, :string
  	add_column :products, :maxdutycycle, :string

  # Paper Supply
  	add_column :products, :stdsources, :string
  	add_column :products, :optsources, :string
  	add_column :products, :papercap, :string
  	add_column :products, :papersize, :string
  	add_column :products, :paperweight, :string
  	add_column :products, :inputmaterials, :string

  # Print Specifications
  	add_column :products, :stdcontroller, :string
  	add_column :products, :emulations, :string
  	add_column :products, :fonts, :string
  	add_column :products, :windows, :string
  	add_column :products, :novell, :string
  	add_column :products, :macos, :string
  	add_column :products, :unixos, :string
  	add_column :products, :interfaces, :string
  	add_column :products, :protocols, :string
  	add_column :products, :drivers, :string
  	add_column :products, :utilities, :string

  # Scan Specifications
  	add_column :products, :scanresolutions, :string
  	add_column :products, :fileformats, :string
  	add_column :products, :pdfextension, :string
  	add_column :products, :scanspeed, :string
  	add_column :products, :connectivity, :string
  	add_column :products, :scanfunction, :string
  	add_column :products, :originalsize, :string
  	add_column :products, :scandriver, :string
  end
end
