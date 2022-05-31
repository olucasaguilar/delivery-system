require 'rails_helper'

describe 'User visit homepage' do
  it 'and see the apps name' do
    # Arrange

    # Act
    visit root_path
    # Assert
    expect(page).to have_content 'Sistema de Entregas'
  end
end