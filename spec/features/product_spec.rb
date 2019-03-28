require 'rails_helper'

describe "articulo", type: :feature do
  it "Muestra el nuevo producto creado" do
    visit new_article_path
    fill_in 'article_title', with: 'Nuevo Articulo'
    fill_in 'article_text', with: 'Un articulo mas'
    find("input[type='submit']").click
    expect(page).to have_content('Un articulo mas')
  end
end