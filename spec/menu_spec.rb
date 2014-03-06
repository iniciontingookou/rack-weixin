# # -*- encoding : utf-8 -*-
# require 'rspec'
# require 'multi_json'
# require 'weixin/api'
# require 'weixin/menu'

# describe "Weixin::Menu" do

#     before(:all) do
#         @menu = Weixin::Menu.new('your_weixin_app_key', 'your_weixin_app_secret')
#     end

#     def menu
#         @menu
#     end

#     it 'create or add' do
#   		menu_string = <<STRING
# {
#      "button":[
#      {  
#           "type":"click",
#           "name":"今日歌曲",
#           "key":"V1001_TODAY_MUSIC"
#       },
#       {
#            "type":"click",
#            "name":"歌手简介",
#            "key":"V1001_TODAY_SINGER"
#       },
#       {
#            "name":"菜单",
#            "sub_button":[
#            {  
#                "type":"view",
#                "name":"搜索",
#                "url":"http://www.soso.com/"
#             },
#             {
#                "type":"view",
#                "name":"视频",
#                "url":"http://v.qq.com/"
#             },
#             {
#                "type":"click",
#                "name":"赞一下我们",
#                "key":"V1001_GOOD"
#             }]
#        }]
# }
# STRING

# 		menu_hash = MultiJson.load(menu_string)

# 		menu.add(menu_hash).should be_true

# 		menu_hash = {"button"=>[{"type"=>"click", "name"=>"今日歌曲", "key"=>"V1001_TODAY_MUSIC"}, {"type"=>"click", "name"=>"歌手简介", "key"=>"V1001_TODAY_SINGER"}, {"name"=>"菜单", "sub_button"=>[{"type"=>"view", "name"=>"搜索", "url"=>"http://www.soso.com/"}, {"type"=>"view", "name"=>"视频", "url"=>"http://v.qq.com/"}, {"type"=>"click", "name"=>"赞一下我们", "key"=>"V1001_GOOD"}]}]} 

# 		menu.add(menu_hash).should be_true
#     end

# end
