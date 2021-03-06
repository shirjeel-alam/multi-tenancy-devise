require "spec_helper"

feature 'Root page' do

	context 'signed in users' do
		scenario 'Should redirect to the accounts page' do
			sign_in
			visit mtdevise.root_path
			expect(page.current_url).to match(/#{mtdevise.accounts_path}/)
		end
	end

	context 'guest users' do
		scenario 'Should have sign up link' do
			visit mtdevise.root_path
			click_link 'Sign Up Today'
		end
		scenario 'Should have login link' do
			visit mtdevise.root_path
			click_link 'Sign In To Manage Your Accounts'
		end
		scenario 'visit non-existing subdomain' do
			visit mtdevise.root_url(subdomain: 'nonexisting')
			expect(page.current_url).to match(/#{mtdevise.root_path}/)
			expect(page).to have_content("Subdomain Doesn't Exist. Would you like to Register.")
		end
	end

end