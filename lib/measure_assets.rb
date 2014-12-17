require "measure_assets/version"

module MeasureAssets
  ROOT = File.dirname(__FILE__) # basically the lib directory
  IMAGES_DIR = Pathname.new(File.expand_path('assets/images', ROOT))

  Images = Dir[Pathname.new(ROOT).join('assets', 'images', '**', '*')].
    select { |f| File.file?(f) }.
    map { |f| Pathname.new(f).relative_path_from(IMAGES_DIR).to_s }

  class Engine < ::Rails::Engine
  end
end
