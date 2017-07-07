require 'test_helper'

class FormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @form = forms(:one)
  end

  test "should get index" do
    get forms_url
    assert_response :success
  end

  test "should get new" do
    get new_form_url
    assert_response :success
  end

  test "should create form" do
    assert_difference('Form.count') do
      post forms_url, params: { form: { abroad: @form.abroad, areaofinterset: @form.areaofinterset, comaddr: @form.comaddr, commun: @form.commun, comname: @form.comname, contribute: @form.contribute, course: @form.course, curmail: @form.curmail, current: @form.current, desig: @form.desig, exp: @form.exp, is_placed: @form.is_placed, linked_id: @form.linked_id, mobile: @form.mobile, staraddr: @form.staraddr, starcompany: @form.starcompany, univ: @form.univ } }
    end

    assert_redirected_to form_url(Form.last)
  end

  test "should show form" do
    get form_url(@form)
    assert_response :success
  end

  test "should get edit" do
    get edit_form_url(@form)
    assert_response :success
  end

  test "should update form" do
    patch form_url(@form), params: { form: { abroad: @form.abroad, areaofinterset: @form.areaofinterset, comaddr: @form.comaddr, commun: @form.commun, comname: @form.comname, contribute: @form.contribute, course: @form.course, curmail: @form.curmail, current: @form.current, desig: @form.desig, exp: @form.exp, is_placed: @form.is_placed, linked_id: @form.linked_id, mobile: @form.mobile, staraddr: @form.staraddr, starcompany: @form.starcompany, univ: @form.univ } }
    assert_redirected_to form_url(@form)
  end

  test "should destroy form" do
    assert_difference('Form.count', -1) do
      delete form_url(@form)
    end

    assert_redirected_to forms_url
  end
end
