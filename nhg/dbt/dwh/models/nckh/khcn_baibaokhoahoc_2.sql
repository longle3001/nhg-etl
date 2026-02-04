{{ 
  config(
    materialized = 'table'
  ) 
}}

select * 
from {{ source('bronze_hiu_lh_nckh', 'KHCN_BaiBaoKhoaHoc') }} 
