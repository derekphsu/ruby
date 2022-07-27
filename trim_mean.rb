# https://leetcode.com/problems/mean-of-array-after-removing-some-elements/
def trim_mean(arr)
  arr.sort!
  left = (arr.length * 0.05).ceil
  right = (arr.length * 0.95).ceil

  new_arr = arr[left..right]
  new_arr.sum/new_arr.length.to_f
end
#doesnt work