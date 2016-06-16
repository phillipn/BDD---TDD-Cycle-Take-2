Given /the following movies exist:/ do |movie_table|
  movie_table.hashes.each do |movie|
    Movie.create!(title: movie['title'], rating: movie['rating'], director: movie['director'], release_date: movie['release_date'])
  end
end

Then /the director of "(.*)" should be "(.*)"/ do |title, director|
  movie = Movie.find_by(title: title)
  page.should have_content director
end