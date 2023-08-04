/// @param {Array[Int]} nums
/// @param {Int} val
/// @return {Int}
pub func removeElement(nums : Array[Int], val: Int) -> Int {
    fn swap(i, j) {
        if (i != j) {
            t := nums[i]
            nums[i] = nums[j]
            nums[j] = t
        }
    }
    var l = nums.length()
    var k = l
    while k >= 0 {
        if (nums[k] == val) {
            l = l - 1
            swap(k, l)
        }
        k = k - 1
    }
    return l
}

func init {
    nums := [3, 2, 2, 3]
    l := removeElement(nums, 3)
    var i = 0
    while i < l {
        nums[i].print()
        i = i + 1
    }
}
