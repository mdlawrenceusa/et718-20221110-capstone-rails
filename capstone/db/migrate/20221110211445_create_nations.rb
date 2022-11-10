class CreateNations < ActiveRecord::Migration[5.0]
  def change
    create_table :nations do |t|
      t.string :name
      t.bigint :mobilephones
      t.bigint :mortalityunder5
      t.bigint :healthexpenditurepercapita
      t.bigint :healthexpenditureppercentGDP
      t.bigint :population
      t.bigint :populationurban
      t.bigint :birthrate
      t.bigint :lifeexpectancy
      t.bigint :GDP

      t.timestamps
    end
  end
end
