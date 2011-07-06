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

// __author__    = Tiago Silva <tsilva@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision: 2390 $
// __date__      = $LastChangedDate: 2009-04-02 08:36:50 +0100 (qui, 02 Abr 2009) $
// __copyright__ = Copyright (c) 2008 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

#import "HMTableCellItem.h"

@implementation HMTableCellItem

@synthesize accessory = _accessory;
@synthesize indentable = _indentable;
@synthesize clearable = _clearable;
@synthesize insertableRow = _insertableRow;
@synthesize deletableRow = _deletableRow;
@synthesize deleteActionType = _deleteActionType;

- (void)dealloc {
    // releases the acessory
    [_accessory release];

    // calls the super
    [super dealloc];
}

- (void)initStructures {
    // calls the super
    [super initStructures];

    // sets the default attributes
    self.selectable = NO;
    self.selectableEdit = NO;
    self.indentable = NO;
    self.clearable = NO;
    self.insertableRow = NO;
    self.deletableRow = NO;
    self.deleteActionType = HMTableCellItemDeleteActionTypeNone;
}

- (UIView *)generateComponent {
    // creates the cell identifier
    static NSString *cellIdentifier = @"Cell";

    // creates the table view cell
    HMTableViewCell *component = [[[HMTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier] autorelease];

    // initializes the alignments
    UITextAlignment nameAlignment = UITextAlignmentLeft;
    UITextAlignment descriptionAlignment = UITextAlignmentLeft;

    // for each name alignment
    switch (self.nameAlignment) {
        // in case the alignment is to the left
        case HMTextAlignmentLeft:
            // sets the alignment to the left
            nameAlignment = UITextAlignmentLeft;

            // breaks
            break;

        // in case the alignment is to the right
        case HMTextAlignmentRight:
            // sets the alignment to the right
            nameAlignment = UITextAlignmentRight;

            // breaks
            break;

        // in case the alignment is to the center
        case HMTextAlignmentCenter:
            // sets the alignment to the center
            nameAlignment = UITextAlignmentCenter;

            // breaks
            break;
    }

    // for each name alignment
    switch (self.descriptionAlignment) {
            // in case the alignment is to the left
        case HMTextAlignmentLeft:
            // sets the alignment to the left
            descriptionAlignment = UITextAlignmentLeft;

            // breaks
            break;

            // in case the alignment is to the right
        case HMTextAlignmentRight:
            // sets the alignment to the right
            descriptionAlignment = UITextAlignmentRight;

            // breaks
            break;

            // in case the alignment is to the center
        case HMTextAlignmentCenter:
            // sets the alignment to the center
            descriptionAlignment = UITextAlignmentCenter;

            // breaks
            break;
    }

    // initializes the converted background color arrays
    NSMutableArray *convertedBackgroundColors = [[NSMutableArray alloc] init];
    NSMutableArray *convertedSelectedBackgroundColors = [[NSMutableArray alloc] init];

    // converts the background colors
    for(HMColor *backgroundColor in self.backgroundColors) {
        [convertedBackgroundColors addObject:backgroundColor.UIColor];
    }

    // converts the selected background colors
    for(HMColor *selectedBackgroundColor in self.selectedBackgroundColors) {
        [convertedSelectedBackgroundColors addObject:selectedBackgroundColor.UIColor];
    }

    // sets the cell's attributes
    component.item = self;
    component.data = self.data;
    component.height = self.height;
    component.name = self.name;
    component.nameFont = self.nameFont.UIFont;
    component.nameColor = self.nameColor.UIColor;
    component.nameAlignment = nameAlignment;
    component.description = self.description;
    component.descriptionFont = self.descriptionFont.UIFont;
    component.descriptionColor = self.descriptionColor.UIColor;
    component.descriptionAlignment = descriptionAlignment;
    component.borderColor = self.borderColor.UIColor;
    component.selectedBorderColor = self.selectedBorderColor.UIColor;
    component.backgroundColors = convertedBackgroundColors;
    component.selectedBackgroundColors = convertedSelectedBackgroundColors;
    component.selectable = self.selectable;
    component.selectableName = self.selectableName;
    component.insertableRow = self.insertableRow;
    component.deletableRow = self.deletableRow;
    component.imageView.image = self.icon.UIImage;
    component.imageView.highlightedImage = self.highlightedIcon.UIImage;

    // in case the name position is not defined
    if(self.namePosition) {
        // retrieves the name position
        CGPoint namePosition = self.namePosition.CGPoint;

        // creates a value with the name position
        NSValue *namePositionValue = [NSValue valueWithCGPoint:namePosition];

        // sets the name position in the component
        component.namePosition = namePositionValue;
    }

    // in case the description position is not defined
    if(self.descriptionPosition) {
        // retrieves the description position
        CGPoint descriptionPosition = self.descriptionPosition.CGPoint;

        // creates a value with the description position
        NSValue *descriptionPositionValue = [NSValue valueWithCGPoint:descriptionPosition];

        // sets thedescriptionname position in the component
        component.descriptionPosition = descriptionPositionValue;
    }

    // in case the accessory is defined
    if(self.accessory) {
        // generates the accessory view
        HMAccessoryView *accessoryView = (HMAccessoryView *) [self.accessory generateComponent];

        // sets the accessory view in the component
        component.accessoryView = accessoryView;
        component.editingAccessoryView = accessoryView;
    }

    // releases the objects
    [convertedSelectedBackgroundColors release];
    [convertedBackgroundColors release];

    // returns the component
    return component;
}

@end
