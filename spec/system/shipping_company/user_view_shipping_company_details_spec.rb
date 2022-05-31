require 'rails_helper'

describe 'Usuário visualiza detalhes da transportadora' do
  it 'com sucesso' do
    # Arrange
    ShippingCompany.create!(legal_name: 'Express Delivery LTDA',  trade_name: 'Express Delivery', 
                            domain_name: 'expressdelivery.com.br', cnpj: '12345678901234', 
                            billing_address: 'Rua Antônio Bento, 1000, São Paulo - SP', active: true)
    # Act
    visit root_path
    within('nav') do
      click_on 'Transportadoras'
    end
    click_on 'Express Delivery'
    # Assert
    expect(page).to have_content 'Express Delivery LTDA'
    expect(page).to have_content 'Express Delivery'
    expect(page).to have_content 'expressdelivery.com.br'
    expect(page).to have_content '12345678901234'
    expect(page).to have_content 'Rua Antônio Bento, 1000, São Paulo - SP'
  end

  
  it 'e volta à tela inicial' do
    # Arrange
    ShippingCompany.create!(legal_name: 'Express Delivery LTDA',  trade_name: 'Express Delivery', 
                            domain_name: 'expressdelivery.com.br', cnpj: '12345678901234', 
                            billing_address: 'Rua Antônio Bento, 1000, São Paulo - SP', active: true)
    # Act
    visit root_path
    within('nav') do
      click_on 'Transportadoras'
    end
    click_on 'Express Delivery'
    click_on 'Tela Inicial'
    # Assert
    expect(current_path).to eq root_path
  end
end