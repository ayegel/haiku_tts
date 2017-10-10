class RatingsController < ApplicationController
 before_action :set_haiku
 before_action :set_rating, only: [:show, :edit, :update, :destroy]

 # GET /ratings
 def index
   @ratings = Rating.where(haiku_id: @haiku.id)
 end

 # GET /ratings/1
 def show
 end

 # GET /ratings/new
 def new
   @rating = Rating.new
 end

 # GET /ratings/1/edit
 def edit
 end

 # POST /ratings
 def create
   @rating = Rating.new(rating_params)
   if @rating.save
     redirect_to [@haiku, @rating], notice: 'Rating was successfully created.'
   else
     render :new
   end
 end

 # PATCH/PUT /ratings/1
 def update
   if @rating.update(rating_params)
     redirect_to @haiku, notice: 'Rating was successfully updated.'
   else
     render :edit
   end
 end

 # DELETE /ratings/1
 def destroy
   @rating.destroy
   redirect_to @haiku, notice: 'Rating was successfully destroyed.'
 end

 private
   # Use callbacks to share common setup or constraints between actions.
   def set_haiku
     @haiku = Haiku.find(params[:haiku_id])
   end

   def set_rating
     @rating = @haiku.ratings.find(params[:id])
   end

   # Never trust parameters from the scary internet, only allow the white list through.
   def rating_params
     params.require(:rating).permit(:vote, :user_id).merge(haiku_id: @haiku.id)
   end
end
