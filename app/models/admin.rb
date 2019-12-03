class Admin < ApplicationRecord
  before_create CreateAgeAtCallback.new
  after_initialize do |admin|
    p admin
    puts "オブジェクトを生成しました！"
    admin.name = "Taro"
  end

  private

  def ensure_has_name
    puts "nameの値をTaroに設定します！"
    self.name = 'Taro' if name.blank?
  end
end
