require 'spec_helper'

describe DigNestedHash do
  it 'has a version number' do
    expect(DigNestedHash::VERSION).not_to be nil
  end

  describe '#swap_nested_value' do
    let!(:hash) { { a: 1, b: { c: 2, d: [e: { f: 3, g: 4 }, h: 5] } } }
    context '置き換えたいkeyが含まれる場合' do
      it '置き換え対象が、hash in array in hash in hash' do
        expect(hash.swap_nested_value(:f, 6)).to eq(a: 1, b: { c: 2, d: [e: { f: 6, g: 4 }, h: 5] })
      end
      it '置き換え対象が、array in hash in hash' do
        expect(hash.swap_nested_value(:h, 6)).to eq(a: 1, b: { c: 2, d: [e: { f: 3, g: 4 }, h: 6] })
      end
      it '置き換え対象が、hash in hash' do
        expect(hash.swap_nested_value(:d, 6)).to eq(a: 1, b: { c: 2, d: 6 })
      end
    end
    context '置き換えたいkeyが含まれない場合' do
      it '置き換え対象が含まれない' do
        expect(hash.swap_nested_value(:i, 6)).to eq(a: 1, b: { c: 2, d: [e: { f: 3, g: 4 }, h: 5] })
      end
    end
  end
end
