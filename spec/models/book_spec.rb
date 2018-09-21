require 'rails_helper'

describe Book do
  it 'is valid with valid attributes' do
    book = build(:book)

    expect(book).to be_valid
  end

  it 'is not valid without a genre' do
    book = build(:book, genre: nil)

    expect(book).not_to be_valid
  end

  it 'is not valid without an author' do
    book = build(:book, author: nil)

    expect(book).not_to be_valid
  end

  it 'is not valid without an image' do
    book = build(:book, image: nil)

    expect(book).not_to be_valid
  end

  it 'is not valid without a title' do
    book = build(:book, title: nil)

    expect(book).not_to be_valid
  end

  it 'is not valid without a publisher' do
    book = build(:book, publisher: nil)

    expect(book).not_to be_valid
  end

  it 'is not valid without a year' do
    book = build(:book, year: nil)

    expect(book).not_to be_valid
  end
end
