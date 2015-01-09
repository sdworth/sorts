def get_num(x)
  if x == 0 || x == 1
    return 1
  end

  get_num(x-1) + get_num(x-2)
end


puts get_num(1000)

