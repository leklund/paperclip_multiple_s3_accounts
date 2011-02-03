module Paperclip
  module Storage
    module S3
      
      def parse_credentials creds
        creds = creds.is_a?(Proc) ? creds.call(self) : creds
        creds = find_credentials(creds).stringify_keys
        (creds[RAILS_ENV] || creds).symbolize_keys
      end


    end
  end
end