.class public Lcom/miui/aod/widget/ClockPanel;
.super Ljava/lang/Object;
.source "ClockPanel.java"

# interfaces
.implements Lcom/miui/aod/widget/IAodClock;


# instance fields
.field private m24HourFormat:Z

.field private mAodStyleName:Ljava/lang/String;

.field private mBatteryContainer:Landroid/view/View;

.field private mCity:Landroid/widget/TextView;

.field private mCityMarginBottom:I

.field private mCityPaddingTop:I

.field private mCityStyle:I

.field private mClockPanel:Lcom/miui/aod/widget/ClockPanelView;

.field private mContext:Landroid/content/Context;

.field private mDateLunar:Landroid/widget/TextView;

.field private mDateMarginTop:I

.field private mDateStyle:I

.field private mDateView:Landroid/widget/TextView;

.field protected mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

.field private mIsDual:Z

.field private mLunarDateMarginTop:I

.field private mSize:I

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/aod/widget/ClockPanel;-><init>(IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/aod/widget/ClockPanel;->mSize:I

    iput-boolean p2, p0, Lcom/miui/aod/widget/ClockPanel;->mIsDual:Z

    iput-object p3, p0, Lcom/miui/aod/widget/ClockPanel;->mAodStyleName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    const v0, 0x7f1100c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/widget/ClockPanelView;

    iput-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mClockPanel:Lcom/miui/aod/widget/ClockPanelView;

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mClockPanel:Lcom/miui/aod/widget/ClockPanelView;

    iget v1, p0, Lcom/miui/aod/widget/ClockPanel;->mSize:I

    iget-boolean v2, p0, Lcom/miui/aod/widget/ClockPanel;->mIsDual:Z

    iget-object v3, p0, Lcom/miui/aod/widget/ClockPanel;->mAodStyleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/aod/widget/ClockPanelView;->init(IZLjava/lang/String;)V

    const v0, 0x7f1100c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mDateView:Landroid/widget/TextView;

    const v0, 0x7f1100c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mDateLunar:Landroid/widget/TextView;

    const v0, 0x7f1100c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCity:Landroid/widget/TextView;

    iget v0, p0, Lcom/miui/aod/widget/ClockPanel;->mSize:I

    const v1, 0x7f0b00a5

    const v2, 0x7f0b0032

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/aod/widget/ClockPanel;->mIsDual:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c00b1

    goto :goto_0

    :cond_0
    const v0, 0x7f0c00b7

    :goto_0
    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mDateStyle:I

    const v0, 0x7f0c00a5

    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCityStyle:I

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0b010b

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mDateMarginTop:I

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mLunarDateMarginTop:I

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b00a6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCityPaddingTop:I

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCityMarginBottom:I

    iget-boolean v0, p0, Lcom/miui/aod/widget/ClockPanel;->mIsDual:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCity:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_1
    iget v0, p0, Lcom/miui/aod/widget/ClockPanel;->mSize:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/miui/aod/widget/ClockPanel;->mSize:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/miui/aod/widget/ClockPanel;->mIsDual:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0c00b0

    goto :goto_1

    :cond_3
    const v0, 0x7f0c00b4

    :goto_1
    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mDateStyle:I

    const v0, 0x7f0c00a4

    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCityStyle:I

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0b0108

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mDateMarginTop:I

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mLunarDateMarginTop:I

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCityPaddingTop:I

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCityMarginBottom:I

    goto :goto_5

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mAodStyleName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/aod/widget/FrameAnimationManager;->needFrameAnimation(Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/miui/aod/widget/ClockPanel;->mIsDual:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0c00b2

    goto :goto_3

    :cond_5
    const v0, 0x7f0c00b8

    :goto_3
    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mDateStyle:I

    const v0, 0x7f0c00a6

    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCityStyle:I

    iget-boolean v0, p0, Lcom/miui/aod/widget/ClockPanel;->mIsDual:Z

    const v2, 0x7f0b010c

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_4

    :cond_6
    move v0, v5

    :goto_4
    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mDateMarginTop:I

    iput v5, p0, Lcom/miui/aod/widget/ClockPanel;->mLunarDateMarginTop:I

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0b00a7

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCityPaddingTop:I

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCityMarginBottom:I

    iget-boolean v0, p0, Lcom/miui/aod/widget/ClockPanel;->mIsDual:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCity:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mDateView:Landroid/widget/TextView;

    iget v2, p0, Lcom/miui/aod/widget/ClockPanel;->mDateStyle:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mDateLunar:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mDateLunar:Landroid/widget/TextView;

    iget v2, p0, Lcom/miui/aod/widget/ClockPanel;->mDateStyle:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_8
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/miui/aod/widget/ClockPanel;->mDateMarginTop:I

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/miui/aod/widget/ClockPanel;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mDateLunar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/miui/aod/widget/ClockPanel;->mLunarDateMarginTop:I

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/miui/aod/widget/ClockPanel;->mDateLunar:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCity:Landroid/widget/TextView;

    iget v2, p0, Lcom/miui/aod/widget/ClockPanel;->mCityStyle:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCity:Landroid/widget/TextView;

    iget v2, p0, Lcom/miui/aod/widget/ClockPanel;->mCityPaddingTop:I

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCity:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/miui/aod/widget/ClockPanel;->mCityMarginBottom:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/miui/aod/widget/ClockPanel;->mCity:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCity:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_9

    iget v0, p0, Lcom/miui/aod/widget/ClockPanel;->mSize:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mClockPanel:Lcom/miui/aod/widget/ClockPanelView;

    invoke-virtual {v0}, Lcom/miui/aod/widget/ClockPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/aod/widget/ClockPanel;->mClockPanel:Lcom/miui/aod/widget/ClockPanelView;

    invoke-virtual {v1, v0}, Lcom/miui/aod/widget/ClockPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/miui/aod/widget/ClockPanel;->mIsDual:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "local_city"

    const/4 v5, -0x2

    invoke-static {v1, v2, v5}, Lcom/miui/aod/utils/MiuiSettingsUtils;->getStringFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/aod/widget/AODSettings;->getNamebyZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/miui/aod/widget/ClockPanel;->mCity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_6
    iget v0, p0, Lcom/miui/aod/widget/ClockPanel;->mSize:I

    if-ne v0, v3, :cond_c

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_7

    :cond_c
    iget v0, p0, Lcom/miui/aod/widget/ClockPanel;->mSize:I

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mCity:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    const v0, 0x7f1100be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/widget/GradientLinearLayout;

    iput-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    invoke-virtual {v0}, Lcom/miui/aod/widget/GradientLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/miui/aod/widget/ClockPanel;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    invoke-virtual {v1, v0}, Lcom/miui/aod/widget/GradientLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f1100b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/widget/ClockPanel;->mBatteryContainer:Landroid/view/View;

    iget-boolean p1, p0, Lcom/miui/aod/widget/ClockPanel;->mIsDual:Z

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/miui/aod/widget/ClockPanel;->mBatteryContainer:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method public getLayoutResource()I
    .locals 0

    const p0, 0x7f03003e

    return p0
.end method

.method public setClockMask(II)V
    .locals 1

    if-lez p1, :cond_1

    iget-object p2, p0, Lcom/miui/aod/widget/ClockPanel;->mDateView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/miui/aod/widget/ClockPanel;->mDateLunar:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/aod/widget/ClockPanel;->mDateLunar:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object p2, p0, Lcom/miui/aod/widget/ClockPanel;->mBatteryContainer:Landroid/view/View;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/aod/widget/ClockPanel;->mBatteryContainer:Landroid/view/View;

    const v0, 0x7f1100b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/aod/AODBatteryMeterView;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object p0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/miui/aod/AODBatteryMeterView;->setGradientOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/ClockPanel;->mTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public setTimeZone2(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public updateTime(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/miui/aod/widget/ClockPanel;->m24HourFormat:Z

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mTimeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mTimeZone:Ljava/util/TimeZone;

    :goto_0
    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1, v0}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iget-object v2, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/aod/Utils;->getHourMinformat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-boolean v2, p0, Lcom/miui/aod/widget/ClockPanel;->m24HourFormat:Z

    const/16 v3, 0xc

    if-nez v2, :cond_1

    if-le v0, v3, :cond_1

    add-int/lit8 v0, v0, -0xc

    :cond_1
    iget-boolean v2, p0, Lcom/miui/aod/widget/ClockPanel;->m24HourFormat:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    move v0, v3

    :cond_2
    iget-object v2, p0, Lcom/miui/aod/widget/ClockPanel;->mClockPanel:Lcom/miui/aod/widget/ClockPanelView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/aod/widget/ClockPanel;->mClockPanel:Lcom/miui/aod/widget/ClockPanelView;

    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/miui/aod/widget/ClockPanelView;->setTime(II)V

    :cond_3
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/miui/aod/widget/AODSettings;->getDateFormat(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/aod/widget/ClockPanel;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mDateLunar:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/widget/AODSettings;->shouldShowLunarDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanel;->mDateLunar:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/miui/aod/widget/ClockPanel;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/miui/aod/widget/AODSettings;->getDateFormat(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
