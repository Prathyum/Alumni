class FormsController < ApplicationController
  before_action :set_form, only: [:index, :show, :edit, :update,:destroy]
  before_action :authenticate_student!

  # GET /forms
  # GET /forms.json
  def index
    @form = Form.all
     
    #     return
 end
  # GET /forms/1
  # GET /forms/1.jsonxc
  def show

  end

  # GET /forms/new
  def new
    @form=Form.new
 end

  # GET /forms/1/edit
  def edit
     @form = Form.find(params[:id])
    # @student=Student.find(params[:id])
  end

  # POST /forms
  # POST /forms.json
  def create
  
     @form = Form.new(form_params)
      @form.student_id= current_student.id

    respond_to do |format|
      if @form.save(form_params)
        
        format.html{redirect_to @form, notice: ''}                                                                                
         format.json { render :show, status: :created, location: @form }

      else
        format.html { render :new }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forms/1
  # PATCH/PUT /forms/1.json
  def update
    respond_to do |format|
      if @form.update(form_params)
        format.html { redirect_to @form, notice: 'Form was successfully updated.' }
        format.json { render :show, status: :ok, location: @form }
      else
        format.html { render :edit }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/1
  # DELETE /forms/1.json
  def destroy
    @form.destroy
    respond_to do |format|
      format.html { redirect_to forms_url, notice: 'Form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form
      @form = Form.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_params
       params.require(:form).permit(:current, :is_placed,:address, :fieldofwork,:comname,:country_code,:comaddr, :desig, :exp, :abroad, :univ, :course, :mobile, :curmail, :linked_id, :areaofinterset, :contribute,:entdesignation,:entcompany,:workmail, :workfield, :govtsector,:otherfield,:othercompany, :Field,:otherdesignation, :courseducation,:website,:govtdesig,:govtadd,:govtphone,:noofemployees,:annualturnover,:expyear,:otheraddress, :univaddr, :courseduration, :entcity,:entstate,:entstreet,:entapt,:entzip,:univapt,:univcity,:univstreet,:univstate,:univzip,:workapt,:workstreet,:workcity,:workstate,:workzip,:govtapt,:govtstate,:govtstreet,:govtZip,:govtcity,:conutry,:workcountry,:govtcountry,:entcountry,:highercountry,:othercountry,:apt,:street,:State,:City,:Zip,:major)
    end
end
