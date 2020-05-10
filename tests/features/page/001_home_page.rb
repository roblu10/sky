class HomePage < SitePrism::Page
    set_url'/'

    element :close_modal, '[class="close"]'
    element :link_programation, 'a[href="/programacao"]'

    def click_close_modal
        close_modal.click
    end

    def click_link_programation
        link_programation.click
    end
end