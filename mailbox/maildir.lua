--- @module mailbox.maildir
local maildir = {}

-- class table
local Maildir = {}

function Maildir.folders(pattern)
  return nil
end

function Maildir.folder(folder_name)
  return nil
end

function maildir.new ()
  local self = {}
  setmetatable(self, {__index = Maildir })

  return self
end
