//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISBlackjackPlayer.h"
#import "FISCardDeck.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISBlackjackPlayer *eldon = [[FISBlackjackPlayer alloc]initWithName:@"Eldon"];
    FISCardDeck *newCard = [[FISCardDeck alloc]init];
    FISCard *card = [newCard drawNextCard];
    [eldon acceptCard:card];
    NSLog(@"%@", eldon.description);
    
    return YES;
}

@end
