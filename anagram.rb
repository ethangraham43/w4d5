require "byebug"
def first_anagram?(str_1, str_2)
    letters_1 = str_1.split("")
    letters_2 = str_2.split("")
   permutation(letters_1).include?(letters_2)
end

def permutation (arr)
    return [arr] if arr.length <= 1
    first = arr.shift
    perms = permutation(arr)
    total = []
    perms.each do |perm|
        (0..perm.length).to_a.each do |i|
            total << perm[0...i] + [first] + perm[i..-1]
        end
    end
    total
end

def second_anagram?(str_1, str_2)
    str_1.each_char.with_index do |char,i|
        k = str_2.index(char)
        if k == nil
            return false
        else 
            str_2.slice!(k)
        end
    end
    return true if str_2.empty? 
    false
end

def third_anagram?(str_1, str_2)
    str_1.split("").sort == str_2.split("").sort
end

def fourth_anagram?(str_1,str_2)
    count(str_1) == count(str_2)
end

def count(str)
    hash = Hash.new(0)
    str.each_char do |letter|
        hash[letter] +=1
    end
    hash
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true
p first_anagram?("ice", "slice")
