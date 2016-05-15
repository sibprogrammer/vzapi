require 'json'

class VzApi

  def self.info
    JSON.parse(`prlsrvctl info --json`)
  end

  def self.containers_list
    JSON.parse(`prlctl list --all --json`)
  end

end
