#import "Robot.h"

@implementation Robot

- (instancetype)initWithX:(NSInteger)x y:(NSInteger)y name:(NSString *)name {
    self = [super init];
    if (self) {
        _x = x;
        _y = y;
        _name = [name copy];
    }
    return self;
}

@end