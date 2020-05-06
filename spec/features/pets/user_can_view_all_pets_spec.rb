require './spec/rails_helper'

RSpec.describe "pets index page", type: :feature do

  it "user can see each pet and information on the pets index page" do
    #pet = Pet.create(image: "", name: "", age: 4, sex: "M", shelter: "Angels With Paws")
    visit "/pets"
    expect(page).to have_content(pet.image)
    expect(page).to have_content(pet.name)
    expect(page).to have_content(pet.age)
    expect(page).to have_content(pet.sex)
    expect(page).to have_content(pet.shelter)
  end
end
