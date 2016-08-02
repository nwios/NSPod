//
//  NSAudio.m
//  NSPod
//
//  Created by Nawaf Aldosari on 10/28/1437 AH.
//  Copyright © 1437 Nawaf aldosari. All rights reserved.
//

#import "NSAudio.h"

@implementation NSAudio
- (void)initPlayer:(NSString*) audioFile fileExtension:(NSString*)fileExtension{
    NSURL *fileLocation = [[NSBundle mainBundle] URLForResource:audioFile withExtension:fileExtension];
    NSError *error;
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileLocation error:&error];
}

- (void)playAudio{
    [self.audioPlayer play];
}

- (void)pauseAudio{
    [self.audioPlayer pause];
}

- (NSString*)timeFormat:(float)value{
    float minuts = floor(lroundf(value)/60);
    float second = lroundf(value) - (minuts * 60);
    
    float roundSecond = lroundf(second);
    float roundMinuts = lroundf(minuts);
    
    NSString *time = [[NSString alloc] initWithFormat:@"%f:%02f",roundMinuts,roundSecond];
    
    return time;
}

- (void)setCurrentAudioTime:(float)value{
    [self.audioPlayer setCurrentTime:value];
}

- (float)getAudioDuration{
    return [self.audioPlayer duration];
}

- (NSTimeInterval)getCurrentAudioTime{
    return [self.audioPlayer currentTime];
}
@end
