class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_cache_buster

  # Redirect users after sign in
  def after_sign_in_path_for(resource)
    case resource
    when Ceo
      ceo_dashboard_path
    when User
      if resource.username.present? && resource.photo.present? && resource.phone_number.present?
        conversations_path
      else
        edit_user_info_path
      end
    when Chairman
      chairman_dashboard_path
    when BoardMember
      board_member_dashboard_path
    when Director
      director_dashboard_path
    when Shareholder
      shareholder_dashboard_path
    when Investor
      investor_dashboard_path
    when Cfo
      cfo_dashboard_path
    when Accountant
      accountant_dashboard_path
    when FinancialAnalyst
      financial_analyst_dashboard_path
    when HrManager
      hr_manager_dashboard_path
    when RecruitmentSpecialist
      recruitment_specialist_dashboard_path
    when TrainingAndDevelopmentOfficer
      training_and_development_officer_dashboard_path
    when SalesManager
      sales_manager_dashboard_path
    when MarketingManager
      marketing_manager_dashboard_path
    when SalesRepresentative
      sales_representative_dashboard_path
    when CustomerRelationsManager
      customer_relations_manager_dashboard_path
    when ProductionManager
      production_manager_dashboard_path
    when ProductionPlanner
      production_planner_dashboard_path
    when ShiftSupervisor
      shift_supervisor_dashboard_path
    when MachineOperator
      machine_operator_dashboard_path
    when QualityControlInspector
      quality_control_inspector_dashboard_path
    when RAndDManager
      r_and_d_manager_dashboard_path
    when TextileTechnologist
      textile_technologist_dashboard_path
    when ResearchScientist
      research_scientist_dashboard_path
    when TextileDesigner
      textile_designer_dashboard_path
    when CadDesigner
      cad_designer_dashboard_path
    when PatternMaker
      pattern_maker_dashboard_path
    when Colorist
      colorist_dashboard_path
    when ItManager
      it_manager_dashboard_path
    when SystemsAdministrator
      systems_administrator_dashboard_path
    when SoftwareDeveloper
      software_developer_dashboard_path
    when MaintenanceManager
      maintenance_manager_dashboard_path
    when ElectricalEngineer
      electrical_engineer_dashboard_path
    when MechanicalEngineer
      mechanical_engineer_dashboard_path
    when MaintenanceTechnician
      maintenance_technician_dashboard_path
    when ProcurementManager
      procurement_manager_dashboard_path
    when SupplyChainCoordinator
      supply_chain_coordinator_dashboard_path
    when PurchasingOfficer
      purchasing_officer_dashboard_path
    when LogisticsManager
      logistics_manager_dashboard_path
    when WarehouseSupervisor
      warehouse_supervisor_dashboard_path
    when DistributionCoordinator
      distribution_coordinator_dashboard_path
    when ComplianceManager
      compliance_manager_dashboard_path
    when EnvironmentalSpecialist
      environmental_specialist_dashboard_path
    when SafetyOfficer
      safety_officer_dashboard_path
    when CustomerServiceManager
      customer_service_manager_dashboard_path
    when OrderProcessor
      order_processor_dashboard_path
    when CustomerSupportRepresentative
      customer_support_representative_dashboard_path
    when InventoryController
      inventory_controller_dashboard_path
    when DemandPlanner
      demand_planner_dashboard_path
    when OfficeManager
      office_manager_dashboard_path
    when AdministrativeAssistant
      administrative_assistant_dashboard_path
    when Receptionist
      receptionist_dashboard_path
    else
      super
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:photo])
    devise_parameter_sanitizer.permit(:account_update, keys: [:photo])
  end

  private

  def set_cache_buster
    response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end

  def expire_user_session
    if ceo_signed_out? || chairman_signed_out? || board_member_signed_out? || director_signed_out? || shareholder_signed_out? || investor_signed_out? || cfo_signed_out? || accountant_signed_out? || financial_analyst_signed_out? || hr_manager_signed_out? || recruitment_specialist_signed_out? || training_and_development_officer_signed_out? || sales_manager_signed_out? || marketing_manager_signed_out? || sales_representative_signed_out? || customer_relations_manager_signed_out? || production_manager_signed_out? || production_planner_signed_out? || shift_supervisor_signed_out? || machine_operator_signed_out? || quality_control_inspector_signed_out? || r_and_d_manager_signed_out? || textile_technologist_signed_out? || research_scientist_signed_out? || textile_designer_signed_out? || cad_designer_signed_out? || pattern_maker_signed_out? || colorist_signed_out? || it_manager_signed_out? || systems_administrator_signed_out? || software_developer_signed_out? || maintenance_manager_signed_out? || electrical_engineer_signed_out? || mechanical_engineer_signed_out? || maintenance_technician_signed_out? || procurement_manager_signed_out? || supply_chain_coordinator_signed_out? || purchasing_officer_signed_out? || logistics_manager_signed_out? || warehouse_supervisor_signed_out? || distribution_coordinator_signed_out? || compliance_manager_signed_out? || environmental_specialist_signed_out? || safety_officer_signed_out? || customer_service_manager_signed_out? || order_processor_signed_out? || customer_support_representative_signed_out? || inventory_controller_signed_out? || demand_planner_signed_out? || office_manager_signed_out? || administrative_assistant_signed_out? || receptionist_signed_out?
      reset_session
    end
  end
end
