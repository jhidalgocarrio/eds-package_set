configuration_option('EDS_SELECTED_FLAVOR', 'string',
    :default => 'master',
    :possible_values => ['ceres', 'master'],
    :doc => [
        "Which flavor of EDS do you want to use ?",
        "Stay with the default ('master') if you want to use EDS with DSO backend (recommended)",
        "otherwise select ('ceres')"])

if !Autoproj.config.has_value_for?('EDS_SELECTED_FLAVOR')
    Autoproj.config.set 'EDS_SELECTED_FLAVOR', 'stable', true
end

#Rock.flavors.select_current_flavor_by_name(
#    ENV['ROCK_FORCE_FLAVOR'] || Autoproj.config.get('ROCK_SELECTED_FLAVOR'))

#current_flavor = Rock.flavors.current_flavor

