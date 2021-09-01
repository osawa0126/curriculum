/* ■ [回答]と記載のある箇所へ、1〜8の各課題内容に沿ったSQL文を記述しなさい。 */
 
-- 1. 店舗テーブルから店舗名を抽出しなさい。また、列名の表示は別名で'店舗名'とすること。
-- [
select
 store_name 店舗名
 
from
 store_table
]

 
-- 2. 店舗情報を店舗名のABC順に抽出しなさい。
-- [
select
 * 

from
 store_table 

order by
 store_nameabc asc
]
 
 
-- 3. 在庫テーブルに店舗テーブル、商品テーブルを「内部結合」し、店舗名・商品名・在庫数を全て取得しなさい。
-- [
select
 store.store_name,
 goods.goods_name,
 stock.quantity

from 
 stock_table stock

join
 goods_table goods

ON
 stock.goods_code = goods.goods_code

join
 store_table store

ON
 stock.store_code = store.store_code
]
 
 
-- 4. 商品テーブルから全商品の単価の平均値を抽出しなさい。
-- [
select
 AVG(price) 

from
 goods_table
]
 
 
-- 5. 店舗コード='EA01'の在庫数の平均値より大きい在庫数を持つ店舗コードを抽出しなさい。
-- [
select 
 store_code

from 
 stock_table

where quantity
 >
 (select avg(quantity) from stock_table where store_code = 'EA01')
]
 
 
-- 6. 商品テーブルに「商品コード='M001'、商品名='マフラー'、単価=4500円、更新日付=本日日付」のデータを追加しなさい。※実行後のSELECT結果も貼付すること。
-- [
insert into
 goods_table
 (goods_code, goods_name, price, update_day)

values
 ('M001', 'マフラー', 4500, '2021-09-01')
]
 
 
-- 7. 在庫テーブルの商品コード='S987'、かつ、店舗コード='EA01'に対して、「在庫数=10、更新日付=本日日付」で更新しなさい。※実行後のSELECT結果も貼付すること。
-- [
update 
 stock_table

set
 quantity = 10,
 update_day = '2021-09-01'

where
 goods_code = 'S987'
 and
 store_code = 'EA01'
]
 
 
-- 8. 7で更新した商品を削除しなさい。※実行後のSELECT結果も貼付すること。
-- [
delete 
 from stock_table

where 
 (goods_code = 'M001' and update_day = '2021-09-01')
or
 (goods_code = 'S987' and update_day = '2021-09-01')
]

また、問題１と２に関しては取得結果を以下に示します