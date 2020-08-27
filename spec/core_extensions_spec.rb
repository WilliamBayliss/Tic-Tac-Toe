require "./spec_helper.rb"
require "../lib/tic_tac_toe/core_extensions.rb"

RSpec.describe Array do

    context "#all_empty?" do
        it "returns true if all the elements of the Array are empty" do
            expect(["", "", ""].all_empty?).to eq true
        end
        it "returns false if some of the Array elements are not empty" do
            expect(["", 1, "", Object.new, ""].all_empty?).to eq false
        end
        it "returns true for an empty Array" do
            expect([].all_empty?).to eq true
        end
    end

    context "#all_same?" do
        it "returns true if all elements of the Array are the same" do
            expect(["A", "A", "A"].all_same?).to eq true
        end
        it "returns false if some of the Array elements are not the same" do
            expect(["", 1, "", Object.new, :a].all_same?).to eq false
        end
        it "returns true for an empty Array" do
            expect([].all_same?).to eq true
        end
    end

    context "#any_empty?" do
        it "returns true if any elements of the Array are empty" do
            expect(["", 1, 2].any_empty?).to eq true
        end
        it "returns false if no elements of the Array are empty" do
            expect([1, 2, "Hello", Object.new, :a].any_empty?).to eq false
        end
    end

    context "#none_empty" do
        it "returns true if none of the elements of the Array are empty" do
            expect([1, 2, "Hello", Object.new, :a].none_empty?).to eq true
        end
        it "returns false if any of the elements of the array are empty" do
            expect([1, 2, "Hello", "", :a].none_empty?).to eq false
        end
    end
end
