//
//  ViewController.m
//  项目中的常见文件
//
//  Created by 赵鹏 on 2018/9/15.
//  Copyright © 2018年 赵鹏. All rights reserved.
//

/**
 Info.plist文件中一开始本没有"Bundle display name"键的，要想设置APP在手机上面显示的名称的话就应该在TARGETS中的General中的Identity中的Display Name中进行更改，更改之后Info.plist文件中就会新增加"Bundle display name"键，而"Bundle display name"键所对应的值也会自动进行更新与Display Name中的保持相同。上述的两处更改其中的一处则另一处会自动进行更新，使两处的值保持相同；
 APP的名称不能超过12个字符（6个汉字），也即手机上面显示的APP的名称最多显示6个汉字，如果多余6个汉字的话就显示前五个汉字，后面的用"..."来表示；
 Info.plist文件里面的"Bundle versions string, short"键所对应的值是指每次提交App Store进行审核时的版本号，是即将发布的新版本的版本号。每次提交审核时的这个版本号一定要比上一次提交时的版本号要大，如果小于或等于上一次提交的版本号的话则App Store不能审核通过。Info.plist文件里面的"Bundle versions string, short"键所对应的值与TARGETS中的General中的Identity中的Version里面的值保持相同。上述的两处中更改其中的一处则另一处也会自动进行更新，使二者保持相同；
 Info.plist文件里面的"Bundle version"键所对应的值是提交审核之前把项目打包成.ipa文件的次数，每打包一次这个值就要加1。Info.plist文件里面的"Bundle version"键所对应的值与TARGETS中的General中的Identity中的Build里面的值保持相同。上述的两处中更改其中的一处则另一处也会自动更新，使二者保持相同。
 */
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     获取当前的版本号：
     下面代码中的[[NSBundle mainBundle].infoDictionary就代表Info.plist文件所对应的字典。把Info.plist文件用Source Code的方式打开就可以看到这个字典的key和value值了。
     */
    NSString *version = [[NSBundle mainBundle].infoDictionary objectForKey:@"CFBundleShortVersionString"];
    ZPLog(@"current version = %@", version);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
