import {
  to = segment_destination.id-695fa254c25d75e0274e198b
  id = "695fa254c25d75e0274e198b"
}

resource "segment_destination" "id-695fa254c25d75e0274e198b" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
      {
      },
      {
      },
      {
      },
    ]
    id                = "54521fd525e721e32a72ee91"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = ["eu-west-1", "us-west-2"]
  }
  name = "Amplitude Device Mode"
  settings = jsonencode({
    apiKey                           = ""
    appendFieldsToEventProps         = {}
    batchEvents                      = false
    deviceIdFromUrlParam             = false
    enableLocationListening          = true
    endpoint                         = ""
    eventUploadPeriodMillis          = 30000
    eventUploadThreshold             = 30
    forceHttps                       = false
    groupTypeTrait                   = ""
    groupValueTrait                  = ""
    mapQueryParams                   = {}
    preferAnonymousIdForDeviceId     = false
    saveParamsReferrerOncePerSession = true
    secretKey                        = ""
    sendAlias                        = false
    sendToBatchEndpoint              = false
    trackAllPages                    = false
    trackAllPagesV2                  = false
    trackCategorizedPages            = true
    trackGclid                       = false
    trackNamedPages                  = true
    trackProductsOnce                = false
    trackReferrer                    = true
    trackRevenuePerProduct           = false
    trackSessionEvents               = false
    trackUtmProperties               = true
    traitsToAppend                   = []
    traitsToIncrement                = []
    traitsToPrepend                  = []
    traitsToSetOnce                  = []
    unsetParamsReferrerOnNewSession  = false
    useAdvertisingIdForDeviceId      = false
    useAmplitudeReferral             = false
    useCustomAmplitudeProperties     = false
    useLogRevenueV2                  = true
    versionName                      = ""
  })
  source_id = "77j7xUNGpD54pACMepDzTB"
}