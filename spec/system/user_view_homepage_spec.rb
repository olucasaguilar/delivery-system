require 'rails_helper'

describe 'Usuário visita tela inicial' do
  it 'e vê o menu' do
    # Arrange

    # Act
    visit root_path
    # Assert
    within('nav') do
      expect(page).to have_content 'Tela Inicial'
    end
    expect(page).to have_content 'Sistema de Entregas'
  end
end