# Orocos Specific ignore rules
#
#

module Rock

    def self.setup_eds_configuration_options(ws: Autoproj.workspace)
        ws.config.declare 'EDS_SELECTED_FLAVOR', 'string',
            default: 'master',
            possible_values: ['ceres', 'master'],
            doc: [ "Do you want to activate python?" ]
    end
end

Rock.setup_eds_configuration_options

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


