class SectorsController < ApplicationController

  def index
     @sector=Sector.all
     render json: @sector
  end

  def create
    @sector = Sector.create!(sector_params)
    if @sector.save
        render json: { status: 201, message: 'Sector created successfully!' }
    else
        render json: { status: 401, message: 'Sector did not created successfully!'}
    end
end

private

    def sector_params
        params.permit(:title, :level )
    end
end
