describe "Song" do
  
  it "can be initialized" do
    expect(Song.new).to be_an_instance_of(Song)
  end

  it "can have a name" do
    song = Song.new
    song.name = "Crazy in Love"
    expect(song.name).to eq("Crazy in Love")
  end

  it "can have a genre" do
    song = Song.new
    the_genre = Genre.new
    song.genre = the_genre
    expect(song.genre).to eq(the_genre)
  end

  it "has an artist" do
    song = Song.new
    artist = Artist.new
    song.artist = artist
    expect(song.artist).to eq(artist)
  end
end
