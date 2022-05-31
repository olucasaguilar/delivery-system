ShippingCompany.create!(legal_name: 'Express Delivery',  trade_name: 'Express Delivery', 
                        domain_name: 'expressdelivery.com.br', cnpj: '98765432165498', 
                        billing_address: 'Rua Antônio Bento, 1000, São Paulo - SP', active: true)

ShippingCompany.create!(legal_name: 'Rapid Delivery',  trade_name: 'Rapid Delivery', 
                        domain_name: 'rapiddelivery.com.br', cnpj: '12345678901234', 
                        billing_address: 'Rua Pitanga, 150, Apucarana - PR', active: true)

ShippingCompany.create!(legal_name: 'Fast Delivery Unlimited' ,  trade_name: 'Fast Delivery', 
                      domain_name: 'fastdelivery.com.br' , cnpj: '45678901234567', 
                      billing_address: 'Rua São Paulo, 12, Belo Horizonte - MG', active: true)

ShippingCompany.create!(legal_name: 'Slow Delivery LTDA' ,  trade_name: 'Slow Delivery', 
                        domain_name: 'slowdelivery.com.br' , cnpj: '23456789012345', 
                        billing_address: 'Rua Rio de Janeiro, 1, Rio de Janeiro - RJ' , active: true)