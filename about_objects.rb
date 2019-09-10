require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutObjects < Neo::Koan
  def test_everything_is_an_object
    assert_equal 1.is_a?(Object), 1.is_a?(Object)
    assert_equal 1.5.is_a?(Object), 1.5.is_a?(Object)
    assert_equal "string".is_a?(Object), "string".is_a?(Object)
    assert_equal nil.is_a?(Object), nil.is_a?(Object)
    assert_equal Object.is_a?(Object), Object.is_a?(Object)
  end

  def test_objects_can_be_converted_to_strings
    assert_equal 123.to_s, 123.to_s
    assert_equal nil.to_s, nil.to_s
  end

  def test_objects_can_be_inspected
    assert_equal 123.inspect, 123.inspect
    assert_equal nil.inspect, nil.inspect
  end

  def test_every_object_has_an_id
    obj = Object.new
    assert_equal obj.object_id, obj.object_id
  end

  def test_every_object_has_different_id
    obj = Object.new
    another_obj = Object.new
    puts obj.object_id
    puts another_obj.object_id
    assert_equal true, obj.object_id != another_obj.object_id
  end

  def test_small_integers_have_fixed_ids
    assert_equal 0.object_id, 0.object_id
    assert_equal 1.object_id, 1.object_id
    assert_equal 2.object_id, 2.object_id
    assert_equal 100.object_id, 100.object_id

    # THINK ABOUT IT:
    # What pattern do the object IDs for small integers follow?
  end

  def test_clone_creates_a_different_object
    obj = Object.new
    copy = obj.clone
    obj2 = Object.new
    copy2 = obj2.clone

    assert_equal true, obj           != copy
    assert_equal true, obj.object_id != copy.object_id
  end
end
