import {
  to = segment_reverse_etl_model.id-gGyUdsADu8W9qPu5m1xFm4
  id = "gGyUdsADu8W9qPu5m1xFm4"
}

resource "segment_reverse_etl_model" "id-gGyUdsADu8W9qPu5m1xFm4" {
  description             = " "
  enabled                 = true
  name                    = "All_Data_Model"
  query                   = "Select * from profilesync4simran.simrans_github_website"
  query_identifier_column = "id"
  source_id               = "tXQ219y6HUBJxpSRshjLrA"
}