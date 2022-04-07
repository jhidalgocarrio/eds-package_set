configuration_option('ROCK_SELECTED_FLAVOR', 'string',
    :default => 'master',
    :possible_values => ['stable', 'master'],
    :doc => [
        "Which flavor of Rock do you want to use ?",
        "Stay with the default ('master') if you want to use Rock on the most recent",
        "distributions (Ubuntu 16.04 and later). Use 'stable' only for ",
        "now officially unsupported distributions (Ubuntu 14.04)"])

if Rock.in_release? && !Autoproj.config.has_value_for?('ROCK_SELECTED_FLAVOR')
    Autoproj.config.set 'ROCK_SELECTED_FLAVOR', 'stable', true
end

Rock.flavors.select_current_flavor_by_name(
    ENV['ROCK_FORCE_FLAVOR'] || Autoproj.config.get('ROCK_SELECTED_FLAVOR'))

current_flavor = Rock.flavors.current_flavor

