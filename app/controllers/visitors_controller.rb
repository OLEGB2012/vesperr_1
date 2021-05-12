class VisitorsController < ApplicationController
  def index
    @setting = Setting.active.first
    #----
    @sections = @setting.sections.active
    #----
    @clients = @sections.find_by(name: 'Клиенты').clients
    #----
    @about_us_header =  @sections.find_by(name: 'О нас').name
    @about_us_section = @sections.find_by(name: 'О нас').about_us_section
    #----
    @services_header = @sections.find_by(name: 'Услуги').name
    @services_section = @sections.find_by(name: 'Услуги').service_section
    @horizon_service_items =  @services_section.horizon_service_items.active
    @grid_service_items = @services_section.grid_service_items.active
    #----
    @features_header = @sections.find_by(name: 'Возможности').name
    @features_section = @sections.find_by(name: 'Возможности').feature_section
    @feature_items = @features_section.feature_items.ordered
    #----
    @testimonials_header = @sections.find_by(name: 'Отзывы').name
    @testimonials_section = @sections.find_by(name: 'Отзывы').testimonial_section
    @testimonials_items = @testimonials_section.testimonial_items.ordered
    #----
    @portfolio_header = @sections.find_by(name: 'Портфолио').name
    @portfolio_section = @sections.find_by(name: 'Портфолио').portfolio_section
    @portfolio_items = @portfolio_section.portfolio_items.ordered
    @portfolio_categories = PortfolioCategory.all
    #----
    @team_header = @sections.find_by(name: 'Команда').name
    @team_section = @sections.find_by(name: 'Команда').team_section
    @team_items = @team_section.team_items.ordered
    #----
    @pricing_header = @sections.find_by(name: 'Тарифы').name
    @pricing_section = @sections.find_by(name: 'Тарифы').pricing_section
    @pricing_items = @pricing_section.pricing_items.ordered
    #----
    @faq_header = @sections.find_by(name: 'FAQ').name
    @faq_section = @sections.find_by(name: 'FAQ').faq_section
    @faq_items = @faq_section.faq_items.ordered
    #----
    @contact = Contact.new
  end

  def submit_contact_form

  end
end