class Foo < Ohm::Model
  attribute :bar
  index :bar

  def validate
    if assert_present :bar
      assert_unique :bar
    end
  end
end