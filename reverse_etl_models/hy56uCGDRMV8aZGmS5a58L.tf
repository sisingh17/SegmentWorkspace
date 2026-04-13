import {
  to = segment_reverse_etl_model.id-hy56uCGDRMV8aZGmS5a58L
  id = "hy56uCGDRMV8aZGmS5a58L"
}

resource "segment_reverse_etl_model" "id-hy56uCGDRMV8aZGmS5a58L" {
  description             = " "
  enabled                 = true
  name                    = "Account Upgrade Model"
  query                   = "select * from SEGMENT_PROFILE_SYNC.ACCOUNT_UPGRADED"
  query_identifier_column = "user_id"
  source_id               = "6PMPY3rtmgizcWXYW7im4g"
}