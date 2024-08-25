#import <Foundation/Foundation.h>

@interface Robot : NSObject

@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;
@property (nonatomic, copy) NSString *name;

- (instancetype)initWithX:(NSInteger)x y:(NSInteger)y name:(NSString *)name;

@end