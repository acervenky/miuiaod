.class public Lcom/miui/aod/common/StyleInfo;
.super Ljava/lang/Object;
.source "StyleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/common/StyleInfo$PresetStyle;
    }
.end annotation


# static fields
.field private static final BATTERY_MASK:I = 0x1

.field public static final CLUSTER_SHOW_ALL:I = -0x2

.field public static final CLUSTER_SHOW_NULL:I = -0x1

.field private static final NOTIFICATION_MASK:I = 0x2


# instance fields
.field private mAttributeFlag:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attribute_flag"
    .end annotation
.end field

.field private mBgCluster:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bg_cluster"
    .end annotation
.end field

.field private mClockBg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bg"
    .end annotation
.end field

.field private mColorName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "color"
    .end annotation
.end field

.field private mIsChangeColorAlongTime:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_change_color_alongtime"
    .end annotation
.end field

.field private mLabel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "label"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/aod/common/StyleInfo;->mAttributeFlag:I

    iput-object p1, p0, Lcom/miui/aod/common/StyleInfo;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareToForPresetStyle(Lcom/miui/aod/common/StyleInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public createAodClock(I)Lcom/miui/aod/widget/IAodClock;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createDualAodClock1(I)Lcom/miui/aod/widget/IAodClock;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/aod/common/StyleInfo;->createAodClock(I)Lcom/miui/aod/widget/IAodClock;

    move-result-object p0

    return-object p0
.end method

.method public createDualAodClock2(I)Lcom/miui/aod/widget/IAodClock;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public dealAodContentContainerLayoutParams(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    const/4 p0, -0x2

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public dealClockContentContainerLayoutParams(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    const/4 p0, -0x2

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public dealContentLayoutParams(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    const/4 p0, 0x4

    if-eq p2, p0, :cond_0

    const/4 p0, -0x2

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/miui/aod/common/StyleInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getColorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getColorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->getColorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->getColorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->getColorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getColorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getClockBgResID()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->getClockBgResID()I

    move-result p0

    if-eq p1, p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public getBgCluster()[I
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/common/StyleInfo;->mBgCluster:[I

    return-object p0
.end method

.method public getClockBgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/common/StyleInfo;->mClockBg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->getDefaultClockBgName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/common/StyleInfo;->mClockBg:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getClockBgResID()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->getClockBgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/aod/resource/ImagePool;->getImageRes(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->getDefaultClockBg()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getClockColor()I
    .locals 0

    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->getColorName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/aod/resource/ColorPool;->getClockColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getClockMask()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/aod/common/StyleInfo;->mIsChangeColorAlongTime:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/aod/resource/ColorPool;->getGradientDrawableMask()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->getColorName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/aod/resource/ColorPool;->getClockMaskX(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getColorName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/common/StyleInfo;->mColorName:Ljava/lang/String;

    return-object p0
.end method

.method protected getDefaultClockBg()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getDefaultClockBgName()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getIconMask()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/aod/common/StyleInfo;->mIsChangeColorAlongTime:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/aod/resource/ColorPool;->getGradientDrawableMask()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->getColorName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/aod/resource/ColorPool;->getIconMask(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/common/StyleInfo;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/common/StyleInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPresetStyle()Lcom/miui/aod/common/StyleInfo$PresetStyle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewTopPaddingResId()I
    .locals 0

    const p0, 0x7f0b00b9

    return p0
.end method

.method public getStartDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStyleSelectPresenterName()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStyleSelectViewName()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitleResId()I
    .locals 0

    const p0, 0x7f090058

    return p0
.end method

.method public getTopMargin(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b016f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public getTopMarginPreview(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/aod/common/StyleInfo;->getTopMargin(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getTranslationY(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initConfig(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isBatterySwitchOn()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->supportBatteryIcon()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/miui/aod/common/StyleInfo;->mAttributeFlag:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChangeColorAlongTime()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/common/StyleInfo;->mIsChangeColorAlongTime:Z

    return p0
.end method

.method public isLeftGravity()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNotificationSwitchOn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->supportNotificationIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/miui/aod/common/StyleInfo;->mAttributeFlag:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needInflateBattery()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setBg(Landroid/view/View;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100ae

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->getClockBgResID()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b00f1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b008d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    const/16 v0, 0x11

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_2
    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-ne p2, v3, :cond_3

    const p0, 0x7f1100ad

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0, p1, v2, p2, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public setBgCluster([I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/common/StyleInfo;->mBgCluster:[I

    return-void
.end method

.method public setChangeColorAlongTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/common/StyleInfo;->mIsChangeColorAlongTime:Z

    return-void
.end method

.method public setClockBgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/common/StyleInfo;->mClockBg:Ljava/lang/String;

    return-void
.end method

.method public setColorName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/common/StyleInfo;->mColorName:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/common/StyleInfo;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public supportBatteryIcon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportChangeColorAlongTime()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportDualClock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportHideClock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportNotificationIcon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public switchOnBatteryIcon(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/aod/common/StyleInfo;->mAttributeFlag:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/aod/common/StyleInfo;->mAttributeFlag:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/aod/common/StyleInfo;->mAttributeFlag:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/miui/aod/common/StyleInfo;->mAttributeFlag:I

    :goto_0
    return-void
.end method

.method public switchOnNotificationIcon(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/aod/common/StyleInfo;->mAttributeFlag:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/aod/common/StyleInfo;->mAttributeFlag:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/aod/common/StyleInfo;->mAttributeFlag:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/miui/aod/common/StyleInfo;->mAttributeFlag:I

    :goto_0
    return-void
.end method
