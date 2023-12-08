namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD..."){ %x(rails db:drop:_unsafe)}
      
      show_spinner("Criando BD..."){%x(rails db:create)}
      
      show_spinner("Migrando BD...") {%x(rails db:migrate)}
      %x(rails dev:add_coins)
      %x(rails dev:add_mining_types)
      
    else
      puts "Você não está em ambiente de desenvolvimento!"  
    end
  end
  
  desc "Cadastro de moedas"
  task add_coins: :environment do
      show_spinner("Cadastrando moedas...") do
      coins = [
          { description: "Bitcoin",
            acronym: "BTC",
            url_image: "https://pngimg.com/uploads/bitcoin/small/bitcoin_PNG47.png"
          },
          {
            description: "Ethereum",
            acronym: "ETH",
            url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/1027.png"
          },
          {
            description: "Dash",
            acronym: "DASH",
            url_image: "https://media.dash.org/wp-content/uploads/dash-d.png"
          },
          {
            description: "Iota",
            acronym: "IOT",
            url_image: "https://cryptologos.cc/logos/iota-miota-logo.png"
          },
          {
            description: "ZCash",
            acronym: "ZEC",
            url_image: "https://cryptologos.cc/logos/zcash-zec-logo.png"
          },
        ]
      
      coins.each do |coin|
        Coin.find_or_create_by!(coin)
      end
    end
  end
  
  desc "Cadastra os tipos de mineração"
  task add_mining_types: :environment do
    show_spinner("Cadastrando tipos de mineração...") do
    mining_types = [
      {description: "Proof of Work", acronym: "PoW"},
      {description: "Proof of Stake", acronym: "PoS"},
      {description: "Proof of Capacity", acronym: "PoC"}
    ]
      
    mining_types.each do |mining_type|
      MiningType.find_or_create_by!(mining_type)
      end
    end
  end
  
  
  private
  
  def show_spinner(msg_start, msg_end = "Concluido!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end