class PubTestsController < ApplicationController
  before_action :set_pub_test, only: [:show, :edit, :update, :destroy, :run_crawl]

  # GET /pub_tests
  # GET /pub_tests.json
  def index
    @pub_tests = PubTest.all
  end

  # GET /pub_tests/1
  # GET /pub_tests/1.json
  def show
  end

  # GET /pub_tests/new
  def new
    @pub_test = PubTest.new
  end

  # GET /pub_tests/1/edit
  def edit
  end

  def run_crawl
    @response = `node index.js #{@pub_test.url}`
    respond_to do |format|
      format.json {}
    end
  end

  # POST /pub_tests
  # POST /pub_tests.json
  def create
    @pub_test = PubTest.new(pub_test_params)

    respond_to do |format|
      if @pub_test.save
        format.html { redirect_to @pub_test, notice: 'Pub test was successfully created.' }
        format.json { render :show, status: :created, location: @pub_test }
      else
        format.html { render :new }
        format.json { render json: @pub_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pub_tests/1
  # PATCH/PUT /pub_tests/1.json
  def update
    respond_to do |format|
      if @pub_test.update(pub_test_params)
        format.html { redirect_to @pub_test, notice: 'Pub test was successfully updated.' }
        format.json { render :show, status: :ok, location: @pub_test }
      else
        format.html { render :edit }
        format.json { render json: @pub_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pub_tests/1
  # DELETE /pub_tests/1.json
  def destroy
    @pub_test.destroy
    respond_to do |format|
      format.html { redirect_to pub_tests_url, notice: 'Pub test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pub_test
      @pub_test = PubTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pub_test_params
      params.require(:pub_test).permit(:url)
    end
end
