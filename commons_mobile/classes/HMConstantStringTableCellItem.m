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
    component.nameLabel.font = self.nameFont.UIFont;
    component.nameLabel.textColor = self.nameColor.UIColor;
    component.nameLabel.numberOfLines = self.nameNumberLines ? self.nameNumberLines.intValue : 1;
    component.nameLabel.textAlignment = [self convertTextAlignment:self.nameAlignment];
    component.nameShadowColor = self.nameShadowColor.UIColor;
    component.namePosition = [self convertPosition:self.namePosition];
    component.nameHorizontalAnchor = [self convertHorizontalAnchor:self.nameHorizontalAnchor];
    component.nameVerticalAnchor = [self convertVerticalAnchor:self.nameVerticalAnchor];
    component.nameWidth = self.nameWidth;
    component.description = self.description;
    component.descriptionLabel.font = self.descriptionFont.UIFont;
    component.descriptionLabel.textColor = self.descriptionColor.UIColor;
    component.descriptionLabel.numberOfLines = self.descriptionNumberLines ? self.descriptionNumberLines.intValue : 1;
    component.descriptionLabel.textAlignment = [self convertTextAlignment:self.descriptionAlignment];
    component.descriptionShadowColor = self.descriptionShadowColor.UIColor;
    component.descriptionPosition = [self convertPosition:self.descriptionPosition];
    component.descriptionHorizontalAnchor = [self convertHorizontalAnchor:self.descriptionHorizontalAnchor];
    component.descriptionVerticalAnchor = [self convertVerticalAnchor:self.descriptionVerticalAnchor];
    component.descriptionWidth = self.descriptionWidth;
    component.subDescription = self.subDescription;
    component.subDescriptionFont = self.subDescriptionFont.UIFont;
    component.subDescriptionLabel.textColor = self.subDescriptionColor.UIColor;
    component.subDescriptionLabel.numberOfLines = self.subDescriptionNumberLines ? self.subDescriptionNumberLines.intValue : 1;
    component.subDescriptionLabel.textAlignment = [self convertTextAlignment:self.subDescriptionAlignment];
    component.subDescriptionShadowColor = self.subDescriptionShadowColor.UIColor;
    component.subDescriptionPosition = [self convertPosition:self.subDescriptionPosition];
    component.subDescriptionHorizontalAnchor = [self convertHorizontalAnchor:self.subDescriptionHorizontalAnchor];
    component.subDescriptionVerticalAnchor = [self convertVerticalAnchor:self.subDescriptionVerticalAnchor];
    component.subDescriptionWidth = self.subDescriptionWidth;
    component.cornerRadius = self.cornerRadius;
    component.borderColor = self.borderColor.UIColor;
    component.backgroundColor = self.backgroundColor.UIColor;
    component.backgroundColors = [self convertColors:self.backgroundColors];
    component.backgroundTopSeparatorColor = self.topSeparatorColor.UIColor;
    component.backgroundBottomSeparatorColor = self.bottomSeparatorColor.UIColor;
    component.backgroundTopSeparatorStyle = [self convertSeparatorStyle:self.topSeparatorStyle];
    component.backgroundBottomSeparatorStyle = [self convertSeparatorStyle:self.bottomSeparatorStyle];
    component.selectedBackgroundColors = [self convertColors:self.selectedBackgroundColors];
    component.selectedBackgroundTopSeparatorColor = self.selectedTopSeparatorColor.UIColor;
    component.selectedBackgroundBottomSeparatorColor = self.selectedBottomSeparatorColor.UIColor;
    component.selectedBackgroundTopSeparatorStyle = [self convertSeparatorStyle:self.selectedTopSeparatorStyle];
    component.selectedBackgroundBottomSeparatorStyle = [self convertSeparatorStyle:self.selectedBottomSeparatorStyle];
    component.imageView.image = self.iconNormal.UIImage;
    component.imageView.highlightedImage = self.iconHighlighted.UIImage;
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
    component.drawColumnSeparator = self.drawColumnSeparator;

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
    component.nameLabel.font = self.nameFont.UIFont;
    component.nameLabel.textColor = self.nameColor.UIColor;
    component.nameLabel.numberOfLines = self.nameNumberLines ? self.nameNumberLines.intValue : 1;
    component.nameLabel.textAlignment = [self convertTextAlignment:self.nameAlignment];
    component.nameShadowColor = self.nameShadowColor.UIColor;
    component.namePosition = [self convertPosition:self.namePosition];
    component.nameHorizontalAnchor = [self convertHorizontalAnchor:self.nameHorizontalAnchor];
    component.nameVerticalAnchor = [self convertVerticalAnchor:self.nameVerticalAnchor];
    component.nameWidth = self.nameWidth;
    component.description = self.description;
    component.description = self.description;
    component.descriptionLabel.font = self.descriptionFont.UIFont;
    component.descriptionLabel.textColor = self.descriptionColor.UIColor;
    component.descriptionLabel.numberOfLines = self.descriptionNumberLines ? self.descriptionNumberLines.intValue : 1;
    component.descriptionLabel.textAlignment = [self convertTextAlignment:self.descriptionAlignment];
    component.descriptionShadowColor = self.descriptionShadowColor.UIColor;
    component.descriptionPosition = [self convertPosition:self.descriptionPosition];
    component.descriptionHorizontalAnchor = [self convertHorizontalAnchor:self.descriptionHorizontalAnchor];
    component.descriptionVerticalAnchor = [self convertVerticalAnchor:self.descriptionVerticalAnchor];
    component.descriptionWidth = self.descriptionWidth;
    component.subDescription = self.subDescription;
    component.subDescriptionFont = self.subDescriptionFont.UIFont;
    component.subDescriptionLabel.textColor = self.subDescriptionColor.UIColor;
    component.subDescriptionLabel.numberOfLines = self.subDescriptionNumberLines ? self.subDescriptionNumberLines.intValue : 1;
    component.subDescriptionLabel.textAlignment = [self convertTextAlignment:self.subDescriptionAlignment];
    component.subDescriptionShadowColor = self.subDescriptionShadowColor.UIColor;
    component.subDescriptionPosition = [self convertPosition:self.subDescriptionPosition];
    component.subDescriptionHorizontalAnchor = [self convertHorizontalAnchor:self.subDescriptionHorizontalAnchor];
    component.subDescriptionVerticalAnchor = [self convertVerticalAnchor:self.subDescriptionVerticalAnchor];
    component.subDescriptionWidth = self.subDescriptionWidth;
    component.cornerRadius = self.cornerRadius;
    component.borderColor = self.borderColor.UIColor;
    component.backgroundColor = self.backgroundColor.UIColor;
    component.backgroundColors = [self convertColors:self.backgroundColors];
    component.backgroundTopSeparatorColor = self.topSeparatorColor.UIColor;
    component.backgroundBottomSeparatorColor = self.bottomSeparatorColor.UIColor;
    component.backgroundTopSeparatorStyle = [self convertSeparatorStyle:self.topSeparatorStyle];
    component.backgroundBottomSeparatorStyle = [self convertSeparatorStyle:self.bottomSeparatorStyle];
    component.selectedBackgroundColors = [self convertColors:self.selectedBackgroundColors];
    component.selectedBackgroundTopSeparatorColor = self.selectedTopSeparatorColor.UIColor;
    component.selectedBackgroundBottomSeparatorColor = self.selectedBottomSeparatorColor.UIColor;
    component.selectedBackgroundTopSeparatorStyle = [self convertSeparatorStyle:self.selectedTopSeparatorStyle];
    component.selectedBackgroundBottomSeparatorStyle = [self convertSeparatorStyle:self.selectedBottomSeparatorStyle];
    component.imageView.image = self.iconNormal.UIImage;
    component.imageView.highlightedImage = self.iconHighlighted.UIImage;
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
