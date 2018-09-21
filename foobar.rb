class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    a.map! {|item| item.to_i + 2}
    a.reject! {|item| item % 2 != 0}
    a.uniq!
    a.reject! {|item| item >= 10}
    return a.inject(0) {|sum, i| sum + i}
  end
end
