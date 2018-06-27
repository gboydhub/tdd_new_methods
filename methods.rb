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
end