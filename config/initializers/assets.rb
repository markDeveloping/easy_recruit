# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( apple-touch-icon-152x152.png )
Rails.application.config.assets.precompile += %w( apple-touch-icon-120x120.png )
Rails.application.config.assets.precompile += %w( apple-touch-icon-76x76.png )
Rails.application.config.assets.precompile += %w( apple-touch-icon-60x60.png )
Rails.application.config.assets.precompile += %w( opengraph-image.png )
Rails.application.config.assets.precompile += %w( gov.uk_logotype_crown_invert_trans.png )

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
