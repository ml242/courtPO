# == Schema Information
#
# Table name: pokemons
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  type1            :string(255)
#  type2            :string(255)
#  ability1         :string(255)
#  gender_ratio     :float
#  experience_curve :string(255)
#  catch_rate       :integer
#  base_exp         :integer
#  base_stats_hp    :integer
#  base_stats_atk   :integer
#  base_stats_def   :integer
#  base_stats_spatk :integer
#  base_stats_spdef :integer
#  base_stats_speed :integer
#  evolve_to        :integer
#  evolve_level     :integer
#  learnabletm      :text
#  spatk            :string(255)
#

class Pokemon < ActiveRecord::Base
  attr_accessible :name, :type1, :type2, :ability1, :gender_ratio, :experience_curve, :catch_rate, :base_exp, :base_stats_hp, :base_stats_atk, :base_stats_def, :base_stats_spatk, :base_stats_spdef, :base_stats_speed, :evolve_to, :evolve_level, :learnabletm, :spatk
  belongs_to :trainer
end
