require "rails_helper"

feature "User views ember app rendering with asset helpers", :js do
  scenario "from `/`" do
    visit root_path

    expect(page).to have_client_side_asset
    expect(page).to have_javascript_rendered_text
  end

  scenario "from `/nested`" do
    visit nested_path

    expect(page).to have_client_side_asset
    expect(page).to have_javascript_rendered_text
  end

  scenario "with base_path from `/relative`" do
    visit relative_path

    expect(page).to have_client_side_asset
    expect(page).to have_javascript_rendered_text
  end

  def have_client_side_asset
    have_css %{img[src*="logo.png"]}
  end

  def have_javascript_rendered_text
    have_text("Ember app")
  end
end
