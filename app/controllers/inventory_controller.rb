class InventoryController < ApplicationController

def index
    @inventory = Inventory.all
end

end