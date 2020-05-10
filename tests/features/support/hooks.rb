After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')

    if scenario.failed?
        take_photo(scenario_name.downcase!, 'failed')
    else
        take_photo(scenario_name.downcase!, 'passed')
    end     
end