# NKAVPlayer

# iOS视频播放总结：记一篇AVPlayer
---
iOS已经提供了一些视频播放的API，封装性很强，使用上也比较方便，但是自定制UI比较困难，自由度比较低：
* MPMoviePlayerController
* AVPictureInPictureController

所以我们自己用AVPlayer实现一些视频播放的定制开发。AVPlayer属于AVFoundation框架，可以播放视频、音频，支持本地、网络视频源，相对来说更加接近底层。

# 实现视频播放
AVFoundtion 框架中主要使用 AVAsset 类来展示媒体信息，了解几个常用类：
1、AVAsset：AVAsset类专门用于获取多媒体的相关信息,包括获取多媒体的画面、声音等信息，属于一个抽象类，不能直接使用。
2、AVURLAsset：AVAsset的子类，可以根据一个URL路径创建一个包含媒体信息的AVURLAsset对象。
3、AVPlayerItem：一个媒体资源管理对象，管理者视频的一些基本信息和状态，一个AVPlayerItem对应着一个视频资源。

在AVPlayer实现视频播放的开发中，AVPlayerLayer 显示视频，AVPlayerItem 提供视频信息， AVPlayer 管理和调控.

AVPlayer 本身并不能显示视频， 显示视频的是 AVPlayerLayer。 AVPlayerLayer 继承自 CALayer。

# 视频播放
```
- (void)viewDidLoad {
[super viewDidLoad];

CGFloat palyerW = [UIScreen mainScreen].bounds.size.width;
NKAVPlayerView *playerView = [[NKAVPlayerView alloc] init];
playerView.frame = CGRectMake(0, 0, palyerW, palyerW / 7 * 4);

[self.view addSubview:playerView];
NSString *moviePath = [[NSBundle mainBundle] pathForResource:@"movie" ofType:@"mp4"];
[playerView settingPlayerItemWithUrl:[NSURL fileURLWithPath:moviePath]];
}
```
这样视频播放就完成，附上运行效果：
![视频播放](https://upload-images.jianshu.io/upload_images/1721864-89b8483faad431c0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)

# 上线APP：
<img src="https://upload-images.jianshu.io/upload_images/1721864-0feb4befb2dddb9f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240" width="60px" height="60px">
<a href="https://itunes.apple.com/cn/app/我的超级文件/id1397704011?mt=8">我的超级文件</a>

# 其他：
* 自由开发者交流群：811483008
* 附上：[简书](https://www.jianshu.com/p/299906d4054d)
