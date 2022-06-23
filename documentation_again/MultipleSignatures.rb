# What do each of these puts statements output?

a = %w(a b c d e)

puts a.fetch(7)
# MultipleSignatures.rb:5:in `fetch': index 7 outside of array bounds: -5...5 (IndexError) from MultipleSignatures.rb:5:in `<main>'

puts a.fetch(7, 'beats me')
# beats me

puts a.fetch(7) { |index| index**2 }
# 49