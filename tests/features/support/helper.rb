module Helper
    def take_photo(file_name, result)
        file_path = "reports/screenshot/test_#{result}"
        photo = "#{file_path}/#{file_name}.png"
        page.save_screenshot(photo)
        embed(photo, 'image/png', 'Click here')
    end
end