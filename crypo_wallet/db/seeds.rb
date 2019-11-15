=begin
spinner = TTY::Spinner.new("[:spinner] Cadastrando moedas...")
spinner.auto_spin

coins = [
    {
        description: "Bitcoin",
        acronym: "BTC",
        url_image: "https://imagepng.org/wp-content/uploads/2017/06/moeda-bitcoin-coin.png"
    },
    {
        description: "Ethereum",
        acronym: "ETH",
        url_image: "https://cryptorunner.com/wp-content/uploads/2017/10/ethereum-symbol.png"
    },
    {
        description: "Dash",
        acronym: "DASH",
        url_image: "http://cryptowiki.net/images/5/55/Dash.png"
    }]

coins.each do |coin|
    show_spinner(Coin.find_or_create_by!(coin))
end

spinner.stop("Concluído!")
=end