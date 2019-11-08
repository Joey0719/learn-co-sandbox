class FitnessSupplies::Scraper
   
   def get_cat_page(category_choice, pg)
      Nokogiri::HTML(open("https://www.gymsource.com/equipment/#{category_choice}?page=#{pg}"))
   end

   def scraped_cardio 
      cardio_prod = []
      car_pg_num = 1
      while car_pg_num <= 7
         get_cat_page("cardio", car_pg_num).css("div.row .flex .card-product h3").each do |prod|
            cardio_prod << "\nProduct Name: #{prod.text}\nLink To Product: https://www.gymsource.com#{prod.css('a').attribute('href').value}"
         end
         car_pg_num+=1
      end
      cardio_prod
   end

   def scraped_vibration_training
      vibration_training_prod = []
      vib_pg_num = 1
      get_cat_page("vibration-training", vib_pg_num).css("div.row .flex .card-product h3").each do |prod|
         vibration_training_prod << "\nProduct Name: #{prod.text}\nLink To Product: https://www.gymsource.com#{prod.css('a').attribute('href').value}"
      end
      vibration_training_prod
   end

   def scraped_strength
      strength_prod = []
      str_pg_num = 1
      while str_pg_num <= 17
         get_cat_page("strength", str_pg_num).css("div.row .flex .card-product h3").each do |prod|
            strength_prod << "\nProduct Name: #{prod.text}\nLink To Product: https://www.gymsource.com#{prod.css('a').attribute('href').value}"
         end
         str_pg_num+=1
      end
      strength_prod
   end

   def scraped_group_training
      group_training_prod = []
      gr_pg_num = 1
      while gr_pg_num <= 2
         get_cat_page("group-training", gr_pg_num).css("div.row .flex .card-product h3").each do |prod|
            group_training_prod << "\nProduct Name: #{prod.text}\nLink To Product: https://www.gymsource.com#{prod.css('a').attribute('href').value}"
         end
         gr_pg_num+=1
      end
      group_training_prod
   end

   def scraped_flooring 
      flooring_prod = []
      flr_pg_num = 1
      get_cat_page("flooring", flr_pg_num).css("div.row .flex .card-product h3").each do |prod|
         flooring_prod << "\nProduct Name: #{prod.text}\nLink To Product: https://www.gymsource.com#{prod.css('a').attribute('href').value}"
      end
      flooring_prod
   end

   def scraped_accessories
      accessories_prod = []
      acc_pg_num = 1
      while acc_pg_num <= 9
         get_cat_page("accessories", acc_pg_num).css("div.row .flex .card-product h3").each do |prod|
            accessories_prod << "\nProduct Name: #{prod.text}\nLink To Product: https://www.gymsource.com#{prod.css('a').attribute('href').value}"
         end
         acc_pg_num+=1
      end
      accessories_prod
   end

 end