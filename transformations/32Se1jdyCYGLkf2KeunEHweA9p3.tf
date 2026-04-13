import {
  to = segment_transformation.id-32Se1jdyCYGLkf2KeunEHweA9p3
  id = "32Se1jdyCYGLkf2KeunEHweA9p3"
}

resource "segment_transformation" "id-32Se1jdyCYGLkf2KeunEHweA9p3" {
  destination_metadata_id = null
  enabled                 = false
  fql_defined_properties = [
  ]
  if             = "event=\"Example Event\""
  name           = "Camel Casing Property"
  new_event_name = null
  property_renames = [
    {
      new_name = "traits.firstName"
      old_name = "traits.FirstName"
    },
  ]
  property_value_transformations = [
  ]
  source_id = "8MT9TFAJzDfUxTat4GhnxC"
}