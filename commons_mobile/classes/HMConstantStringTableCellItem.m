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

#import "HMConstantStringTableCellItem.h"

@implementation HMConstantStringTableCellItem

- (UIView *)generateComponent {
    // initializes the component
    UIView *component = nil;

    // in case the name is defined
    if(self.name) {
        // creates a column constant string table view cell
        component = [self generateComponentColumnConstantStringTableViewCell];
    } else {
        // creates a plain constant string table view cell
        component = [self generateComponentPlainConstantStringTableViewCell];
    }

    // returns the component
    return component;
}

- (UIView *)generateComponentColumnConstantStringTableViewCell {
    // creates the cell identifier
    static NSString *cellIdentifier = @"Cell";

    // creates the component
    HMColumnConstantStringTableViewCell *component = [[[HMColumnConstantStringTableViewCell alloc] initWithReuseIdentifier:cellIdentifier] autorelease];

    // sets the cell's attributes
    component.item = self;
    component.data = self.data;
    component.height = self.height;
    component.name = self.name;
    component.nameFont = self.nameFont.UIFont;
    component.nameColor = self.nameColor.UIColor;
    component.nameAlignment = [self convertTextAlignment:self.nameAlignment];
    component.namePosition = [self convertPosition:self.namePosition];
    component.nameHorizontalAnchor = [self convertHorizontalAnchor:self.nameHorizontalAnchor];
    component.nameVerticalAnchor = [self convertVerticalAnchor:self.nameVerticalAnchor];
    component.description = self.description;
    component.descriptionFont = self.descriptionFont.UIFont;
    component.descriptionColor = self.descriptionColor.UIColor;
    component.descriptionAlignment = [self convertTextAlignment:self.descriptionAlignment];
    component.descriptionPosition = [self convertPosition:self.descriptionPosition];
    component.descriptionHorizontalAnchor = [self convertHorizontalAnchor:self.descriptionHorizontalAnchor];
    component.descriptionVerticalAnchor = [self convertVerticalAnchor:self.descriptionVerticalAnchor];
    component.backgroundColor = self.backgroundPatternImage ? self.backgroundPatternImage.UIColor : self.backgroundColor.UIColor;
    component.selectedBorderColor = self.selectedBorderColor.UIColor;
    component.selectedBackgroundColors = [self convertColors:self.selectedBackgroundColors];
    component.selectedBackgroundTopSeparatorColor = self.selectedTopSeparatorColor.UIColor;
    component.selectedBackgroundBottomSeparatorColor = self.selectedBottomSeparatorColor.UIColor;
    component.selectedBackgroundTopSeparatorStyle = [self convertSeparatorStyle:self.selectedTopSeparatorStyle];
    component.selectedBackgroundBottomSeparatorStyle = [self convertSeparatorStyle:self.selectedBottomSeparatorStyle];
    component.imageView.image = self.icon.UIImage;
    component.imageView.highlightedImage = self.highlightedIcon.UIImage;
    component.selectable = self.selectable;
    component.selectableName = self.selectableName;
    component.insertableRow = self.insertableRow;
    component.deletableRow = self.deletableRow;
    component.selectableEdit = self.selectableEdit;
    component.defaultValue = self.defaultValue;
    component.clearable = self.clearable;
    component.returnType = self.returnType;
    component.focusEdit = self.focusEdit;
    component.readViewController = self.readViewController;
    component.readNibName = self.readNibName;
    component.editViewController = self.editViewController;
    component.editNibName = self.editNibName;

    // in case the accessory is defined
    if(self.accessory) {
        // generates the accessory view
        HMAccessoryView *accessoryView = (HMAccessoryView *) [self.accessory generateComponent];

        // sets the accessory view in the component
        component.accessoryView = accessoryView;
        component.editingAccessoryView = accessoryView;
    }

    // for each sub item
    for(HMItem *subItem in self.subItems) {
        // generates the sub item's component
        UIView *subview = [subItem generateComponent];

        // adds the component as a subview
        [component.contentView addSubview:subview];
    }

    // returns the component
    return component;
}

- (UIView *)generateComponentPlainConstantStringTableViewCell {
    // creates the cell identifier
    static NSString *cellIdentifier = @"Cell";

    // creates the component
    HMPlainConstantStringTableViewCell *component = [[[HMPlainConstantStringTableViewCell alloc] initWithReuseIdentifier:cellIdentifier] autorelease];

    // sets the cell's attributes
    component.item = self;
    component.data = self.data;
    component.height = self.height;
    component.name = self.name;
    component.nameFont = self.nameFont.UIFont;
    component.nameColor = self.nameColor.UIColor;
    component.nameAlignment = [self convertTextAlignment:self.nameAlignment];
    component.namePosition = [self convertPosition:self.namePosition];
    component.nameHorizontalAnchor = [self convertHorizontalAnchor:self.nameHorizontalAnchor];
    component.nameVerticalAnchor = [self convertVerticalAnchor:self.nameVerticalAnchor];
    component.description = self.description;
    component.descriptionFont = self.descriptionFont.UIFont;
    component.descriptionColor = self.descriptionColor.UIColor;
    component.descriptionAlignment = [self convertTextAlignment:self.descriptionAlignment];
    component.descriptionPosition = [self convertPosition:self.descriptionPosition];
    component.descriptionHorizontalAnchor = [self convertHorizontalAnchor:self.descriptionHorizontalAnchor];
    component.descriptionVerticalAnchor = [self convertVerticalAnchor:self.descriptionVerticalAnchor];
    component.backgroundColor = self.backgroundPatternImage ? self.backgroundPatternImage.UIColor : self.backgroundColor.UIColor;
    component.selectedBorderColor = self.selectedBorderColor.UIColor;
    component.selectedBackgroundColors = [self convertColors:self.selectedBackgroundColors];
    component.selectedBackgroundTopSeparatorColor = self.selectedTopSeparatorColor.UIColor;
    component.selectedBackgroundBottomSeparatorColor = self.selectedBottomSeparatorColor.UIColor;
    component.selectedBackgroundTopSeparatorStyle = [self convertSeparatorStyle:self.selectedTopSeparatorStyle];
    component.selectedBackgroundBottomSeparatorStyle = [self convertSeparatorStyle:self.selectedBottomSeparatorStyle];
    component.imageView.image = self.icon.UIImage;
    component.imageView.highlightedImage = self.highlightedIcon.UIImage;
    component.selectable = self.selectable;
    component.selectableName = self.selectableName;
    component.insertableRow = self.insertableRow;
    component.deletableRow = self.deletableRow;
    component.selectableEdit = self.selectableEdit;
    component.defaultValue = self.defaultValue;
    component.clearable = self.clearable;
    component.returnType = self.returnType;
    component.focusEdit = self.focusEdit;
    component.readViewController = self.readViewController;
    component.readNibName = self.readNibName;
    component.editViewController = self.editViewController;
    component.editNibName = self.editNibName;

    // in case the accessory is defined
    if(self.accessory) {
        // generates the accessory view
        HMAccessoryView *accessoryView = (HMAccessoryView *) [self.accessory generateComponent];

        // sets the accessory view in the component
        component.accessoryView = accessoryView;
        component.editingAccessoryView = accessoryView;
    }

    // for each sub item
    for(HMItem *subItem in self.subItems) {
        // generates the sub item's component
        UIView *subview = [subItem generateComponent];

        // adds the component as a subview
        [component.contentView addSubview:subview];
    }

    // returns the component
    return component;
}

@end
