-- export_transactions.lua

-- Require the json.lua library
local json = require("json")

-- Example transaction data
local transactions = {
    { playerId = 12345, amount = 100, coin = 50, rank = "Player", timestamp = os.time() },
    { playerId = 67890, amount = 200, coin = 100, rank = "Owner", timestamp = os.time() }
}

-- Function to export transactions to a JSON file
local function exportTransactionsToFile(transactions)
    local jsonData = json.encode(transactions)
    local file = io.open("transactions.json", "w")
    file:write(jsonData)
    file:close()
    print("Transactions exported to transactions.json")
end

-- Call the function to export data
exportTransactionsToFile(transactions)