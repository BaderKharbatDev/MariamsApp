//
//  ViewController.m
//  Mariam SoundBoard
//
//  Created by Bader on 6/18/20.
//  Copyright © 2020 Totem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *b1;
@property (strong, nonatomic) IBOutlet UIButton *b2;
@property (strong, nonatomic) IBOutlet UIButton *b3;
@property (strong, nonatomic) IBOutlet UIButton *b4;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    // Do any additional setup after loading the view, typically from a nib.
    NSString *path1 = [NSString stringWithFormat:@"%@/mad.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl1 = [NSURL fileURLWithPath:path1];
    NSString *path2 = [NSString stringWithFormat:@"%@/baby.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl2 = [NSURL fileURLWithPath:path2];
    NSString *path3 = [NSString stringWithFormat:@"%@/graduate.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl3 = [NSURL fileURLWithPath:path3];
    NSString *path4 = [NSString stringWithFormat:@"%@/hate.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl4 = [NSURL fileURLWithPath:path4];

    NSError *error;
    self.audioPlayer1 = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl1 error:&error];
    self.audioPlayer2 = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl2 error:&error];
    self.audioPlayer3 = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl3 error:&error];
    self.audioPlayer4 = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl4 error:&error];

    [_audioPlayer1 prepareToPlay];
    [_audioPlayer2 prepareToPlay];
    [_audioPlayer3 prepareToPlay];
    [_audioPlayer4 prepareToPlay];

}

- (IBAction)button1Pressed:(UIButton *)sender {
    [self.audioPlayer1 play];
}

- (IBAction)button2Pressed:(UIButton *)sender {
    [self.audioPlayer2 play];
}

- (IBAction)button3Pressed:(id)sender {
    [self.audioPlayer3 play];
}

- (IBAction)button4Pressed:(id)sender {
    [self.audioPlayer4 play];
}




@end
