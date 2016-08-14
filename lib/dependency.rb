require "dependency/version"

module Dependency
  def dependent(name, opts = {})
    @__dependencies__ ||= []
    @__dependencies__ << [name, opts]
  end

  def dependencies
    @__dependencies__ ||= []
    @__dependencies__ + ancestors.drop(1).select do |mod|
      mod.singleton_class.include? Dependency
    end.flat_map do |mod|
      mod.dependencies
    end
  end
end
