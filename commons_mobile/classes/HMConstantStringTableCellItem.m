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
    component.description = self.description;
    component.descriptionFont = self.descriptionFont.UIFont;
    component.descriptionColor = self.descriptionColor.UIColor;
    component.selectable = self.selectable;
    component.selectableName = self.selectableName;
    component.insertableRow = self.insertableRow;
    component.deletableRow = self.deletableRow;
    component.backgroundColors = convertedBackgroundColors;
    component.selectedBackgroundColors = convertedSelectedBackgroundColors;
    component.imageView.image = self.icon.UIImage;
    component.imageView.highlightedImage = self.highlightedIcon.UIImage;
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

    // releases the objects
    [convertedSelectedBackgroundColors release];
    [convertedBackgroundColors release];

    // returns the component
    return component;
}

- (UIView *)generateComponentPlainConstantStringTableViewCell {
    // creates the cell identifier
    static NSString *cellIdentifier = @"Cell";

    // creates the component
    HMPlainConstantStringTableViewCell *component = [[[HMPlainConstantStringTableViewCell alloc] initWithReuseIdentifier:cellIdentifier] autorelease];

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
    component.description = self.description;
    component.descriptionFont = self.descriptionFont.UIFont;
    component.descriptionColor = self.descriptionColor.UIColor;
    component.selectable = self.selectable;
    component.selectableName = self.selectableName;
    component.insertableRow = self.insertableRow;
    component.deletableRow = self.deletableRow;
    component.backgroundColors = convertedBackgroundColors;
    component.selectedBackgroundColors = convertedSelectedBackgroundColors;
    component.imageView.image = self.icon.UIImage;
    component.imageView.highlightedImage = self.highlightedIcon.UIImage;
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

    // releases the objects
    [convertedSelectedBackgroundColors release];
    [convertedBackgroundColors release];

    // returns the component
    return component;
}

@end
