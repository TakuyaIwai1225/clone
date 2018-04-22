ActiveRecord::Schema.define(version: 20180417130243) do

  enable_extension "plpgsql"

  create_table "clones", force: :cascade do |t|
    t.text "content"
  end

end
