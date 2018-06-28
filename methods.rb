class Array
    def my_rotate(rot=1)
        cur_index = 0
        newarr = Array.new
        while cur_index < self.length
            newpos = cur_index + rot
            if newpos >= self.length
                newpos -= self.length
            elsif newpos < 0
                newpos += self.length
            end
            newarr[newpos] = self[cur_index]
            cur_index += 1
        end

        newarr
    end

    def my_each()
        0.upto(self.length-1) do |x|
            yield self[x]
        end
    end
    
    def my_each_with_index()
        counter = 0
        while counter < self.length do
            yield self[counter], counter
            counter += 1
        end
    end
end

class Hash
    def my_empty?()
        self.each do
            return false
        end
        true
    end

    def my_to_a()
        ret_arr = []
        self.each_pair do |key, val|
            ret_arr << [key, val]
        end
        ret_arr
    end
end

class String
    def my_reverse()
        str_array = self.split('')
        new_str = ''
        counter = str_array.length-1
        while counter >= 0
            new_str += str_array[counter]
            counter -= 1
        end

        new_str
    end
end