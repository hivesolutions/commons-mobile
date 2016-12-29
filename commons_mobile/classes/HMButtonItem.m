// Hive Mobile
// Copyright (c) 2008-2017 Hive Solutions Lda.
//
// This file is part of Hive Mobile.
//
// Hive Mobile is free software: you can redistribute it and/or modify
// it under the terms of the Apache License as published by the Apache
// Foundation, either version 2.0 of the License, or (at your option) any
// later version.
//
// Hive Mobile is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// Apache License for more details.
//
// You should have received a copy of the Apache License along with
// Hive Mobile. If not, see <http://www.apache.org/licenses/>.

// __author__    = João Magalhães <joamag@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision$
// __date__      = $LastChangedDate$
// __copyright__ = Copyright (c) 2008-2017 Hive Solutions Lda.
// __license__   = Apache License, Version 2.0

#import "HMButtonItem.h"

@implementation HMButtonItem

@synthesize iconNormal = _iconNormal;
@synthesize iconHighlighted = _iconHighlighted;
@synthesize selectable = _selectable;
@synthesize selectableEdit = _selectableEdit;
@synthesize selectableName = _selectableName;
@synthesize readViewController = _readViewController;
@synthesize readNibName = _readNibName;
@synthesize editViewController = _editViewController;
@synthesize editNibName = _editNibName;

- (void)dealloc {
    // releases the normal icon
    [_iconNormal release];

    // releases the highlighted icon
    [_iconHighlighted release];

    // releases the read nib name
    [_readNibName release];

    // releases the edit nib name
    [_editNibName release];

    // calls the super
    [super dealloc];
}

- (void)initStructures {
    // calls the super
    [super initStructures];

    // sets the default attributes
    self.selectable = YES;
    self.selectableEdit = NO;
    self.selectableName = NO;
}

@end
