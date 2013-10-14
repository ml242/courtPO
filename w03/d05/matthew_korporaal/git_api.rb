require 'github_api'
require 'pry'

binding.pry
repos = Github.repos.list user: 'wycats'

