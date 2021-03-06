//
//  CardDecks.m
//  SCRUMPlaningPoker
//
//  Created by Junglas Bodo on 30.07.11.
//  Copyright 2011 ObjectCode GmbH. All rights reserved.
//

#import "CardDecks.h"
#import "CardSymbol.h"

@implementation CardDecks

- (id)init
{
    self = [super init];
    if (self) {
        CardSymbol *coffee = [CardSymbol withNamed:@"coffee_mask.png"];
        
        cardDecks = [[NSMutableArray alloc] initWithCapacity:3];

        [cardDecks addObject:[CardDeck 
                              withName:@"Regular"
                              cardValues:[NSArray arrayWithObjects:@"0", @"½", @"1", @"2",
                                          @"3", @"5", @"8", @"13", @"20", @"40", 
                                          @"100", @"∞",@"?", coffee, nil]]];
        [cardDecks addObject:[CardDeck 
                              withName:@"Fibonacci"
                              cardValues:[NSArray arrayWithObjects:@"0", @"½", @"1", @"2",
                                          @"3", @"5", @"8", @"13", @"21", @"34", @"55", 
                                          @"89", @"∞",@"?", coffee, nil]]];
        [cardDecks addObject:[CardDeck 
                              withName:@"Dublex"
                              cardValues:[NSArray arrayWithObjects:@"0", @"½", @"1", @"2",
                                          @"4", @"8", @"16", @"32", @"64", @"128", 
                                          @"∞",@"?", coffee, nil]]];
    }
    
    return self;
}

- (void)dealloc
{
    [cardDecks release];
    [super dealloc];
}

- (NSInteger)numberOfDecks
{
    return cardDecks.count;
}

- (CardDeck *)deckByIndex:(NSInteger)index
{
    return [cardDecks objectAtIndex:index];
}

@end
