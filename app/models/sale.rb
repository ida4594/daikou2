class Sale < ApplicationRecord
  belongs_to :shop, foreign_key: 'shop_id'

def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      # IDが見つかれば、レコードを呼び出し、見つかれなければ、新しく作成
      sale = find_by(id: row["id"]) || new
      # CSVからデータを取得し、設定する
      sale.attributes = row.to_hash.slice(*updatable_attributes)
      # 保存する
      sale.save
    end
  end

  # 更新を許可するカラムを定義
  def self.updatable_attributes
    ["id", "shop_id", "rate"]
  end
end
