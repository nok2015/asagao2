class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :number, null:false # 背番号
      t.string :name, null: false # ユーザー名
      t.string :full_name # 氏名
      t.string :email # メールアドレス
      t.date :birthday # 生年月日
      t.integer :gender, null: false, default:0 # 性別（０：男、１：女）
      t.boolean :administrator, null: false, default: false # 管理者フラグ
      t.timestamps null: false
    end
  end
end
