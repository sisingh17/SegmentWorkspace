import {
  to = segment_reverse_etl_model.id-6Rw7HrzUyCLQBNqrM5979E
  id = "6Rw7HrzUyCLQBNqrM5979E"
}

resource "segment_reverse_etl_model" "id-6Rw7HrzUyCLQBNqrM5979E" {
  description             = " "
  enabled                 = true
  name                    = "Apartment_Visit_Scheduled"
  query                   = "SELECT * FROM PRISTINE_ECOM.MOBILE_IOS.APARTMENT_VISIT_SCHEDULED WHERE APARTMENT_NAME IS NOT NULL"
  query_identifier_column = "anonymous_id"
  source_id               = "6PMPY3rtmgizcWXYW7im4g"
}