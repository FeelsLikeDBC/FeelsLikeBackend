class NOAAHTTP

  @@noaa_key = ardrqiWRzSRWPmYRCFHNEjbYNTbmdINz

  class << self
    # endpoints :
    # /datasets           A dataset is the primary grouping for data at NCDC.
    # /datacategories     A data category is a general type of data used to group similar data types.
    # /datatypes          A data type is a specific type of data that is often unique to a dataset.
    # /locationcategories A location category is a grouping of similar locations.
    # /locations          A location is a geopolitical entity.
    # /stations           A station is a any weather observing platform where data is recorded.
    # /data               A datum is an observed value along with any ancillary attributes at a specific place and time.

    def query_string (endpoint,query)
      "http://www.ncdc.noaa.gov/cdo-web/api/v2/#{endpoint}#{query}"
    end

    # Given a PWS_ID from WU sends a request for the data about that station.

    def send_request(endpoint,query)
      Unirest.get query_string(endpoint,query)
    end

  end
end