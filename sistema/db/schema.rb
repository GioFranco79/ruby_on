# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_31_010742) do

  create_table "agendas", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "fagenda"
    t.bigint "paciente_id", null: false
    t.bigint "profesional_id", null: false
    t.bigint "horario_id", null: false
    t.bigint "user_id", null: false
    t.bigint "centro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["centro_id"], name: "index_agendas_on_centro_id"
    t.index ["horario_id"], name: "index_agendas_on_horario_id"
    t.index ["paciente_id"], name: "index_agendas_on_paciente_id"
    t.index ["profesional_id"], name: "index_agendas_on_profesional_id"
    t.index ["user_id"], name: "index_agendas_on_user_id"
  end

  create_table "atiendes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "profesional_id", null: false
    t.bigint "centro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["centro_id"], name: "index_atiendes_on_centro_id"
    t.index ["profesional_id"], name: "index_atiendes_on_profesional_id"
  end

  create_table "centros", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "rut"
    t.string "nombre"
    t.string "ciudad"
    t.string "comuna"
    t.string "direccion"
    t.string "fono"
    t.string "email"
    t.bigint "cliente_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_id"], name: "index_centros_on_cliente_id"
  end

  create_table "clientes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "rut"
    t.string "razon"
    t.binary "logo"
    t.string "fono"
    t.string "email"
    t.string "ciudad"
    t.string "comuna"
    t.string "direccion"
    t.string "representante"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "horarios", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "dia"
    t.integer "box"
    t.datetime "hentrada"
    t.datetime "hsalida"
    t.bigint "profesional_id", null: false
    t.bigint "centro_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["centro_id"], name: "index_horarios_on_centro_id"
    t.index ["profesional_id"], name: "index_horarios_on_profesional_id"
  end

  create_table "pacientes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "rut"
    t.string "nombre"
    t.string "apellido"
    t.date "fechanac"
    t.string "email"
    t.string "fono"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profesionals", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "titulo"
    t.string "especialidad"
    t.string "ciudad"
    t.string "comuna"
    t.string "direccion"
    t.string "email"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profesionals_on_user_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "rut"
    t.string "nombre"
    t.string "apellido"
    t.date "fechanac"
    t.string "fono"
    t.string "email"
    t.string "password_digest"
    t.integer "tipo"
    t.bigint "cliente_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_users_on_cliente_id"
  end

  add_foreign_key "agendas", "centros"
  add_foreign_key "agendas", "horarios"
  add_foreign_key "agendas", "pacientes"
  add_foreign_key "agendas", "profesionals"
  add_foreign_key "agendas", "users"
  add_foreign_key "atiendes", "centros"
  add_foreign_key "atiendes", "profesionals"
  add_foreign_key "centros", "clientes"
  add_foreign_key "horarios", "profesionals"
  add_foreign_key "profesionals", "users"
  add_foreign_key "users", "clientes"
end
