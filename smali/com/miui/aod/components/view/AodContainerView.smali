.class public Lcom/miui/aod/components/view/AodContainerView;
.super Landroid/widget/FrameLayout;
.source "AodContainerView.java"

# interfaces
.implements Lcom/miui/aod/components/widget/ITimeUpdate;


# instance fields
.field mAodClock:Lcom/miui/aod/widget/IAodClock;

.field mAodClock2:Lcom/miui/aod/widget/IAodClock;

.field private mAodContent:Landroid/view/View;

.field private mBatteryContainer:Landroid/view/View;

.field private mClockContent:Landroid/view/View;

.field private mContentView:Landroid/view/ViewGroup;

.field private mContentView2:Landroid/view/ViewGroup;

.field private mGradientLinearLayout:Lcom/miui/aod/widget/GradientLinearLayout;

.field private mInflatedBattery:Lcom/miui/aod/AODBatteryMeterView;

.field private mInflatedNotificationIcons:Landroid/view/View;

.field private mLabelIv:Landroid/widget/ImageView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSize:I

.field private mStyleInfo:Lcom/miui/aod/common/StyleInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock:Lcom/miui/aod/widget/IAodClock;

    iput-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock:Lcom/miui/aod/widget/IAodClock;

    iput-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    return-void
.end method

.method private hideViewById(Landroid/view/View;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private inflateBattery(Lcom/miui/aod/common/StyleInfo;)V
    .locals 2

    const v0, 0x7f1100bb

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/view/AodContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    const v1, 0x7f03001e

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mBatteryContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mBatteryContainer:Landroid/view/View;

    const v1, 0x7f1100b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/AODBatteryMeterView;

    iput-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedBattery:Lcom/miui/aod/AODBatteryMeterView;

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedBattery:Lcom/miui/aod/AODBatteryMeterView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getClockMask()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/aod/components/view/AodContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/aod/widget/AODSettings;->isDualClock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/aod/components/view/AodContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getClockMask()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/aod/resource/AodDrawables;->getDrawableForMask(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedBattery:Lcom/miui/aod/AODBatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/miui/aod/AODBatteryMeterView;->setGradientOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedBattery:Lcom/miui/aod/AODBatteryMeterView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/aod/AODBatteryMeterView;->setGradientOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedBattery:Lcom/miui/aod/AODBatteryMeterView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/aod/AODBatteryMeterView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedBattery:Lcom/miui/aod/AODBatteryMeterView;

    invoke-virtual {p1}, Lcom/miui/aod/AODBatteryMeterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/aod/components/view/AodContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_1
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v0, 0x1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedBattery:Lcom/miui/aod/AODBatteryMeterView;

    invoke-virtual {p0, p1}, Lcom/miui/aod/AODBatteryMeterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private inflateNotificationIcons()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedNotificationIcons:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f1100bc

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/view/AodContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v1, 0x7f03002e

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedNotificationIcons:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedNotificationIcons:Landroid/view/View;

    const v1, 0x7f1100c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/widget/GradientLinearLayout;

    iput-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mGradientLinearLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    :cond_0
    return-void
.end method

.method private inflateView(ZLcom/miui/aod/common/StyleInfo;)Lcom/miui/aod/widget/IAodClock;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/aod/components/view/AodContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "resident_timezone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    invoke-virtual {p2, v1, v2}, Lcom/miui/aod/common/StyleInfo;->dealContentLayoutParams(Landroid/view/ViewGroup$LayoutParams;I)V

    iget-object v1, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView2:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView2:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcom/miui/aod/common/StyleInfo;->supportDualClock()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iget v3, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    invoke-virtual {p2, v3}, Lcom/miui/aod/common/StyleInfo;->createDualAodClock1(I)Lcom/miui/aod/widget/IAodClock;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock:Lcom/miui/aod/widget/IAodClock;

    iget-object v3, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView2:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    invoke-virtual {p2, v3}, Lcom/miui/aod/common/StyleInfo;->createDualAodClock2(I)Lcom/miui/aod/widget/IAodClock;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    :cond_2
    iget-object v3, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock:Lcom/miui/aod/widget/IAodClock;

    invoke-interface {v3, p1}, Lcom/miui/aod/widget/IAodClock;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    invoke-interface {p1, v0}, Lcom/miui/aod/widget/IAodClock;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_3
    iget-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock:Lcom/miui/aod/widget/IAodClock;

    invoke-interface {p1, v0}, Lcom/miui/aod/widget/IAodClock;->setTimeZone2(Ljava/util/TimeZone;)V

    :cond_4
    iget-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock:Lcom/miui/aod/widget/IAodClock;

    invoke-interface {v0}, Lcom/miui/aod/widget/IAodClock;->getLayoutResource()I

    move-result v0

    iget-object v3, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView2:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    invoke-interface {v2}, Lcom/miui/aod/widget/IAodClock;->getLayoutResource()I

    move-result v2

    iget-object v3, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_5
    :goto_0
    iget p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    invoke-virtual {p2, p1}, Lcom/miui/aod/common/StyleInfo;->createAodClock(I)Lcom/miui/aod/widget/IAodClock;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock:Lcom/miui/aod/widget/IAodClock;

    iget-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock:Lcom/miui/aod/widget/IAodClock;

    invoke-interface {v0}, Lcom/miui/aod/widget/IAodClock;->getLayoutResource()I

    move-result v0

    iget-object v3, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_6
    :goto_1
    const v0, 0x7f1100b5

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/view/AodContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mBatteryContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock:Lcom/miui/aod/widget/IAodClock;

    invoke-interface {v0, p1}, Lcom/miui/aod/widget/IAodClock;->bindView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock:Lcom/miui/aod/widget/IAodClock;

    iget v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    invoke-interface {p1, p2, v0}, Lcom/miui/aod/widget/IAodClock;->update(Lcom/miui/aod/common/StyleInfo;I)V

    iget-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    if-eqz p1, :cond_7

    if-eqz v2, :cond_7

    iget-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    invoke-interface {p1, v2}, Lcom/miui/aod/widget/IAodClock;->bindView(Landroid/view/View;)V

    :cond_7
    iget-object p0, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock:Lcom/miui/aod/widget/IAodClock;

    return-object p0
.end method

.method private setBg(Lcom/miui/aod/common/StyleInfo;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/AodContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/aod/widget/AODSettings;->isDualClock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock:Lcom/miui/aod/widget/IAodClock;

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getClockColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getClockMask()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/miui/aod/widget/IAodClock;->setClockMask(II)V

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getClockColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getClockMask()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/miui/aod/widget/IAodClock;->setClockMask(II)V

    :cond_0
    iget v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    invoke-virtual {p1, p0, v0}, Lcom/miui/aod/common/StyleInfo;->setBg(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/miui/aod/components/view/AodContainerView;->updateIconsMask()V

    return-void
.end method

.method private setupAodContent(Lcom/miui/aod/common/StyleInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->isLeftGravity()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodContent:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    or-int/lit8 v0, v0, 0x30

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    invoke-virtual {p1, v1, v0}, Lcom/miui/aod/common/StyleInfo;->dealAodContentContainerLayoutParams(Landroid/view/ViewGroup$LayoutParams;I)V

    iget-object p0, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodContent:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private setupBatteryViews(ZLcom/miui/aod/common/StyleInfo;)V
    .locals 2

    invoke-virtual {p2}, Lcom/miui/aod/common/StyleInfo;->isBatterySwitchOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/miui/aod/common/StyleInfo;->supportDualClock()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/miui/aod/common/StyleInfo;->needInflateBattery()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-direct {p0, p2}, Lcom/miui/aod/components/view/AodContainerView;->inflateBattery(Lcom/miui/aod/common/StyleInfo;)V

    goto :goto_2

    :cond_3
    const p1, 0x7f1100b6

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/view/AodContainerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/AODBatteryMeterView;

    iput-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedBattery:Lcom/miui/aod/AODBatteryMeterView;

    iget-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedBattery:Lcom/miui/aod/AODBatteryMeterView;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedBattery:Lcom/miui/aod/AODBatteryMeterView;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/miui/aod/components/view/AodContainerView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    instance-of p0, p0, Lcom/miui/aod/category/SunCategoryInfo;

    if-eqz p0, :cond_5

    const/4 v1, 0x4

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/aod/AODBatteryMeterView;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private setupClockContent(Lcom/miui/aod/common/StyleInfo;)V
    .locals 5

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->isLeftGravity()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/aod/components/view/AodContainerView;->mClockContent:Landroid/view/View;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    const/4 v2, 0x2

    const/16 v3, 0x11

    const/16 v4, 0x13

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/aod/components/view/AodContainerView;->mClockContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    invoke-virtual {p1, v1, v0}, Lcom/miui/aod/common/StyleInfo;->dealClockContentContainerLayoutParams(Landroid/view/ViewGroup$LayoutParams;I)V

    iget-object p0, p0, Lcom/miui/aod/components/view/AodContainerView;->mClockContent:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/aod/components/view/AodContainerView;->mClockContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_3

    move v3, v4

    :cond_3
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    invoke-virtual {p1, v1, v0}, Lcom/miui/aod/common/StyleInfo;->dealClockContentContainerLayoutParams(Landroid/view/ViewGroup$LayoutParams;I)V

    iget-object p0, p0, Lcom/miui/aod/components/view/AodContainerView;->mClockContent:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private setupLabel()V
    .locals 4

    iget v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {v0}, Lcom/miui/aod/common/StyleInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mLabelIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/AodContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/aod/resource/AodDrawables;->sLabelDrawables:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/miui/aod/components/view/AodContainerView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {v2}, Lcom/miui/aod/common/StyleInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/aod/components/view/AodContainerView;->mLabelIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/AodContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0179

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/miui/aod/category/CategoryConstants;->SSMALL_RADIO:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/miui/aod/components/view/AodContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/miui/aod/category/CategoryConstants;->SSMALL_RADIO:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/miui/aod/components/view/AodContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0178

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/miui/aod/components/view/AodContainerView;->mLabelIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/miui/aod/components/view/AodContainerView;->mLabelIv:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mLabelIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/aod/components/view/AodContainerView;->mLabelIv:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupNotificationIcons(Landroid/view/View;Lcom/miui/aod/common/StyleInfo;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/aod/common/StyleInfo;->getTopMarginPreview(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/aod/common/StyleInfo;->getTopMargin(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {p2}, Lcom/miui/aod/common/StyleInfo;->isLeftGravity()Z

    move-result p2

    const/4 v1, 0x3

    if-eqz p2, :cond_1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0b016e

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_1
    const/16 p2, 0x11

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 p2, 0x0

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p0, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    if-eq p0, v1, :cond_2

    const p0, 0x7f1100ca

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/BadgetImageView;

    const p2, 0x7f02026b

    invoke-virtual {p0, p2}, Lcom/miui/aod/BadgetImageView;->setImageResource(I)V

    const p0, 0x7f1100cb

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/BadgetImageView;

    const p2, 0x7f020284

    invoke-virtual {p0, p2}, Lcom/miui/aod/BadgetImageView;->setImageResource(I)V

    const p0, 0x7f1100cc

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/BadgetImageView;

    const p2, 0x7f02029d

    invoke-virtual {p0, p2}, Lcom/miui/aod/BadgetImageView;->setImageResource(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private updateIconsMask()V
    .locals 3

    iget v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/aod/components/view/AodContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/aod/widget/AODSettings;->isDualClock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mGradientLinearLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {v0}, Lcom/miui/aod/common/StyleInfo;->getIconMask()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mGradientLinearLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/AodContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/aod/components/view/AodContainerView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {v2}, Lcom/miui/aod/common/StyleInfo;->getIconMask()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/aod/resource/AodDrawables;->getDrawableForMask(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/aod/widget/GradientLinearLayout;->setGradientOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mGradientLinearLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/aod/widget/GradientLinearLayout;->setGradientOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object p0, p0, Lcom/miui/aod/components/view/AodContainerView;->mGradientLinearLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    invoke-virtual {p0}, Lcom/miui/aod/widget/GradientLinearLayout;->invalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method public handleUpdateTime(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/aod/components/view/AodContainerView;->updateIconsMask()V

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock:Lcom/miui/aod/widget/IAodClock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock:Lcom/miui/aod/widget/IAodClock;

    invoke-interface {v0, p1}, Lcom/miui/aod/widget/IAodClock;->updateTime(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    invoke-interface {p0, p1}, Lcom/miui/aod/widget/IAodClock;->updateTime(Z)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/view/AodContainerView;->setForceDarkAllowed(Z)V

    :cond_0
    const v0, 0x7f110090

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/view/AodContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f1100de

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/view/AodContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView2:Landroid/view/ViewGroup;

    const v0, 0x7f1100ba

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/view/AodContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mAodContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/AodContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f1100dd

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/view/AodContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mClockContent:Landroid/view/View;

    const v0, 0x7f1100d8

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/view/AodContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mLabelIv:Landroid/widget/ImageView;

    return-void
.end method

.method public setSunImage(ILandroid/view/View;)V
    .locals 2

    const p0, 0x7f1100ae

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0b01d3

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-ltz p1, :cond_0

    invoke-static {}, Lcom/miui/aod/widget/SunSelector;->getDrawableLength()I

    move-result p2

    if-ge p1, p2, :cond_0

    invoke-static {p1}, Lcom/miui/aod/widget/SunSelector;->getSunImage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public showBatteryIcon(Z)V
    .locals 5

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mBatteryContainer:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-direct {p0, v0}, Lcom/miui/aod/components/view/AodContainerView;->inflateBattery(Lcom/miui/aod/common/StyleInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mBatteryContainer:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mBatteryContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/miui/aod/components/view/AodContainerView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    instance-of v4, v4, Lcom/miui/aod/category/SunCategoryInfo;

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedBattery:Lcom/miui/aod/AODBatteryMeterView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedBattery:Lcom/miui/aod/AODBatteryMeterView;

    if-eqz p1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/miui/aod/components/view/AodContainerView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    instance-of p0, p0, Lcom/miui/aod/category/SunCategoryInfo;

    if-eqz p0, :cond_5

    move v1, v2

    :cond_5
    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/aod/AODBatteryMeterView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public showNotificationIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedNotificationIcons:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/aod/components/view/AodContainerView;->inflateNotificationIcons()V

    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedNotificationIcons:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/aod/components/view/AodContainerView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-direct {p0, v0, v1}, Lcom/miui/aod/components/view/AodContainerView;->setupNotificationIcons(Landroid/view/View;Lcom/miui/aod/common/StyleInfo;)V

    invoke-direct {p0}, Lcom/miui/aod/components/view/AodContainerView;->updateIconsMask()V

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedNotificationIcons:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedNotificationIcons:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public update(Lcom/miui/aod/common/StyleInfo;I)Lcom/miui/aod/widget/IAodClock;
    .locals 6

    iput p2, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    iput-object p1, p0, Lcom/miui/aod/components/view/AodContainerView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/AodContainerView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/aod/widget/AODSettings;->isDualClock(Landroid/content/Context;)Z

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/miui/aod/components/view/AodContainerView;->inflateView(ZLcom/miui/aod/common/StyleInfo;)Lcom/miui/aod/widget/IAodClock;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->isNotificationSwitchOn()Z

    move-result v1

    iget v2, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    const/16 v3, 0x8

    const v4, 0x7f1100c1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    iget v2, p0, Lcom/miui/aod/components/view/AodContainerView;->mSize:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/miui/aod/components/view/AodContainerView;->setupBatteryViews(ZLcom/miui/aod/common/StyleInfo;)V

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/aod/components/view/AodContainerView;->inflateNotificationIcons()V

    iget-object p2, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedNotificationIcons:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedNotificationIcons:Landroid/view/View;

    invoke-direct {p0, p2, p1}, Lcom/miui/aod/components/view/AodContainerView;->setupNotificationIcons(Landroid/view/View;Lcom/miui/aod/common/StyleInfo;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedNotificationIcons:Landroid/view/View;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/aod/components/view/AodContainerView;->mInflatedNotificationIcons:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f1100b5

    invoke-virtual {p0, p2}, Lcom/miui/aod/components/view/AodContainerView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/aod/components/view/AodContainerView;->mBatteryContainer:Landroid/view/View;

    iget-object p2, p0, Lcom/miui/aod/components/view/AodContainerView;->mBatteryContainer:Landroid/view/View;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/aod/components/view/AodContainerView;->mBatteryContainer:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p2, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f1100c0

    invoke-direct {p0, p2, v1}, Lcom/miui/aod/components/view/AodContainerView;->hideViewById(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView2:Landroid/view/ViewGroup;

    invoke-direct {p0, p2, v1}, Lcom/miui/aod/components/view/AodContainerView;->hideViewById(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView:Landroid/view/ViewGroup;

    invoke-direct {p0, p2, v4}, Lcom/miui/aod/components/view/AodContainerView;->hideViewById(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView2:Landroid/view/ViewGroup;

    invoke-direct {p0, p2, v4}, Lcom/miui/aod/components/view/AodContainerView;->hideViewById(Landroid/view/View;I)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/miui/aod/components/view/AodContainerView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/aod/widget/AODSettings;->shouldShowLunarDate(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView:Landroid/view/ViewGroup;

    invoke-direct {p0, p2, v4}, Lcom/miui/aod/components/view/AodContainerView;->hideViewById(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/miui/aod/components/view/AodContainerView;->mContentView2:Landroid/view/ViewGroup;

    invoke-direct {p0, p2, v4}, Lcom/miui/aod/components/view/AodContainerView;->hideViewById(Landroid/view/View;I)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/AodContainerView;->setBg(Lcom/miui/aod/common/StyleInfo;)V

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/AodContainerView;->setupAodContent(Lcom/miui/aod/common/StyleInfo;)V

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/AodContainerView;->setupClockContent(Lcom/miui/aod/common/StyleInfo;)V

    invoke-direct {p0}, Lcom/miui/aod/components/view/AodContainerView;->setupLabel()V

    return-object v0
.end method
