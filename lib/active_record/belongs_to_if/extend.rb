ActiveSupport.on_load(:active_record) do
  ActiveRecord::Associations::Builder::BelongsTo.send(:prepend, ActiveRecord::BelongsToIf::BuilderExtension)
  ActiveRecord::Associations::Preloader::Association.send(:prepend, ActiveRecord::BelongsToIf::PreloaderExtension)
end
