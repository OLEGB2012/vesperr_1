# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Clear data
# ----------
#Setting.destroy_all
#PortfolioCategory.destroy_all
#Capability.destroy_all

# Init Arrays
# -----------
capabilities = [%w[Aida\ dere],
                %w[Nec\ feugiat\ nisl],
                %w[Nulla\ at\ volutpat\ dola],
                %w[Pharetra\ massa],
                %w[Massa\ ultricies\ mi]]

portfolio_categories = [%w[app],
                        %w[card],
                        %w[web]]

settings = ['Vesperr',
            'Grow your business with Vesperr',
            'We are team of talanted designers making websites with Bootstrap',
            'Get Started',
            'Buy Now',
            'A108 Adam Street New York, NY 535022',
            'info@example.com',
            '+1 5589 55488 55',
            '#',
            '#',
            '#',
            '#',
            '<h1>Hello Privacy policy</h1>',
            '<h1>Hello Terms of use</h1>',
            true ]

sections = [[1,'Clients',true],
            [2,'About Us',true],
            [3,'Services',true],
            [4,'Features',true],
            [5,'Testimonials',true],
            [6,'Portfolio',true],
            [7,'Team',true],
            [8,'Pricing',true],
            [9,'FAQ',true]]

clients = [[],
           [],
           [],
           [],
           [],
           []]

about_us_sections = [['Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ullamco laboris nisi ut aliquip ex ea commodo consequat
Duis aute irure dolor in reprehenderit in voluptate velit
Ullamco laboris nisi ut aliquip ex ea commodo consequat',
                      'Ullamco laboris nisi ut aliquip ex ea commodo consequat.
                       Duis aute irure dolor in reprehenderit in voluptate velit
                       esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
                       occaecat cupidatat non proident, sunt in culpa qui officia
                       deserunt mollit anim id est laborum.',
                      65,
                      85,
                      12,
                      15,
                      'Happy Clients consequuntur voluptas nostrum aliquid ipsam architecto ut.',
                      'Projects adipisci atque cum quia aspernatur totam laudantium et quia dere tan',
                      'Years of experience aut commodi quaerat modi aliquam nam ducimus aut voluptate non vel',
                      'Awards rerum asperiores dolor alias quo reprehenderit eum et nemo pad der',
                      'icofont-simple-smile',
                      'icofont-document-folder',
                      'icofont-clock-time',
                      'icofont-award']]
service_sections = [['Magnam dolores commodi suscipit eius consequatur ex aliquid fug']]
feature_sections = [['Necessitatibus eius consequatur ex aliquid fuga eum quidem']]
testimonial_sections = [['Magnam dolores commodi suscipit eum quidem consectetur velit']]
portfolio_sections = [['Necessitatibus eius consequatur ex aliquid fuga eum quidem']]
team_sections = [['Necessitatibus eius consequatur ex aliquid fuga eum quidem']]
pricing_sections = [['Sit sint consectetur velit nemo qui impedit suscipit alias ea']]
faq_sections = [['Терпение и труд все перетрут...']]
#--------------------
horizon_service_items = [['Lorem Ipsum','Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi','bx bxl-dribbble'],
                         ['Sed ut perspiciatis','Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore','bx bx-file'],
                         ['Magni Dolores','Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia','bx bx-tachometer'],
                         ['Nemo Enim','At vero eos et accusamus et iusto odio dignissimos ducimus qui blandit','bx bx-world']]

grid_service_items = [['Lobira Duno','Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor ut labore et dolore magna aliqua.'],
                      ['Limere Radses','Sed ut perspiciatis unde omnis iste natus error sit voluptatem doloremque laudantium, totam rem.'],
                      ['Nive Lodo','Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit, sed quia magni dolores.'],
                      ['Pale Treda','Nostrum eum sed et autem dolorum perspiciatis. Magni porro quisquam laudantium voluptatem.']]

feature_items = [['Lorem Ipsum','ri-store-line','#ffbb2c'],
                 ['Dolor Sitema','ri-bar-chart-box-line','#5578ff'],
                 ['Sed perspiciatis','ri-calendar-todo-line','#e80368'],
                 ['Magni Dolores','ri-paint-brush-line','#e361ff'],
                 ['Nemo Enim','ri-database-2-line','#47aeff'],
                 ['Eiusmod Tempor','ri-gradienter-line','#ffa76e'],
                 ['Midela Teren','ri-file-list-3-line','#11dbcf'],
                 ['Pira Neve','ri-price-tag-2-line','#4233ff'],
                 ['Dirada Pack','ri-anchor-line','#b2904f'],
                 ['Moton Ideal','ri-disc-line','#b20969'],
                 ['Verdo Park','ri-base-station-line','#ff5828'],
                 ['Flavor Nivelanda','ri-fingerprint-line','#29cc61']]

testimonial_items = [['Jena Karlis','Store Owner','Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.'],
                     ['Matt Brandon','Freelancer','Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.'],
                     ['John Larson','Entrepreneur','Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.'],
                     ['Saul Goodman','Ceo & Founder','Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.'],
                     ['Sara Wilsson','Designer','Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.']]

portfolio_items = [[1,'ABC Company','2021-01-20','#','Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.'],
                   [3,'ABC Company','2021-02-20','#','Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.'],
                   [1,'ABC Company','2021-03-20','#','Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.'],
                   [2,'ABC Company','2021-04-20','#','Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.'],
                   [3,'ABC Company','2021-01-10','#','Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.'],
                   [1,'ABC Company','2021-02-11','#','Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.'],
                   [2,'ABC Company','2021-03-12','#','Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.'],
                   [2,'ABC Company','2021-04-13','#','Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.'],
                   [3,'ABC Company','2021-05-14','#','Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.']]

team_items = [['Walter White','Chief Executive Officer','#','#','#','#'],
              ['Sarah Jhonson','Product Manager','#','#','#','#'],
              ['William Anderson','CTO','#','#','#','#'],
              ['Amanda Jepson','Accountant','#','#','#','#']]

pricing_items = [['Free', 0],
                 ['Business', 19],
                 ['Developer', 29]]

faq_items = [['Non consectetur a erat nam at lectus urna duis?','Feugiat pretium nibh ipsum consequat. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non.'],
             ['Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque?','Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim.'],
             ['Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi?','Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus.'],
             ['Ac odio tempor orci dapibus. Aliquam eleifend mi in nulla?','Aperiam itaque sit optio et deleniti eos nihil quidem cumque. Voluptas dolorum accusantium sunt sit enim. Provident consequuntur quam aut reiciendis qui rerum dolorem sit odio. Repellat assumenda soluta sunt pariatur error doloribus fuga.'],
             ['Tempus quam pellentesque nec nam aliquam sem et tortor consequat?','Molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim suspendisse in est ante in. Nunc vel risus commodo viverra maecenas accumsan. Sit amet nisl suscipit adipiscing bibendum est. Purus gravida quis blandit turpis cursus in']]

puts '==== Seeding |Capability| ===='
capabilities.each do |element|
  record = Capability.find_or_create_by!(name: element[0]) do |rec|
    rec.name = element[0]
  end
  puts '===> Processed: ' << record.name
end

puts '==== Seeding |PortfolioCategory| ===='
portfolio_categories.each do |element|
  record = PortfolioCategory.find_or_create_by!(name: element[0]) do |rec|
    rec.name = element[0]
  end
  puts '===> Processed: ' << record.name
end

puts '==== Seeding |PortfolioCategory| ===='
unless Setting.exists?(1)
  record = Setting.create(id: 1,
                          name: settings[0],
                          slogan_basic: settings[1],
                          slogan_additional: settings[2],
                          get_started: settings[3],
                          call_to_action: settings[4],
                          address: settings[5],
                          email: settings[6],
                          phone: settings[7],
                          twitter_url: settings[8],
                          facebook_url: settings[9],
                          instagram_url: settings[10],
                          linkedin_url: settings[11],
                          privacy_policy: settings[12],
                          terms_of_use: settings[13],
                          active: settings[14])
  puts '==> Processed: ' << record.name
end

puts '==== Seeding |Section| ===='
setting = Setting.find(1) # Ссылка на настройки сайта...
sections.each do |element|
  record = Section.find_or_create_by!(name: element[1]) do |rec|
    rec.setting_id = setting.id
    rec.position = element[0]
    rec.name = element[1]
    rec.active = element[2]
  end
  puts '===> Processed: ' << record.name
end

puts '==== Seeding |Client| ===='
section = Section.find_by(name: 'Clients')
clients.each_with_index do |element, index|
  record = Client.find_or_create_by!(id: index + 1) do |rec|
    rec.section_id = section.id
  end
  puts '===> Processed: ' << record.id
end

puts '==== Seeding |AboutUsSection| ===='
section = Section.find_by(name: 'About Us')
about_us_sections.each do |element|
  record = AboutUsSection.find_or_create_by!(id: 1) do |rec|
    rec.section_id = section.id
    rec.left_side = element[0]
    rec.right_side = element[1]
    rec.happy_clients_counter = element[2]
    rec.projects_counter = element[3]
    rec.years_counter = element[4]
    rec.awards_counter = element[5]
    rec.happy_clients_text = element[6]
    rec.projects_text = element[7]
    rec.years_text = element[8]
    rec.awards_text = element[9]
    rec.happy_clients_class = element[10]
    rec.projects_class = element[11]
    rec.years_class = element[12]
    rec.awards_class = element[13]
  end
  puts '===> Processed: ' << record.id
end

puts '==== Seeding |ServiceSection| ===='
section = Section.find_by(name: 'Services')
service_sections.each do |element|
  record = ServiceSection.find_or_create_by!(id: 1) do |rec|
    rec.section_id = section.id
    rec.description = element[0]
  end
  puts '===> Processed: ' << record.id
end

puts '==== Seeding |FeatureSection| ===='
section = Section.find_by(name: 'Features')
feature_sections.each do |element|
  record = FeatureSection.find_or_create_by!(id: 1) do |rec|
    rec.section_id = section.id
    rec.description = element[0]
  end
  puts '===> Processed: ' << record.id
end

puts '==== Seeding |TestimonialSection| ===='
section = Section.find_by(name: 'Testimonials')
testimonial_sections.each do |element|
  record = TestimonialSection.find_or_create_by!(id: 1) do |rec|
    rec.section_id = section.id
    rec.description = element[0]
  end
  puts '===> Processed: ' << record.id
end

puts '==== Seeding |PortfolioSection| ===='
section = Section.find_by(name: 'Portfolio')
portfolio_sections.each do |element|
  record = PortfolioSection.find_or_create_by!(id: 1) do |rec|
    rec.section_id = section.id
    rec.description = element[0]
  end
  puts '===> Processed: ' << record.id
end

puts '==== Seeding |TeamSection| ===='
section = Section.find_by(name: 'Team')
team_sections.each do |element|
  record = TeamSection.find_or_create_by!(id: 1) do |rec|
    rec.section_id = section.id
    rec.description = element[0]
  end
  puts '===> Processed: ' << record.id
end

puts '==== Seeding |PricingSection| ===='
section = Section.find_by(name: 'Pricing')
pricing_sections.each do |element|
  record = PricingSection.find_or_create_by!(id: 1) do |rec|
    rec.section_id = section.id
    rec.description = element[0]
  end
  puts '===> Processed: ' << record.id
end

puts '==== Seeding |FaqSection| ===='
section = Section.find_by(name: 'FAQ')
faq_sections.each do |element|
  record = FaqSection.find_or_create_by!(id: 1) do |rec|
    rec.section_id = section.id
    rec.description = element[0]
  end
  puts '===> Processed: ' << record.id
end

puts '==== Seeding |HorizonServiceItem| ===='
service_section = ServiceSection.find(1)
horizon_service_items.each_with_index do |element, index|
  record = HorizonServiceItem.find_or_create_by!(id: index + 1) do |rec|
    rec.service_section_id = service_section.id
    rec.position = index + 1
    rec.header = element[0]
    rec.description = element[1]
    rec.icon_class = element[2]
    rec.active = true
  end
  puts '===> Processed: ' << index + 1
end

puts '==== Seeding |GridServiceItem| ===='
service_section = ServiceSection.find(1)
grid_service_items.each_with_index do |element, index|
  record = GridServiceItem.find_or_create_by!(id: index + 1) do |rec|
    rec.service_section_id = service_section.id
    rec.position = index + 1
    rec.header = element[0]
    rec.description = element[1]
    rec.active = true
  end
  puts '===> Processed: ' << index + 1
end

puts '==== Seeding |FeatureItem| ===='
feature_section = FeatureSection.find(1)
feature_items.each_with_index do |element, index|
  record = FeatureItem.find_or_create_by!(id: index + 1) do |rec|
    rec.feature_section_id = feature_section.id
    rec.position = index + 1
    rec.header = element[0]
    rec.icon_class = element[1]
    rec.style_color = element[2]
  end
  puts '===> Processed: ' << index + 1
end

puts '==== Seeding |TestimonialItem| ===='
testimonial_section = TestimonialSection.find(1)
testimonial_items.each_with_index do |element, index|
  record = TestimonialItem.find_or_create_by!(id: index + 1) do |rec|
    rec.testimonial_section_id = testimonial_section.id
    rec.position = index + 1
    rec.author = element[0]
    rec.occupation = element[1]
    rec.content = element[2]
  end
  puts '===> Processed: ' << index + 1
end

puts '==== Seeding |PortfolioItem| ===='
portfolio_section = PortfolioSection.find(1)
portfolio_items.each_with_index do |element, index|
  record = PortfolioItem.find_or_create_by!(id: index + 1) do |rec|
    rec.portfolio_section_id = portfolio_section.id
    rec.position = index + 1
    rec.portfolio_category_id = element[0]
    rec.client_name = element[1]
    rec.project_date = Date.parse(element[2])
    rec.project_url = element[3]
    rec.description = element[4]
  end
  puts '===> Processed: ' << index + 1
end

puts '==== Seeding |TeamItem| ===='
team_section = TeamSection.find(1)
team_items.each_with_index do |element, index|
  record = TeamItem.find_or_create_by!(id: index + 1) do |rec|
    rec.team_section_id = team_section.id
    rec.position = index + 1
    rec.name = element[0]
    rec.occupation = element[1]
    rec.twitter_url = element[2]
    rec.facebook_url = element[3]
    rec.instagram_url = element[4]
    rec.linkedin_url = element[4]
  end
  puts '===> Processed: ' << index + 1
end

puts '==== Seeding |PricingItem| ===='
pricing_section = PricingSection.find(1)
pricing_items.each_with_index do |element, index|
  record = PricingItem.find_or_create_by!(id: index + 1) do |rec|
    rec.pricing_section_id = pricing_section.id
    rec.position = index + 1
    rec.name = element[0]
    rec.price = element[1]
  end
  puts '===> Processed: ' << index + 1
end

puts '==== Seeding |PricingCapability| ===='
pricing_items = PricingItem.all
capabilities = Capability.all
id_record = 0
pricing_items.each_with_index do |pricing, price_index|
  capabilities.each_with_index do |cap, index|
    id_record += 1
    record = PricingCapability.find_or_create_by!(id: id_record) do |rec|
      rec.pricing_item_id = pricing.id
      rec.position = index + 1
      rec.capability_id = cap.id
      rec.status = true
      if [1,2].include?(price_index + 1)
        if ((price_index + 1) == 1 and [4,5].include?(cap.id)) or ((price_index + 1) == 2 and cap.id == 5)
          rec.status = false
        end
      end
    end
  end
end

puts '==== Seeding |FaqItem| ===='
faq_section = FaqSection.find(1)
faq_items.each_with_index do |element, index|
  record = FaqItem.find_or_create_by!(id: index + 1) do |rec|
    rec.faq_section_id = faq_section.id
    rec.position = index + 1
    rec.question = element[0]
    rec.answer = element[1]
  end
  puts '===> Processed: ' << index + 1
end