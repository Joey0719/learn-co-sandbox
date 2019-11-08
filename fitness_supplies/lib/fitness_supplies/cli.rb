class FitnessSupplies::CLI

  def call
    welcome
    show_list
    get_user_data
  end

  def welcome 
    puts "Hello, how are you today. Welcome to Fitness Supplies."
  end

  def show_list 
    puts "\nHere's a list of Fitness Equipment categories."

    catg = ['Cardio','Vibration Training', 'Strength', 'Group Training', 'Flooring', 'Accessories']

    catg.each.with_index(1) do |cg, index|
      puts "\n#{index}. #{cg}"
    end
    puts "\nLoading products..."
  end

  def get_user_data

    get = FitnessSupplies::Scraper.new
    cardio = get.scraped_cardio
    v_training = get.scraped_vibration_training
    strength = get.scraped_strength
    group_training = get.scraped_group_training
    flooring = get.scraped_flooring
    acc = get.scraped_accessories

    puts "\nChoose the number of the category >"

    while true
      user_choice = gets.chomp.to_i
      case user_choice
      when 1
        puts "\n=============== Cardio Equipment ==============="
        puts
        cardio.each.with_index(1) {|c_eq, index| puts "#{index}. #{c_eq}"}
        puts "\n=============== End Cardio Equipment ==============="
      when 2 
        puts "\n=============== Vibration Training Equipment ==============="
        puts
        v_training.each.with_index(1) {|c_eq, index| puts "#{index}. #{c_eq}"}
        puts "\n=============== End Vibration Training Equipment ==============="
      when 3
        puts "\n=============== Strength Equipment ==============="
        puts
        strength.each.with_index(1) {|c_eq, index| puts "#{index}. #{c_eq}"}
        puts "\n=============== End Strength Equipment ==============="
      when 4
        puts "\n=============== Group Training Equipment ==============="
        puts
        group_training.each.with_index(1) {|c_eq, index| puts "#{index}. #{c_eq}"}
        puts "\n=============== End Group Training Equipment ==============="
      when 5
        puts "\n=============== Flooring Equipment ==============="
        puts
        flooring.each.with_index(1) {|c_eq, index| puts "#{index}. #{c_eq}"}
        puts "\n=============== End Flooring Equipment ==============="
      when 6
        puts "\n=============== Accessories ==============="
        puts
        acc.each.with_index(1) {|c_eq, index| puts "#{index}. #{c_eq}"}
        puts "\n=============== End Accessories ==============="
      else
        puts "\nThere is no such category"
      end
      another_cat?
    end
  end

  def another_cat?
    puts "\nWould you like to search another category?(y/n)"
    user_choice = gets.chomp.to_s.downcase
    if user_choice == 'y'
      get_user_data
    else
      goodbye
    end
  end
  
  def goodbye
    puts "\nOk, come back again soon. Remember, your health is your wealth"
    exit!
  end


end