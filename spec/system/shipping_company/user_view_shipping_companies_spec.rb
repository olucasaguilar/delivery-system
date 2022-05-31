require 'rails_helper'

describe 'Usuário visualiza transportadoras' do
  it 'a partir do menu' do
    # Arrange
    
    # Act
    visit root_path
    within('nav') do
      click_on 'Transportadoras'
    end
    # Assert
    expect(current_path).to eq shipping_companies_path
    within('h1') do
      expect(page).to have_content('Transportadoras')
    end
  end
  
  it 'com sucesso' do
    # Arrange
    ShippingCompany.create!(legal_name: 'Express Delivery LTDA',  trade_name: 'Express Delivery', 
                            domain_name: 'expressdelivery.com.br', cnpj: '12345678901234', 
                            billing_address: 'Rua Antônio Bento, 1000, São Paulo - SP', active: true)
    ShippingCompany.create!(legal_name: 'Rapid Delivery',  trade_name: 'Rapid Delivery', 
                            domain_name: 'rapiddelivery.com.br', cnpj: '32141234561234', 
                            billing_address: 'Rua Pitanga, 190, São Paulo - SP', active: true)

    # Act
    visit root_path
    within('nav') do
      click_on 'Transportadoras'
    end
    # Assert
    expect(page).to have_content('Nome Fantasia: Express Delivery')
    expect(page).to have_content('Nome Fantasia: Rapid')
  end

  it 'e não há transportadoras cadastradas' do
    # Arrange

    # Act
    visit root_path
    within('nav') do
      click_on 'Transportadoras'
    end
    # Assert
    expect(page).to have_content 'Nenhuma transportadora cadastrada.'
  end
end