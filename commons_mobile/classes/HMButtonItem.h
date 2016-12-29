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

#import "Dependencies.h"

#import "HMItem.h"
#import "HMImage.h"

/**
 * Represents a clickable visual component.
 */
@interface HMButtonItem : HMItem {
    @private
    HMImage *_iconNormal;
    HMImage *_iconHighlighted;
    BOOL _selectable;
    BOOL _selectableEdit;
    BOOL _selectableName;
    Class _readViewController;
    NSString *_readNibName;
    Class _editViewController;
    NSString *_editNibName;
}

/**
 * The button's icon.
 */
@property (retain) HMImage *iconNormal;

/**
 * The button's icon when it's highlighted.
 */
@property (retain) HMImage *iconHighlighted;

/**
 * Indicates if the button is
 * selectable in the normal mode.
 */
@property (assign) BOOL selectable;

/**
 * Indicates if the button is
 * selectable in the edit mode.
 */
@property (assign) BOOL selectableEdit;

/**
 * Indicates if the name is selectable.
 */
@property (assign) BOOL selectableName;

/**
 * The view controller to use when the
 * item is selected for reading.
 */
@property (assign) Class readViewController;

/**
 * The name of the nib for the view
 * controller that will be used when
 * the item is selected for reading.
 */
@property (retain) NSString *readNibName;

/**
 * The view controller to use when the
 * item is selected for editing.
 */
@property (assign) Class editViewController;

/**
 * The name of the nib for the view
 * controller that will be used when
 * the item is selected for ediiting.
 */
@property (retain) NSString *editNibName;

@end
