class QueriesController < ApplicationController

  # GET /queries/new
  # GET /queries/new.json
  def new
    @query = Query.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @query }
    end
  end

  #instead of showing the creation of the query object:
  #we want to show the results of the query from Soundcloud
  def show
    query = Query.find(params[:id])
    @tracklist = @client.get('/tracks', :q => query.sc_user)
    
  end
  # POST /queries
  # POST /queries.json
  def create
    @query = Query.new(params[:query])

    respond_to do |format|
      if @query.save
        format.html { redirect_to @query, notice: 'query was successfully created.' }
        format.json { render json: @query, status: :created, location: @query }
      else
        format.html { render action: "new" }
        format.json { render json: @query.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /queries/1
  # DELETE /queries/1.json
  def query
    @query = Query.find(params[:id])
    @query.destroy

    respond_to do |format|
      format.html { redirect_to queries_url }
      format.json { head :no_content }
    end
  end
end
