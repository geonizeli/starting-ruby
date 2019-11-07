namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      
      #show_spinner("Apagando DB...") do
      #  %x(rails db:drop)
      #end
      show_spinner("Criando DB...") do
        %x(rails db:create)
      end
      show_spinner("Gerando tabelas...") do
        %x(rails db:migrate)
      end
      show_spinner("Semeando tabelas...") do
        %x(rails db:seed)
      end
    else
      puts "Você não está em ambiente de desenvolvimento"
    end
  end

  def show_spinner(msg_start, msg_end = "Concluído")
    spinner = TTY::Spinner.new("[:spinner]
    #{msg_start}")
    yield
    spinner.auto_spin
    spinner.success(msg_end)
    end
end
