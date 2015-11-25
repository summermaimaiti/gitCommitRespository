
BlockStudyDemo
===
- 一个简单的block（高级用法）正反传值Demo

GitHub：[CoderCWLiu](https://github.com/summermaimaiti)


## Contents
* [Getting Started 【开始建立两个类文件】](#Getting_Started)
* [Examples 【示例】](#Examples)

# <a id="Examples"></a> Examples【示例】

### <a id="BlockStudyDemo"></a> The most simple BlockStudyDemo -> Block【最简单的block传值demo】

### 创建一个类ViewController，ViewController.m 文件中源码如下

```objc

@interface ViewController ()
{
NextViewController *next;
}
@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
[super viewDidAppear:animated];
}

- (void)viewDidLoad {
[super viewDidLoad];

next = [[NextViewController alloc] init];
[next logBlock:^(id paramga) {

NSLog(@"%@",paramga);
}];

next.backBlock = ^(id arr){

NSLog(@"%@",arr);
};

}


- (IBAction)btnActionClick:(id)sender {

[self presentViewController:next animated:YES completion:^{
}];
}
```

### 创建一个类NextViewController，NextViewController.h 文件中源码如下

```objc

@interface NextViewController : UIViewController

@property (nonatomic, copy) void (^backBlock) (id arr);

@end
```

### NextViewController.m 文件中源码如下

```objc
@interface NextViewController ()
{
ViewController *vc;
}
@end

@implementation NextViewController

- (void)viewDidLoad {

[super viewDidLoad];
// Do any additional setup after loading the view.

UIButton *submitBtn = [UIButton buttonWithType:UIButtonTypeCustom];
submitBtn.frame = CGRectMake(20, 200, 200, 40);
submitBtn.backgroundColor = [UIColor greenColor];
[submitBtn setTitle:@"提交" forState:UIControlStateNormal];
[submitBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
[submitBtn addTarget:self action:@selector(submitBtn) forControlEvents:UIControlEventTouchUpInside];
[self.view addSubview:submitBtn];

vc = [[ViewController alloc] init];
}

- (void)submitBtn
{
[self dismissViewControllerAnimated:YES completion:^{

NSArray *arr = @[@"four",
@"five",
@"six"];
self.backBlock(arr);
}];

}
```

## 期待
* 如果在使用过程中遇到BUG，希望你能Issues我，谢谢（或者尝试下载最新的Demo代码看看BUG修复没有）
* 这是第一次用markDown写README.md,有什么小差可不许取笑哦！
* 如果你想为BlockStudyDemo输出代码，请拼命Pull Requests我
