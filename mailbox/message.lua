--- @module mailbox.message
local message = {}

-- class table
local Message = {}

function message.new (folder, message)
  local self = {
    _path = string.format("%s/%s", folder._path, message),
    folder = folder,
    message = message,
    flags = nil,
    to = nil,
    from = nil,
    headers = nil
  }
  setmetatable(self, { __index = Message })

  return self
end
