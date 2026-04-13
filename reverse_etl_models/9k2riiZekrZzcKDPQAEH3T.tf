import {
  to = segment_reverse_etl_model.id-9k2riiZekrZzcKDPQAEH3T
  id = "9k2riiZekrZzcKDPQAEH3T"
}

resource "segment_reverse_etl_model" "id-9k2riiZekrZzcKDPQAEH3T" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-Profile Traits LE"
  query                   = "SELECT EMAIL,PHONE FROM SISING_SANDBOX.SEGMENT_PROFILE_SYNC.PROFILE_TRAITS"
  query_identifier_column = "EMAIL"
  source_id               = "toMuunXPwvbTgDRsvF5a3"
}