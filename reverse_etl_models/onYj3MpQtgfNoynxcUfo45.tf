import {
  to = segment_reverse_etl_model.id-onYj3MpQtgfNoynxcUfo45
  id = "onYj3MpQtgfNoynxcUfo45"
}

resource "segment_reverse_etl_model" "id-onYj3MpQtgfNoynxcUfo45" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-usetrait"
  query                   = "SELECT * FROM SISINGH_SANDBOX.UNIFY_DEMO_SPACE.USER_TRAITS"
  query_identifier_column = "ID"
  source_id               = "wrC9EnoSptjZocoobcY5dW"
}