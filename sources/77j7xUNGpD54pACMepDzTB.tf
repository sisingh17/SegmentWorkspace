import {
  to = segment_source.id-77j7xUNGpD54pACMepDzTB
  id = "77j7xUNGpD54pACMepDzTB"
}

resource "segment_source" "id-77j7xUNGpD54pACMepDzTB" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "TestConsent"
  settings = jsonencode({
    apiHost     = "api.segment.io/v1"
    website_url = "http://sisingh17.github.io"
  })
  slug = "testconsent"
}