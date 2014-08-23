class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string "family",            limit: nil
      t.string "name",              limit: nil, null: false
      t.string "altname",           limit: nil
      t.string "size",              limit: nil
      t.string "type",              limit: nil
      t.string "descriptor",        limit: nil
      t.string "hit_dice",          limit: nil
      t.string "initiative",        limit: nil
      t.string "speed",             limit: nil
      t.string "armor_class",       limit: nil
      t.string "base_attack",       limit: nil
      t.string "grapple",           limit: nil
      t.string "attack",            limit: nil
      t.text   "full_attack"
      t.string "space",             limit: nil
      t.string "reach",             limit: nil
      t.string "special_attacks",   limit: nil
      t.text   "special_qualities"
      t.string "saves",             limit: nil
      t.string "abilities",         limit: nil
      t.text   "skills"
      t.string "bonus_feats",       limit: nil
      t.text   "feats"
      t.text   "epic_feats"
      t.string "environment",       limit: nil
      t.text   "organization"
      t.string "challenge_rating",  limit: nil
      t.string "treasure",          limit: nil
      t.string "alignment",         limit: nil
      t.string "advancement",       limit: nil
      t.string "level_adjustment",  limit: nil
      t.text   "special_abilities"
      t.text   "stat_block"
      t.text   "full_text"
      t.string "reference",         limit: nil
    end
  end
end
