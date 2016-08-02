//
//  NSAudio.h
//  NSPod
//
//  Created by Nawaf Aldosari on 10/28/1437 AH.
//  Copyright © 1437 Nawaf aldosari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface NSAudio : NSObject

@property (nonatomic, retain) AVAudioPlayer *audioPlayer;

- (void)initPlayer:(NSString*) audioFile fileExtension:(NSString*)fileExtension;
- (void)playAudio;
- (void)pauseAudio;
- (void)setCurrentAudioTime:(float)value;
- (float)getAudioDuration;
- (NSString*)timeFormat:(float)value;
- (NSTimeInterval)getCurrentAudioTime;
@end
