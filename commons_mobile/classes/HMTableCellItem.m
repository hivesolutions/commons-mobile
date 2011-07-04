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

@synthesize accessoryType = _accessoryType;
@synthesize accessoryValue = _accessoryValue;
@synthesize indentable = _indentable;
@synthesize clearable = _clearable;
@synthesize insertableRow = _insertableRow;
@synthesize deletableRow = _deletableRow;
@synthesize deleteActionType = _deleteActionType;

- (void)dealloc {
    // releases the acessory type
    [_accessoryType release];

    // releases the acessory value
    [_accessoryValue release];

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

    // retrieves the composite properties
    HMColor *nameColor = self.nameColor;
    HMColor *descriptionColor = self.descriptionColor;
    HMColor *backgroundColor = self.backgroundColor;

    // converts the composite properties
    UIImage *iconImage = [UIImage imageNamed:self.icon];
    UIImage *highlightedIconImage = [UIImage imageNamed:self.highlightedIcon];
    UIColor *convertedNameColor = [UIColor colorWithRed:nameColor.red green:self.nameColor.green blue:nameColor.blue alpha:nameColor.alpha];
    UIColor *convertedDescriptionColor = [UIColor colorWithRed:descriptionColor.red green:descriptionColor.green blue:descriptionColor.blue alpha:descriptionColor.alpha];
    UIColor *convertedBackgroundColor = [UIColor colorWithRed:backgroundColor.red green:backgroundColor.green blue:backgroundColor.blue alpha:backgroundColor.alpha];

    // sets the cell's attributes
    component.item = self;
    component.data = self.data;
    component.height = self.height;
    component.name = self.name;
    component.nameColor = convertedNameColor;
    component.nameFont = self.nameFont;
    component.nameFontSize = self.nameFontSize;
    component.description = self.description;
    component.descriptionColor = convertedDescriptionColor;
    component.descriptionFont = self.descriptionFont;
    component.descriptionFontSize = self.descriptionFontSize;
    component.selectable = self.selectable;
    component.selectableName = self.selectableName;
    component.accessoryTypeString = self.accessoryType;
    component.accessoryValue = self.accessoryValue;
    component.insertableRow = self.insertableRow;
    component.deletableRow = self.deletableRow;
    component.backgroundColor = convertedBackgroundColor;
    component.imageView.image = iconImage;
    component.imageView.highlightedImage = highlightedIconImage;

    // returns the component
    return component;
}

@end
