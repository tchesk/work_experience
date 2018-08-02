require 'rails_helper'

feature 'visit homepage' do
	scenario 'successfully' do
		visit root_path

		expect(page).to have_css('h1', text: 'CookBook')
		expect(page).to have_css('h3', text: 'Bem vindo ao maior livro de receitas online!')
	end
	scenario 'and view list recipe' do
		recipe = Recipe.create(title: 'Feijuada', ingredients:'arroz, feijao, carnes', 
													 recipe_types: 'Prato Principal', cuisines: 'brasileira',
													 method: 'cozinhar o arroz, colocar feijão e carnes na panela de pressão', cook_time: 60 'minutos')

  end
end