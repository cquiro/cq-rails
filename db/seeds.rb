Book.create!([
  {
    genre: 'Non-fiction',
    author: 'Yuval Noah Harari',
    image: 'https://via.placeholder.com/350x500',
    title: 'Sapiens: A Brief History of Humankind',
    publisher: 'Harper & Row',
    year: '2011'
  },
  {
    genre: 'Science',
    author: 'Matthew Walker',
    image: 'https://via.placeholder.com/350x500',
    title: 'Why We Sleep',
    publisher: 'Penguin Books Ltd',
    year: '2017'
  },
  {
    genre: 'Biography, Autobiography',
    author: 'Michael Pollan',
    image: 'https://via.placeholder.com/350x500',
    title: 'How to Change Your Mind',
    publisher: 'Perigee Book/Penguin Group',
    year: '2018'
  },
  {
    genre: 'Non-fiction',
    author: 'Christopher Hitchens',
    image: 'https://via.placeholder.com/350x500',
    title: 'God Is Not Great',
    publisher: 'Twelve Books',
    year: '2007'
  },
  {
    genre: 'Non-fiction',
    author: 'Daniel Yergin',
    image: 'https://via.placeholder.com/350x500',
    title: 'The Prize',
    publisher: 'Simon & Schuster',
    year: '1990'
  }
])
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?