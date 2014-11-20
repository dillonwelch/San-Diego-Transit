class Route < ActiveRecord::Base
  has_many :schedule_routes
  has_many :schedules, through: :schedule_routes

  validates :name, presence: true
  validates :mts_id, numericality: { only_integer: true, greater_than: 0 }
  validates :mts_display_id, numericality: { only_integer: true, greater_than: 0 }

  def self.crawl_bus_routes
    page = Nokogiri::HTML(open("http://www.sdmts.com/mtscr/BusRoutes.aspx"))
    table = page.css('.gridviewmobile').css('tr')
    table.each do |row|
      unless row.css('td').empty?
        data = row.css('td')
        mts_id = data[0].text
        name = data[1].text
        Route.create!(name: name, mts_id: mts_id)
      end
    end
    byebug
  end
end
