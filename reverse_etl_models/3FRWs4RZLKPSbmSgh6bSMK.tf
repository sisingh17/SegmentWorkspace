import {
  to = segment_reverse_etl_model.id-3FRWs4RZLKPSbmSgh6bSMK
  id = "3FRWs4RZLKPSbmSgh6bSMK"
}

resource "segment_reverse_etl_model" "id-3FRWs4RZLKPSbmSgh6bSMK" {
  description             = " "
  enabled                 = true
  name                    = "RETL Test Deletion"
  query                   = "SELECT\n  *\nFROM\n  \"SEGMENT_REVERSE_ETL\".\"__SEGMENT_REVERSE_ETL\".\"CUSTOMERS\";"
  query_identifier_column = "user_id"
  source_id               = "6PMPY3rtmgizcWXYW7im4g"
}