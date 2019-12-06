class RubyConfig
  def self.all
    %w(rubylibdir bindir archdir sitedir vendordir sitelibdir sitearchdir)
        .each { |c| p RbConfig::CONFIG[c]}
  end
end
RubyConfig.all