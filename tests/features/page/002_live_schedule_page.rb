class LiveSchedulePage < SitePrism::Page
    set_url'/programacao'

    element :live_program, 'div.schedule-inner.schedule-live > div.program-schedule-content > h2', match: :first
    element :program_title, 'div.schedule-inner.schedule-live > div.program-schedule-content > h2', match: :first
    element :program_duration, 'div.schedule-inner.schedule-live > div.program-schedule-content > div > div > p', match: :first

    element :modal_title, '.sky-modal-program-title'
    element :modal_program_duration, '.sky-modal-program-date-time'

    def click_live_program
        live_program.click
    end
end