class FoodDe < ActiveRecord::Base
  attr_accessible :fdgrp_cd, :long_desc, :shrt_desc, :comname, :manufacname, :survey, :ref_desc, :refuse, :sciname, :n_factor, :pro_factor, :fat_factor, :cho_factor
end
