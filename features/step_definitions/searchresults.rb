Then (/^I select the sort option '(.*)'$/) do | option |
    within ('div#sort-dropdown') do
      dropdown = find(:css, 'button.dropdown-toggle')
      dropdown.click
      what_is(dropdown)
      click(option)
    end
  end
