url = 'http://www.google.com/?q=123&y=2950&z=9500&p=950'
# params = {}
# query = url.split('?').last
# query.split('&').each do |kv_pair_string|
#   kv_array = kv_pair_string.split('=')
#   key = kv_array.first
#   value = kv_array.last
#   params[key] = value
# end

def parameterize(url)
  params = {}
  query = url.split('?').last
  query.split('&').each do |kv_pair_string|
    kv_array = kv_pair_string.split('=')
    key = kv_array.first
    value = kv_array.last
    params[key] = value
  end
end
