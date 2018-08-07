require 'rails_helper'

feature 'visit homepage' do
	scenario 'successfully' do
		visit root_path

		expect(page).to have_css('h1', text: 'CookBook')
		expect(page).to have_css('h3', text: 'Bem vindo ao maior livro de receitas online!')
	end
	scenario 'and view a list recipe' do
		lunch = Recipe.create(title: 'Feijuada', ingredients:'arroz, feijao, carnes',
													 recipe_type: 'Prato Principal', cuisine: 'brasileira',
													 method: 'cozinhar o arroz, colocar feijão e carnes na panela de pressão',
													 cook_time: 60
		)

		dessert = Recipe.create(title: 'Bolo de cenoura', ingredients:'leite, farinha, ovos, cenoura, açúcar',
													 recipe_type: 'Sobre mesa', cuisine: 'brasileira',
													 method: 'Colocar os ingredientes no liquidificador bater, depois colocar numa travessa e levar ao forno',
													 cook_time: 30
	 	)

		visit root_path

		expect(page).to have_css('h4', text: lunch.title)
		expect(page).to have_css('p', text: lunch.recipe_types)
		expect(page).to have_css('p', text: lunch.cuisines)
  end
end
