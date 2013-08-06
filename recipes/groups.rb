include_recipe "users"

users_manage "deployer" do
  group_id 2301
  action [ :remove, :create ]
end
