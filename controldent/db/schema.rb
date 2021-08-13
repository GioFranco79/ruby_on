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

ActiveRecord::Schema.define(version: 2021_08_09_223037) do

  create_table "agendas", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "fagenda"
    t.string "hagenda"
    t.bigint "profesional_id", null: false
    t.bigint "centro_id", null: false
    t.bigint "paciente_id", null: false
    t.bigint "horario_id", null: false
    t.bigint "usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["centro_id"], name: "index_agendas_on_centro_id"
    t.index ["horario_id"], name: "index_agendas_on_horario_id"
    t.index ["paciente_id"], name: "index_agendas_on_paciente_id"
    t.index ["profesional_id"], name: "index_agendas_on_profesional_id"
    t.index ["usuario_id"], name: "index_agendas_on_usuario_id"
  end

  create_table "centros", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.string "ciudad"
    t.string "fono"
    t.string "email"
    t.string "comuna"
    t.string "direccion"
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

  create_table "especialidads", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nomesp"
    t.bigint "profesional_id", null: false
    t.bigint "centro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["centro_id"], name: "index_especialidads_on_centro_id"
    t.index ["profesional_id"], name: "index_especialidads_on_profesional_id"
  end

  create_table "horarios", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "rutayuda"
    t.datetime "hentrada"
    t.datetime "hsalida"
    t.integer "box"
    t.bigint "profesional_id", null: false
    t.bigint "centro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["centro_id"], name: "index_horarios_on_centro_id"
    t.index ["profesional_id"], name: "index_horarios_on_profesional_id"
  end

  create_table "pacientes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "rut"
    t.string "nombre"
    t.string "apellido"
    t.string "fono"
    t.string "email"
    t.date "fechanac"
    t.string "prevision"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profesionals", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "rut"
    t.string "nombre"
    t.string "apellido"
    t.string "fono"
    t.string "email"
    t.string "titulo"
    t.string "especialidad"
    t.date "fnac"
    t.integer "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "rut"
    t.string "nombre"
    t.string "apellido"
    t.string "fono"
    t.string "email"
    t.string "password"
    t.integer "tipo"
    t.bigint "cliente_id", null: false
    t.bigint "centro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["centro_id"], name: "index_usuarios_on_centro_id"
    t.index ["cliente_id"], name: "index_usuarios_on_cliente_id"
  end

  add_foreign_key "agendas", "centros"
  add_foreign_key "agendas", "horarios"
  add_foreign_key "agendas", "pacientes"
  add_foreign_key "agendas", "profesionals"
  add_foreign_key "agendas", "usuarios"
  add_foreign_key "centros", "clientes"
  add_foreign_key "especialidads", "centros"
  add_foreign_key "especialidads", "profesionals"
  add_foreign_key "horarios", "centros"
  add_foreign_key "horarios", "profesionals"
  add_foreign_key "usuarios", "centros"
  add_foreign_key "usuarios", "clientes"
end
