# Orocos Specific ignore rules
#
#
Autoproj.env_set 'EDS_BRANCH', 'master'

configuration_option('EDS_SELECTED_BRANCH', 'string',
    :default => 'master',
    :possible_values => ['ceres', 'master'],
    :doc => [
        "Which flavor of EDS do you want to use ?",
        "Stay with the default ('master') if you want to use EDS with DSO backend",
        "otherwise select ('ceres')"])

Autoproj.env_set 'EDS_BRANCH', Autoproj.config.get('EDS_SELECTED_BRANCH')

pp Autoproj.env['EDS_BRANCH']


