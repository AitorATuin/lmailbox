--- @module mailbox.folder
local folder = {}

-- class table
local Folder = {}

function Folder.inbox()
  return nil
end

function Folder.new()
  return nil
end

function folder.new (maildir, path)
  local self = {
    _path = string.format("%s/%s", maildir._path, path),
    maildir = maildir,
  }
  setmetatable(self, { __index = Folder })

  return self
end
