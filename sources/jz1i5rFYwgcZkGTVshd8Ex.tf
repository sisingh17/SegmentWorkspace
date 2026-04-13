import {
  to = segment_source.id-jz1i5rFYwgcZkGTVshd8Ex
  id = "jz1i5rFYwgcZkGTVshd8Ex"
}

resource "segment_source" "id-jz1i5rFYwgcZkGTVshd8Ex" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "demo"
    },
  ]
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "SageDemo"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "sagedemo"
}