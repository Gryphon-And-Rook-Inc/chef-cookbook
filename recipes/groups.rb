users_manage "deployer" do
  group_id 2301
  action [ :remove, :create ]
end

group "rbenv" do
  members ['rbenv']
  action [ :create ]
end
