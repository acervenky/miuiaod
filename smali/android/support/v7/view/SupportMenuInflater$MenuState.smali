.class Landroid/support/v7/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field itemActionProvider:Landroid/support/v4/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticModifiers:I

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemContentDescription:Ljava/lang/CharSequence;

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemIconTintList:Landroid/content/res/ColorStateList;

.field private itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericModifiers:I

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemTooltipText:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Landroid/support/v7/view/SupportMenuInflater;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/SupportMenuInflater;Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    invoke-virtual {p0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->resetGroup()V

    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object p0, p0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {p0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p2, "SupportMenuInflater"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot instantiate class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 5

    iget-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v0, v0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {v1}, Landroid/support/v7/view/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    :cond_4
    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_6

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    goto :goto_2

    :cond_5
    instance-of v0, p1, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    :cond_6
    :goto_2
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    sget-object v1, Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v2, v2, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move v2, v3

    :cond_7
    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v0, :cond_9

    if-nez v2, :cond_8

    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_8
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    :cond_a
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-char v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setAlphabeticShortcut(Landroid/view/MenuItem;CI)V

    iget-char v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setNumericShortcut(Landroid/view/MenuItem;CI)V

    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    :cond_b
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    iget-object p0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, p0}, Landroid/support/v4/view/MenuItemCompat;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public addItem()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    return p0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v0, v0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_menuCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_visible:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_enabled:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v0, v0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->MenuItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_menuCategory:I

    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v2, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_orderInCategory:I

    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_titleCondensed:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_icon:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_alphabeticModifiers:I

    const/16 v2, 0x1000

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_numericShortcut:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_numericModifiers:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    :goto_0
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checked:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_visible:I

    iget-boolean v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_enabled:I

    iget-boolean v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_showAsAction:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_onClick:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionLayout:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionViewClass:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionProviderClass:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    sget-object v4, Landroid/support/v7/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v5, v5, Landroid/support/v7/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4, v5}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ActionProvider;

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "SupportMenuInflater"

    const-string v4, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    :goto_2
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_contentDescription:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_tooltipText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_iconTintMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_iconTintMode:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    :cond_4
    iput-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_3
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_iconTint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_iconTint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    goto :goto_4

    :cond_5
    iput-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    :goto_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    return-void
.end method

.method public resetGroup()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    return-void
.end method
