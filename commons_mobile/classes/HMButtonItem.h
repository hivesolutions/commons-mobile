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

// __author__    = João Magalhães <joamag@hive.pt> & Tiago Silva <tsilva@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision: 2390 $
// __date__      = $LastChangedDate: 2009-04-02 08:36:50 +0100 (qui, 02 Abr 2009) $
// __copyright__ = Copyright (c) 2008 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

#import "Dependencies.h"

#import "HMItem.h"
#import "HMImage.h"

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
 * The icon to be drawn in the button.
 */
@property (retain) HMImage *iconNormal;

/**
 * The color for highlighted button.
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
