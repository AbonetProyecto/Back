Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :abogados, :criticas, :usuarios, :telefonos, :direccions
    end
  end

end
