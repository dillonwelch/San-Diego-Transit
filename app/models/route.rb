class Route < ActiveRecord::Base
  MTS_ID_FORMAT = /\d+(\d*)?A?/

  has_many :schedule_routes
  has_many :schedules, through: :schedule_routes

  validates :name, presence: true
  validates :mts_id, format: { with: MTS_ID_FORMAT }
  validates :mts_display_id, format: { with: MTS_ID_FORMAT }

  #TODO test
  default_scope { order('mts_id::int') }

  #TODO test
  def self.crawl_bus_routes
    page = Nokogiri::HTML(open("http://www.sdmts.com/mtscr/BusRoutes.aspx"))
    table = page.css('.gridviewmobile').css('tr')
    table.each do |row|
      unless row.css('td').empty?
        data = row.css('td')
        url = data.css('a').first['href']
        # Grab the digits at the end of the query string.
        mts_id = /\d+\Z/.match(url).to_s
        mts_display_id = data[0].text
        name = data[1].text
        begin
          Route.create!(name: name, mts_id: mts_id, mts_display_id: mts_display_id)
        rescue
          # byebug
        end
      end
    end
    # byebug
  end
end
