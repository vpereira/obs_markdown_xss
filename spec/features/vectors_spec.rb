require 'rails_helper'

RSpec.describe 'Vectors', type: :system do
    describe 'show' do
        let(:confirm) { page.driver.browser.switch_to.alert }
        #generate dynamic test cases
         context 'raw', unsafe: true do
            XSSVector.pluck(:id).each do |i|
                self.send(:it, "markdown visible link vector #{i}") do
                    visit vector_path(id: i, raw: true)
                    expect { confirm}.to raise_error Selenium::WebDriver::Error::NoSuchAlertError
                end
            end
        end

        context 'markdown' do
            # generate dynamic test cases
            XSSVector.pluck(:id).each do |i|
                self.send(:it, "markdown visible link vector #{i}") do
                    visit vector_path(id: i, raw: false)
                    expect { confirm }.to raise_error Selenium::WebDriver::Error::NoSuchAlertError
                end
            end
        end
    end
end
