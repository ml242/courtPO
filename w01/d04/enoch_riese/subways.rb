subways = {n_train: [:eighth_n, :union_square, :twenty3_n, :twenty8_n, :thirty4_n, :times_square_n],
          six_train: [:astor_6, :union_square, :twenty3_6, :twenty8_6, :thirty3_6, :grand_central_6],
          l_train: [:first_l, :third_l, :union_square, :sixth_l, :eighth_l]}

def fetch_line(station, lines)
  trains = {}
  trains[:n_train] = true if lines[:n_train].include?(station)
  trains[:six_train] = true if lines[:six_train].include?(station)
  trains[:l_train] = true if lines[:l_train].include?(station)
  if trains[:n_train] == true && trains[:six_train] == true
    return nil
  else return trains.key(true)
  end
end





def fetch_stop(leave_from, arrive_at, lines)
  train1 = fetch_line(leave_from, lines)
  train2 = fetch_line(arrive_at, lines)
  train1 = train2 if train1 == nil
  train2 = train1 if train2 == nil
  # stops = lines[:n_train].index(leave_from) - lines[:n_train].index(arrive_at)
  # stops.abs
  [train1, train2]
end

trip = fetch_stop(:thirty4_n, :union_square, subways)
puts trip