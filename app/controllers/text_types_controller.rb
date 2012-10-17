class TextTypesController < ApplicationController
  # GET /text_types
  # GET /text_types.json
  def index
    @text_types = TextType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @text_types }
    end
  end

  # GET /text_types/1
  # GET /text_types/1.json
  def show
    @text_type = TextType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @text_type }
    end
  end

  # GET /text_types/new
  # GET /text_types/new.json
  def new
    @text_type = TextType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @text_type }
    end
  end

  # GET /text_types/1/edit
  def edit
    @text_type = TextType.find(params[:id])
  end

  # POST /text_types
  # POST /text_types.json
  def create
    @text_type = TextType.new(params[:text_type])

    respond_to do |format|
      if @text_type.save
        format.html { redirect_to @text_type, notice: 'Text type was successfully created.' }
        format.json { render json: @text_type, status: :created, location: @text_type }
      else
        format.html { render action: "new" }
        format.json { render json: @text_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /text_types/1
  # PUT /text_types/1.json
  def update
    @text_type = TextType.find(params[:id])

    respond_to do |format|
      if @text_type.update_attributes(params[:text_type])
        format.html { redirect_to @text_type, notice: 'Text type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @text_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_types/1
  # DELETE /text_types/1.json
  def destroy
    @text_type = TextType.find(params[:id])
    @text_type.destroy

    respond_to do |format|
      format.html { redirect_to text_types_url }
      format.json { head :no_content }
    end
  end
end
