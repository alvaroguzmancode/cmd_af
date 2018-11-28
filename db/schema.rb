# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_25_055202) do

  create_table "equipos", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "descripcion"
    t.bigint "tipo_equipo_id"
    t.bigint "fabricante_id"
    t.bigint "consultorio_id"
    t.string "fecha_adquisicion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fabricante_id"], name: "fk_rails_bccaa09c5a"
    t.index ["id"], name: "index_equipos_on_id"
    t.index ["tipo_equipo_id"], name: "fk_rails_bf5e9a4797"
  end

  create_table "fabricantes", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_fabricantes_on_id"
  end

  create_table "tipo_equipos", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_tipo_equipos_on_id"
  end

  add_foreign_key "equipos", "fabricantes"
  add_foreign_key "equipos", "tipo_equipos"
end
