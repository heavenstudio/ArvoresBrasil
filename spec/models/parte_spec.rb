require 'spec_helper'

describe Parte do
  context "relations" do
    it { should have_many(:arvores) }
    it { should have_many(:caracteristicas) }
  end
end
