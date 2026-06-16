# item/selection_particle/loop

## 後ろから取って消す

data modify storage yrh.013:global tmp.UUID set from storage yrh.013:global tmp.yrh013.data.targets[-1].UUID
data remove storage yrh.013:global tmp.yrh013.data.targets[-1]

## 取った値で検証と実行

function yrh.013:item/uuid_serch/test_uuid with storage yrh.013:global tmp

## データなくなったら再起終了

execute unless data storage yrh.013:global tmp.yrh013.data.targets[] run return fail

## 抜けてきたので再帰

function yrh.013:item/uuid_serch/loop with storage yrh.013:global tmp