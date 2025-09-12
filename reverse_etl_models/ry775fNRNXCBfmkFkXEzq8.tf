import {
  to = segment_reverse_etl_model.id-ry775fNRNXCBfmkFkXEzq8
  id = "ry775fNRNXCBfmkFkXEzq8"
}

resource "segment_reverse_etl_model" "id-ry775fNRNXCBfmkFkXEzq8" {
  description             = " "
  enabled                 = true
  name                    = "Account Details Model"
  query                   = "SELECT USER_ID, ID FROM LINKED_WORKSHOP_SIMRAN.ACCOUNT"
  query_identifier_column = "id"
  source_id               = "6PMPY3rtmgizcWXYW7im4g"
}