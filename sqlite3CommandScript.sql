--  Gbashにて.read sqlite3.sqlを実行すると、本ファイルのスクリプトが実行される。

--  まずは対象DBに接続する
--  sqlite3 mywordDB.db

--  --  CSVファイルをインポートする際
--  .mode csv
--  .import ./MeisaiData_99.csv Meisaidata_99
--  --  verify the import
--  .schema Meisaidata_99
--  --  view imported data
--  SELECT * FROM Meisaidata_99;


--  --  DBをsql文形式でExportする。
--  .output ./MeisaiData.sql
--  .dump MeisaiData_99
--  .quit

--  CSVファイルを出力する。
.headers on
.mode csv
.output ./MeisaiData49999.csv
select * from MeisaiData_49999 order by "取引番号", "支払明細番号";
