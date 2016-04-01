def string_shuffle(s)
  s.split('').shuffle.join
end

class String
  def shuffle
    self.split('').shuffle.join
  end
end

person1 = {first: 'Alex', last: 'Shvets'}
person2 = {first: 'Vika', last: 'Koroleva'}
person3 = {first: 'Henry', last: 'Shvets'}

params = {
    father: person1,
    mother: person2,
    child: person3}
