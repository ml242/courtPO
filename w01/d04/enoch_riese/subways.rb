subways = {n_train: [:eighth_n, :union_square, :twenty3_n, :twenty8_n, :thirty4_n, :times_square_n],
          six_train: [:astor_6, :union_square, :twenty3_6, :twenty8_6, :thirty3_6, :grand_central_6],
          l_train: [:first_l, :third_l, :union_square, :sixth_l, :eighth_l]}

def fetch_stop(leave_from, arrive_at, lines)
  stops = lines[:n_train].index(leave_from) - lines[:n_train].index(arrive_at)
  stops.abs
end

trip = fetch_stop(:thirty4_n, :union_square, subways)
puts trip