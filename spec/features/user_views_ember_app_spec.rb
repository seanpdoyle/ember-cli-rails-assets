require "rails_helper"

feature "User views ember app", :js do
  scenario "rendering with asset helpers from `/`" do
    visit root_path

    expect(page).to have_client_side_asset
    expect(page).to have_javascript_rendered_text
  end

  scenario "rendering with asset helpers from `/nested`" do
    visit nested_path

    expect(page).to have_client_side_asset
    expect(page).to have_javascript_rendered_text
  end

  scenario "rendering with asset helpers and absolute base_path from `/relative/`" do
    visit relative_path

    expect(page).to have_javascript_rendered_text
  end

  def have_client_side_asset
    have_css %{img[src*="logo.png"]}
  end

  def have_javascript_rendered_text
    have_text("Welcome to Ember")
  end
end
