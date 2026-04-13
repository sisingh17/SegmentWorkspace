import {
  to = segment_reverse_etl_model.id-oPPQHNc2jZspRjGqR7dSR7
  id = "oPPQHNc2jZspRjGqR7dSR7"
}

resource "segment_reverse_etl_model" "id-oPPQHNc2jZspRjGqR7dSR7" {
  description             = " "
  enabled                 = true
  name                    = "RETL_Create_Records"
  query                   = "SELECT\n  *\nFROM\n  \"SEGMENT_REVERSE_ETL\".\"__SEGMENT_REVERSE_ETL\".\"CUSTOMERS\";\n"
  query_identifier_column = "user_id"
  source_id               = "6PMPY3rtmgizcWXYW7im4g"
}