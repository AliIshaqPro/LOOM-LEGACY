Rails.application.routes.draw do
 
  namespace :admin do
    get 'visits/index'
  end
  resources :admin_panels
  get 'home/index'

  get 'loomlegacies', to: 'loom_legacies#home'
  get 'loomlegacies_login', to: 'loom_legacies#index'
  get 'whatsapp', to: 'conversations#index'
  get 'chatsphere_welcome', to: 'chatsphere_welcome_page#index'
  get 'smartbank', to: 'smartbank#index'
  get 'tictactoe', to: 'tictactoe#index'
  root 'profile#new'
  # get 'departments', to: 'loom_legacies#index'
  #root 'loom_legacies#home'
  #root 'dashboards#board_member'
  
  resources :conversations, only: [:index, :show, :create] do
    resources :messages, only: [:create]
  end
  
  #root to: 'conversations#index'
  
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
  
  departments = [
  'Production_Department', 'Quality_Control_and_Assurance', 'Research_and_Development',
  'Design_Department', 'Maintenance_Department', 'Procurement_and_Supply_Chain_Management',
  'Human_Resources_HR', 'Finance_and_Accounting', 'Sales_and_Marketing',
  'Information_Technology_IT', 'Logistics_and_Distribution', 'Compliance_and_Regulatory_Affairs',
  'Customer_Service', 'Planning_and_Control', 'Administration'
]

departments.each do |department|
  get "/loom_legacies/#{department}"
end

get '/loom_legacies/index'
get '/loom_legacies/board_members'
get '/loom_legacies/stake_holders'



  roles = [
  'ceo', 'chairman', 'user', 'board_member', 'director', 'shareholder', 'investor', 
  'cfo', 'accountant', 'financial_analyst', 'hr_manager', 'recruitment_specialist', 
  'training_and_development_officer', 'sales_manager', 'marketing_manager', 
  'sales_representative', 'customer_relations_manager', 'production_manager', 
  'production_planner', 'shift_supervisor', 'machine_operator', 
  'quality_control_inspector', 'r_and_d_manager', 'textile_technologist', 
  'research_scientist', 'textile_designer', 'cad_designer', 'pattern_maker', 
  'colorist', 'it_manager', 'systems_administrator', 'software_developer', 
  'maintenance_manager', 'electrical_engineer', 'mechanical_engineer', 
  'maintenance_technician', 'procurement_manager', 'supply_chain_coordinator', 
  'purchasing_officer', 'logistics_manager', 'warehouse_supervisor', 
  'distribution_coordinator', 'compliance_manager', 'environmental_specialist', 
  'safety_officer', 'customer_service_manager', 'order_processor', 
  'customer_support_representative', 'inventory_controller', 
  'demand_planner', 'office_manager', 'administrative_assistant', 'receptionist'
]

roles.each do |role|
  get "#{role}_dashboard", to: "dashboards##{role}", as: "#{role}_dashboard"
end

roles.each do |role|
  devise_for role.to_sym
end

get 'dashboard/edit_user_info', to: 'dashboards#edit_user_info', as: :edit_user_info
patch 'dashboard/update_user_info', to: 'dashboards#update_user_info', as: :update_user_info

get 'conversations/index', to: 'conversations#index', as: :whatsapp_home  

mount ActionCable.server => '/cable'

end
