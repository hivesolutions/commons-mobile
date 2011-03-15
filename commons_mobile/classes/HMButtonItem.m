// Hive Mobile
// Copyright (C) 2008 Hive Solutions Lda.
//
// This file is part of Hive Mobile.
//
// Hive Mobile is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Hive Mobile is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Hive Mobile. If not, see <http://www.gnu.org/licenses/>.

// __author__    = João Magalhães <joamag@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision: 2390 $
// __date__      = $LastChangedDate: 2009-04-02 08:36:50 +0100 (qui, 02 Abr 2009) $
// __copyright__ = Copyright (c) 2008 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

#import "HMButtonItem.h"

@implementation HMButtonItem

@synthesize accessoryType = _accessoryType;
@synthesize accessoryView = _accessoryView;
@synthesize icon = _icon;
@synthesize scope = _scope; 
@synthesize handler = _handler;

- (id)init {
    // invokes the parent constructor
    self = [super init];
    
    // returns the instance
    return self;
}

- (id)initWithName:(NSString *)name icon:(NSString *)icon accessoryType:(int)accessoryType accessoryView:(UIView *)accessoryView scope:(id)scope handler:(SEL)handler {
    // invokes the parent constructor
    self = [super initWithName:name];
    
    // sets the attributes 
    self.accessoryType = accessoryType; 
    self.accessoryView = accessoryView;
    self.icon = icon;
    self.scope = scope;
    self.handler = handler;
    
    // returns the instance
    return self;
}

@end