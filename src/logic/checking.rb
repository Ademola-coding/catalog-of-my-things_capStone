class Check
  def check_books(books)
    puts 'Book list:'
    if books.empty?
      puts 'There are not books'
      return nil
    end

    books.each_with_index do |book, index|
      puts "Book #{index}"
      puts "ID: #{book.id}", "Label: #{book.label.title}"
      puts "Publish date: #{book.publish_date}"
      puts "Publisher: #{book.publisher}"
      puts "Cover state: #{book.cover_state}"
    end
  end

  def check_labels(labels)
    puts 'Label list:'
    if labels.empty?
      puts 'There are not labels'
      return nil
    end
    labels.each_with_index do |label, index|
      puts "Label #{index}", "ID: #{label.id}", "Title: #{label.title}"
      puts "Color: #{label.color}"
    end
  end

  def check_list_albums(albums)
    puts "\nMusic Albums list: "
    if albums.empty?
      puts "\nNo Music Albums in your catalog yet"
      return nil
    end
    albums.each_with_index do |album, idx|
      spotify_status = album.on_spotify ? 'yes' : 'no'
      puts "\n #{idx}) ID: (#{album.id})" \
           "- Publish Date: #{album.publish_date} - Genre: #{album.genre.name} " \
           "- Is available on Spotify: #{spotify_status}"
    end
  end

  def check_list_genres(genres)
    puts "\nGenres List:"
    if genres.empty?
      puts "\nNo Genres available yet"
      return nil
    end
    genres.each_with_index do |genre, idx|
      puts "\n #{idx}) ID: (#{genre.id}) Genre: #{genre.name}"
    end
  end

  def check_list_authors(authors)
    puts "\nAuthors list"
    if authors.empty?
      puts "\nNo authors available"
      return nil
    end
    authors.each_with_index do |author, index|
      puts "\n#{index}) " \
           "ID: #{author.id}, " \
           "Name: #{author.first_name}, " \
           "Last name: #{author.last_name}"
    end
  end

  def check_list_games(games)
    puts "\nGames List"
    if games.empty?
      puts "\nNo games available"
      return nil
    end
    games.each_with_index do |game, index|
      puts "\n#{index}) " \
           "ID: #{game.id}, " \
           "Publish date: #{game.publish_date}, " \
           "Multiplayer: #{game.multiplayer}, " \
           "Last played: #{game.last_played_at}, "
    end
  end
end
