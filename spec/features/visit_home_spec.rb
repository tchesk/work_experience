require 'rails_helper'

feature 'visit homepage' do
	scenario 'successfully' do
		visit root_path

		expect(page).to have_css('h1', text: 'CookBook')
		expect(page).to have_css('h3', text: 'Bem vindo ao maior livro de receitas online!')
	end
end