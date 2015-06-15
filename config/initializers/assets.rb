# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )


# Rails.application.config.assets.precompile += ['bootstrap.min.css','bootstrap-responsive.min.css ','font-awesome.css ','style-metro.css',
#   'style.css','style-responsive.css','default.css','uniform.default.css','login.css','jquery-1.10.1.min.js','jquery-migrate-1.2.1.min.js',
#   'jquery-ui-1.10.1.custom.min.js','jquery.slimscroll.min.js','jquery.cookie.min.js','bootstrap.min.js','jquery.uniform.min.js',
#   'jquery.validate.min.js','app.js','login.js'] 


Rails.application.config.assets.precompile << Proc.new do |path|
  if path =~ /\.(css|js)\z/
  	puts Rails.application.assets.resolve(path)
    full_path = Rails.application.assets.resolve(path).to_s
    app_assets_path = Rails.root.join('app', 'assets').to_s
    if full_path.starts_with? app_assets_path
      puts "including asset: " + full_path
      true
    else
      puts "excluding asset: " + full_path
      false
    end
  else
    false
  end
end