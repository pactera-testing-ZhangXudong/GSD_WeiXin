opt_out_usage
# This file contains the fastlane.tools configuration
# You can find the documentation at https://docs.fastlane.tools
#
# For a list of all available actions, check out
#
#     https://docs.fastlane.tools/actions
#
# For a list of all available plugins, check out
#
#     https://docs.fastlane.tools/plugins/available-plugins
#

# Uncomment the line if you want fastlane to automatically update itself
# update_fastlane

# 定义fastlane版本号
fastlane_version "2.170.0"
# 定义打包平台
default_platform :ios


# 默认内测打包方式，目前支持app-store, package, ad-hoc, enterprise, development
# 注:由于如果使用手动配置证书，在export_options指定打包方式！
ipa_exportMethod = "ad-hoc"
# .ipa文件输出路径
ipa_outputDirectory = "~/Desktop/fastlaneBuild"


# 计算buildNumber
def updateProjectBuildNumber
    currentTime = Time.new.strftime("%Y%m%d")
    build = get_build_number()
    if build.include?"#{currentTime}."
    # => 为当天版本 计算迭代版本号
    lastStr = build[build.length-2..build.length-1]
    lastNum = lastStr.to_i
    lastNum = lastNum + 1
    lastStr = lastNum.to_s
    if lastNum < 10
    lastStr = lastStr.insert(0,"0")
    end
    build = "#{currentTime}.#{lastStr}"
    else
    # => 非当天版本 build 号重置
    build = "#{currentTime}.01"
    end
    puts("*************| 更新build #{build} |*************")
    # => 更改项目 build 号
    increment_build_number(
        build_number: "#{build}"
    )
end


# 所有任务脚本
platform :ios do

    # ----------------------- 打包内测.ipa文件 -----------------------
    lane :ad do|options|
    branch = options[:branch]

        puts "*************| 开始打包.ipa文件... |*************"

        # 更新项目build号
        updateProjectBuildNumber

        # 开始打包
        gym(
            # 指定输出的ipa名称
            output_name:"#{project_ad_scheme}_#{get_build_number()}",
            # 指定项目的scheme
            scheme:"#{project_ad_scheme}",
            # 是否清空以前的编译信息 true：是
            clean:true,
            # 指定打包方式，Release 或者 Debug
            configuration:"Release",
            # 指定打包方式，目前支持app-store, package, ad-hoc, enterprise, development
            # 注:由于使用手动配置证书，在export_options指定打包方式
            #export_method:"#{ipa_exportMethod}",
            # 指定输出文件夹
            output_directory:"#{ipa_outputDirectory}",
            # Xcode9将不会允许你访问钥匙串里的内容，除非设置allowProvisioningUpdates
            export_xcargs:"-allowProvisioningUpdates",
            # 隐藏没有必要的信息
            silent:true,
            # 手动配置证书,注意打包方式需在export_options内使用method设置，不可使用export_method
            export_options: {
                method:"#{ipa_exportMethod}",
                provisioningProfiles: {
                    "#{project_identifier}":"#{project_ad_provisioningProfiles}"
                },
            }
        )
        puts "*************| 开始上传蒲公英... |*************"
        # 开始上传蒲公英
        pgyer(api_key: "#{pgyer_apiKey}", user_key: "#{pgyer_userkey}")
        puts "*************| 上传蒲公英成功🎉 |*************"
    end

    # ----------------------- 上传AppStore -----------------------
    lane :release do

        puts "*************| 开始上传AppStore... |*************"

        # 更新项目build号
        updateProjectBuildNumber

        gym(
            # 指定输出的ipa名称
            output_name:"#{project_release_scheme}_#{get_build_number()}",
            # 指定项目的scheme
            scheme:"#{project_release_scheme}",
            # 是否清空以前的编译信息 true：是
            clean:true,
            # 指定打包方式，Release 或者 Debug
            configuration:"Release",
            # 指定打包方式，目前支持app-store, package, ad-hoc, enterprise, development
            # 注:由于使用手动配置证书，在export_options指定打包方式
            #export_method:"#{app-store}",
            # 指定输出文件夹
            output_directory:"#{ipa_outputDirectory}",
            # Xcode9将不会允许你访问钥匙串里的内容，除非设置allowProvisioningUpdates
            export_xcargs:"-allowProvisioningUpdates",
            # 隐藏没有必要的信息
            silent:true,
            # 手动配置证书,注意打包方式需在export_options内使用method设置，不可使用export_method
            export_options: {
                method:"app-store",
                provisioningProfiles: {
                    "#{project_identifier}":"#{project_release_provisioningProfiles}"
                },
            }
         )
        deliver(
                # 选择跳过图片和元数据上传，自己去配置
                skip_screenshots:true,
                skip_metadata:true,
                # 上传所有信息到App Store
                force:true,
                )
        puts "*************| 上传AppStore成功🎉 |*************"
        #发布testflight测试
        # pilot
    end

end