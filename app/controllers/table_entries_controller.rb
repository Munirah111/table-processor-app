class TableEntriesController < ApplicationController
  def index
    @entries = TableEntry.all
  end

  def calculations
    table = TableEntry.all.index_by(&:identifier)
    alpha = table["A5"].value + table["A20"].value
    beta = table["A15"].value / table["A7"].value
    charlie = table["A13"].value * table["A12"].value

    render json: {
      alpha: alpha,
      beta: beta.round(2),
      charlie: charlie
    }
  end
end
