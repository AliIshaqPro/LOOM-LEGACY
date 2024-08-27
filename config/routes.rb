Rails.application.routes.draw do
  namespace :admin do
    get 'visits/index'
  end
  resources :admin_panels
  get 'home/index'
  devise_for :receptionists
  devise_for :administrative_assistants
  devise_for :office_managers
  devise_for :demand_planners
  devise_for :inventory_controllers
  devise_for :customer_support_representatives
  devise_for :order_processors
  devise_for :customer_service_managers
  devise_for :safety_officers
  devise_for :environmental_specialists
  devise_for :compliance_managers
  devise_for :distribution_coordinators
  devise_for :warehouse_supervisors
  devise_for :logistics_managers
  devise_for :purchasing_officers
  devise_for :supply_chain_coordinators
  devise_for :procurement_managers
  devise_for :maintenance_technicians
  devise_for :mechanical_engineers
  devise_for :electrical_engineers
  devise_for :maintenance_managers
  devise_for :software_developers
  devise_for :systems_administrators
  devise_for :it_managers
  devise_for :colorists
  devise_for :pattern_makers
  devise_for :cad_designers
  devise_for :textile_designers
  devise_for :research_scientists
  devise_for :textile_technologists
  devise_for :r_and_d_managers
  devise_for :quality_control_inspectors
  devise_for :machine_operators
  devise_for :shift_supervisors
  devise_for :production_planners
  devise_for :production_managers
  devise_for :customer_relations_managers
  devise_for :sales_representatives
  devise_for :marketing_managers
  devise_for :sales_managers
  devise_for :training_and_development_officers
  devise_for :recruitment_specialists
  devise_for :hr_managers
  devise_for :financial_analysts
  devise_for :accountants
  devise_for :cfos
  devise_for :investors
  devise_for :shareholders
  devise_for :directors
  devise_for :board_members
  devise_for :chairmen
  devise_for :ceos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  
  get 'loomlegacies', to: 'loom_legacies#home'
  get 'loomlegacies_login', to: 'loom_legacies#index'
  get 'whatsapp', to: 'whatsapp#index'
  root 'profile#new'
  # get 'departments', to: 'loom_legacies#index'
  #root 'loom_legacies#home'
  #root 'dashboards#board_member'
  
  get 'login', to: "main#index"
  post 'login', to: "main#create"
  
  get 'signup', to: 'signup#index'
  post 'signup', to: 'signup#create' 
  resources :feedbacks, only: [:create]

  get 'forgot', to: 'forgot#index'
  get 'success', to: 'successfull_session#Acct_successfull_sesssion'
  post 'forgot', to: 'forgot#index'
  get 'welcome', to: 'welcome#index'
  
  get 'show', to: 'main#show'
  
  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"
  

  namespace :admin do
    resources :visits, only: [:index]
  end
  

  
  resources :main, only: [:show, :new, :create]
  
  get '/loom_legacies/Production_Department'
  get '/loom_legacies/Quality_Control_and_Assurance'
  get '/loom_legacies/Research_and_Development'
  get '/loom_legacies/Design_Department'
  get '/loom_legacies/Maintenance_Department'
  get '/loom_legacies/Procurement_and_Supply_Chain_Management'
  get '/loom_legacies/Human_Resources_HR'
  get '/loom_legacies/Finance_and_Accounting'
  get '/loom_legacies/Sales_and_Marketing'
  get '/loom_legacies/Information_Technology_IT'
  get '/loom_legacies/Logistics_and_Distribution'
  get '/loom_legacies/Compliance_and_Regulatory_Affairs'
  get '/loom_legacies/Customer_Service'
  get '/loom_legacies/Planning_and_Control'
  get '/loom_legacies/Administration'
  get '/loom_legacies/index'
  get "/loom_legacies/board_members"
  get "/loom_legacies/stake_holders"
  get 'login-ceo', to: 'login_pages#CEO'
  get 'loom_legacies/login-chairman', to: 'login_pages#Chairman'
  get 'loom_legacies/login-bm', to: 'login_pages#BM'
  get 'loom_legacies/login-dir', to: 'login_pages#Dir'
  get 'loom_legacies/login-sh', to: 'login_pages#SH'
  get 'loom_legacies/login-inv', to: 'login_pages#Inv'
  get 'loom_legacies/login-cfo', to: 'login_pages#CFO'
  get 'loom_legacies/login-acct', to: 'login_pages#Acct'
  get 'loom_legacies/login-fa', to: 'login_pages#FA'
  get 'loom_legacies/login-hr_mgr', to: 'login_pages#HR_Mgr'
  get 'loom_legacies/login-recruitment_spclst', to: 'login_pages#Recruitment_Spclst'
  get 'loom_legacies/login-t&d_officer', to: 'login_pages#T&D_Officer'
  get 'loom_legacies/login-sales_mgr', to: 'login_pages#Sales_Mgr'
  get 'loom_legacies/login-mktg_mgr', to: 'login_pages#Mktg_Mgr'
  get 'loom_legacies/login-sales_rep', to: 'login_pages#Sales_Rep'
  get 'loom_legacies/login-crm', to: 'login_pages#CRM'
  get 'loom_legacies/login-prod_mgr', to: 'login_pages#Prod_Mgr'
  get 'loom_legacies/login-prod_planner', to: 'login_pages#Prod_Planner'
  get 'loom_legacies/login-ss', to: 'login_pages#SS'
  get 'loom_legacies/login-mo', to: 'login_pages#MO'
  get 'loom_legacies/login-qci', to: 'login_pages#QCI'
  get 'loom_legacies/login-r&d_mgr', to: 'login_pages#R&D_Mgr'
  get 'loom_legacies/login-tt', to: 'login_pages#TT'
  get 'loom_legacies/login-rs', to: 'login_pages#RS'
  get 'loom_legacies/login-td', to: 'login_pages#TD'
  get 'loom_legacies/login-cad_designer', to: 'login_pages#CAD_Designer'
  get 'loom_legacies/login-pat_maker', to: 'login_pages#Pat_Maker'
  get 'loom_legacies/login-colorist', to: 'login_pages#Colorist'
  get 'loom_legacies/login-it_mgr', to: 'login_pages#IT_Mgr'
  get 'loom_legacies/login-sys_admin', to: 'login_pages#Sys_Admin'
  get 'loom_legacies/login-software_dev', to: 'login_pages#Software_Dev'
  get 'loom_legacies/login-maint_mgr', to: 'login_pages#Maint_Mgr'
  get 'loom_legacies/login-ee', to: 'login_pages#EE'
  get 'loom_legacies/login-me', to: 'login_pages#ME'
  get 'loom_legacies/login-maint_tech', to: 'login_pages#Maint_Tech'
  get 'loom_legacies/login-procurement_mgr', to: 'login_pages#Procurement_Mgr'
  get 'loom_legacies/login-sc_coord', to: 'login_pages#SC_Coord'
  get 'loom_legacies/login-po', to: 'login_pages#PO'
  get 'loom_legacies/login-logistics_mgr', to: 'login_pages#Logistics_Mgr'
  get 'loom_legacies/login-warehouse_supvr', to: 'login_pages#Warehouse_Supvr'
  get 'loom_legacies/login-dist_coord', to: 'login_pages#Dist_Coord'
  get 'loom_legacies/login-compliance_mgr', to: 'login_pages#Compliance_Mgr'
  get 'loom_legacies/login-env_specialist', to: 'login_pages#Env_Specialist'
  get 'loom_legacies/login-safety_off', to: 'login_pages#Safety_Off'
  get 'loom_legacies/login-csm', to: 'login_pages#CSM'
  get 'loom_legacies/login-order_processor', to: 'login_pages#Order_Processor'
  get 'loom_legacies/login-csr', to: 'login_pages#CSR'
  get 'loom_legacies/login-inv_ctrl', to: 'login_pages#Inv_Ctrl'
  get 'loom_legacies/login-demand_planner', to: 'login_pages#Demand_Planner'
  get 'loom_legacies/login-office_mgr', to: 'login_pages#Office_Mgr'
  get 'loom_legacies/login-admin_asst', to: 'login_pages#Admin_Asst'
  get 'loom_legacies/login-receptionist', to: 'login_pages#Receptionist'



  get 'ceo_dashboard', to: 'dashboards#ceo', as: 'ceo_dashboard'
  get 'chairman_dashboard', to: 'dashboards#chairman', as: 'chairman_dashboard'
  get 'board_member_dashboard', to: 'dashboards#board_member', as: 'board_member_dashboard'
  get 'director_dashboard', to: 'dashboards#director', as: 'director_dashboard'
  get 'shareholder_dashboard', to: 'dashboards#shareholder', as: 'shareholder_dashboard'
  get 'investor_dashboard', to: 'dashboards#investor', as: 'investor_dashboard'
  get 'cfo_dashboard', to: 'dashboards#cfo', as: 'cfo_dashboard'
  get 'accountant_dashboard', to: 'dashboards#accountant', as: 'accountant_dashboard'
  get 'financial_analyst_dashboard', to: 'dashboards#financial_analyst', as: 'financial_analyst_dashboard'
  get 'hr_manager_dashboard', to: 'dashboards#hr_manager', as: 'hr_manager_dashboard'
  get 'recruitment_specialist_dashboard', to: 'dashboards#recruitment_specialist', as: 'recruitment_specialist_dashboard'
  get 'training_and_development_officer_dashboard', to: 'dashboards#training_and_development_officer', as: 'training_and_development_officer_dashboard'
  get 'sales_manager_dashboard', to: 'dashboards#sales_manager', as: 'sales_manager_dashboard'
  get 'marketing_manager_dashboard', to: 'dashboards#marketing_manager', as: 'marketing_manager_dashboard'
  get 'sales_representative_dashboard', to: 'dashboards#sales_representative', as: 'sales_representative_dashboard'
  get 'customer_relations_manager_dashboard', to: 'dashboards#customer_relations_manager', as: 'customer_relations_manager_dashboard'
  get 'production_manager_dashboard', to: 'dashboards#production_manager', as: 'production_manager_dashboard'
  get 'production_planner_dashboard', to: 'dashboards#production_planner', as: 'production_planner_dashboard'
  get 'shift_supervisor_dashboard', to: 'dashboards#shift_supervisor', as: 'shift_supervisor_dashboard'
  get 'machine_operator_dashboard', to: 'dashboards#machine_operator', as: 'machine_operator_dashboard'
  get 'quality_control_inspector_dashboard', to: 'dashboards#quality_control_inspector', as: 'quality_control_inspector_dashboard'
  get 'r_and_d_manager_dashboard', to: 'dashboards#r_and_d_manager', as: 'r_and_d_manager_dashboard'
  get 'textile_technologist_dashboard', to: 'dashboards#textile_technologist', as: 'textile_technologist_dashboard'
  get 'research_scientist_dashboard', to: 'dashboards#research_scientist', as: 'research_scientist_dashboard'
  get 'textile_designer_dashboard', to: 'dashboards#textile_designer', as: 'textile_designer_dashboard'
  get 'cad_designer_dashboard', to: 'dashboards#cad_designer', as: 'cad_designer_dashboard'
  get 'pattern_maker_dashboard', to: 'dashboards#pattern_maker', as: 'pattern_maker_dashboard'
  get 'colorist_dashboard', to: 'dashboards#colorist', as: 'colorist_dashboard'
  get 'it_manager_dashboard', to: 'dashboards#it_manager', as: 'it_manager_dashboard'
  get 'systems_administrator_dashboard', to: 'dashboards#systems_administrator', as: 'systems_administrator_dashboard'
  get 'software_developer_dashboard', to: 'dashboards#software_developer', as: 'software_developer_dashboard'
  get 'maintenance_manager_dashboard', to: 'dashboards#maintenance_manager', as: 'maintenance_manager_dashboard'
  get 'electrical_engineer_dashboard', to: 'dashboards#electrical_engineer', as: 'electrical_engineer_dashboard'
  get 'mechanical_engineer_dashboard', to: 'dashboards#mechanical_engineer', as: 'mechanical_engineer_dashboard'
  get 'maintenance_technician_dashboard', to: 'dashboards#maintenance_technician', as: 'maintenance_technician_dashboard'
  get 'procurement_manager_dashboard', to: 'dashboards#procurement_manager', as: 'procurement_manager_dashboard'
  get 'supply_chain_coordinator_dashboard', to: 'dashboards#supply_chain_coordinator', as: 'supply_chain_coordinator_dashboard'
  get 'purchasing_officer_dashboard', to: 'dashboards#purchasing_officer', as: 'purchasing_officer_dashboard'
  get 'logistics_manager_dashboard', to: 'dashboards#logistics_manager', as: 'logistics_manager_dashboard'
  get 'warehouse_supervisor_dashboard', to: 'dashboards#warehouse_supervisor', as: 'warehouse_supervisor_dashboard'
  get 'distribution_coordinator_dashboard', to: 'dashboards#distribution_coordinator', as: 'distribution_coordinator_dashboard'
  get 'compliance_manager_dashboard', to: 'dashboards#compliance_manager', as: 'compliance_manager_dashboard'
  get 'environmental_specialist_dashboard', to: 'dashboards#environmental_specialist', as: 'environmental_specialist_dashboard'
  get 'safety_officer_dashboard', to: 'dashboards#safety_officer', as: 'safety_officer_dashboard'
  get 'customer_service_manager_dashboard', to: 'dashboards#customer_service_manager', as: 'customer_service_manager_dashboard'
  get 'order_processor_dashboard', to: 'dashboards#order_processor', as: 'order_processor_dashboard'
  get 'customer_support_representative_dashboard', to: 'dashboards#customer_support_representative', as: 'customer_support_representative_dashboard'
  get 'inventory_controller_dashboard', to: 'dashboards#inventory_controller', as: 'inventory_controller_dashboard'
  get 'demand_planner_dashboard', to: 'dashboards#demand_planner', as: 'demand_planner_dashboard'
  get 'office_manager_dashboard', to: 'dashboards#office_manager', as: 'office_manager_dashboard'
  get 'administrative_assistant_dashboard', to: 'dashboards#administrative_assistant', as: 'administrative_assistant_dashboard'
  get 'receptionist_dashboard', to: 'dashboards#receptionist', as: 'receptionist_dashboard'
  
end
