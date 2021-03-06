class EntriesController < ApplicationController
  # GET /entries
  # GET /entries.json
  #
  #
  before_filter :get_user_and_journal_and_entries

  def get_user_and_journal_and_entries
    @user = User.find(params[:user_id])
    @journal = @user.journals.find(params[:journal_id])
    @entries = @journal.entries
  end

  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entries }
    end
  end

  # GET /entries/1
  # GET /entries/1.json
  def show
    @entry = @entries.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entry }
    end
  end

  # GET /entries/new
  # GET /entries/new.json
  def new

   # @user = User.find_by_id(params[:user_id])i
   # @journal = @user.journals.find(params[:journal_id])


    @entry = @entries.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entry }
    end
  end

  # GET /entries/1/edit
  def edit
    @entry = @entries.find(params[:id])
  end

  # POST /entries
  # POST /entries.json
  def create
    @entry = @entries.new(params[:entry])

    respond_to do |format|
      if @entry.save
        format.html { redirect_to user_journal_entries_path, notice: 'Entry was successfully created.' }
        format.json { render json: @entry, status: :created, location: @entry }
      else
        format.html { render action: "new" }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entries/1
  # PUT /entries/1.json
  def update
    @entry = @entries.find(params[:id])

    respond_to do |format|
      if @entry.update_attributes(params[:entry])
        format.html { redirect_to user_journal_entries_path(@user, @journal), notice: 'Entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry = @entries.find(params[:id])
    @entry.destroy

    respond_to do |format|
      format.html { redirect_to user_journal_entries_url(@user, @journal) }
      format.json { head :no_content }
    end
  end
end
