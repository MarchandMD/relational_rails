# As a visitor
# When I visit the Parent Index page
# Then I see a link to create a new Parent record, "New Parent"
# When I click this link
# Then I am taken to '/parents/new' where I  see a form for a new parent record
# When I fill out the form with a new parent's attributes:
# And I click the button "Create Parent" to submit the form
# Then a `POST` request is sent to the '/parents' route,
# a new parent record is created,
# and I am redirected to the Parent Index page where I see the new Parent displayed.

require 'rails_helper'

RSpec.describe 'Mountains' do
  describe '#new' do
    describe 'navigation from index page' do
      it 'has a link to create a new Mountain' do
        visit "/mountains"

        expect(page).to have_link("New Mountain")
      end

      it 'takes the user to the #new view' do
        visit "/mountains"

        click_link("New Mountain")
        expect(current_path).to eq("/mountains/new")
      end
    end

    it 'can create a new Artist' do
      visit "/mountains/new"

      fill_in "Name",	with: "Copper"
      click_button("Create Mountain")

      expect(current_path).to eq("/mountains")
      expect(page).to have_content("Copper")
      save_and_open_page
    end
  end
end
