.class public Lcom/miui/aod/widget/HorizontalClock;
.super Ljava/lang/Object;
.source "HorizontalClock.java"

# interfaces
.implements Lcom/miui/aod/widget/IAodClock;


# instance fields
.field private m24HourFormat:Z

.field protected mCal:Lmiui/date/Calendar;

.field protected mCity:Landroid/widget/TextView;

.field protected mClockHorizontal:Landroid/widget/TextView;

.field protected mClockHourView:Landroid/widget/TextView;

.field protected mClockMinuteView:Landroid/widget/TextView;

.field private mClockView:Lcom/miui/aod/widget/HorizontalClockView;

.field protected mContext:Landroid/content/Context;

.field protected mDateLunar:Landroid/widget/TextView;

.field protected mDateView:Landroid/widget/TextView;

.field protected mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

.field private mLayoutGravity:I

.field private mSize:I

.field private mStyleInfo:Lcom/miui/aod/common/StyleInfo;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/aod/widget/HorizontalClock;->mSize:I

    iput p2, p0, Lcom/miui/aod/widget/HorizontalClock;->mLayoutGravity:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mContext:Landroid/content/Context;

    const v0, 0x7f1100bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/widget/HorizontalClockView;

    iput-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockView:Lcom/miui/aod/widget/HorizontalClockView;

    iget-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockView:Lcom/miui/aod/widget/HorizontalClockView;

    iget v1, p0, Lcom/miui/aod/widget/HorizontalClock;->mSize:I

    iget v2, p0, Lcom/miui/aod/widget/HorizontalClock;->mLayoutGravity:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/aod/widget/HorizontalClockView;->init(II)V

    iget v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mSize:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mLayoutGravity:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockView:Lcom/miui/aod/widget/HorizontalClockView;

    invoke-virtual {v0}, Lcom/miui/aod/widget/HorizontalClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b00aa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockView:Lcom/miui/aod/widget/HorizontalClockView;

    invoke-virtual {v3, v0, v2, v2, v2}, Lcom/miui/aod/widget/HorizontalClockView;->setPadding(IIII)V

    :cond_0
    const v0, 0x7f1100c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockHourView:Landroid/widget/TextView;

    const v0, 0x7f1100c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockMinuteView:Landroid/widget/TextView;

    const v0, 0x7f1100c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mDateView:Landroid/widget/TextView;

    const v0, 0x7f1100c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mDateLunar:Landroid/widget/TextView;

    const v0, 0x7f1100bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockHorizontal:Landroid/widget/TextView;

    const v0, 0x7f1100c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mCity:Landroid/widget/TextView;

    const v0, 0x7f1100be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/widget/GradientLinearLayout;

    iput-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    iget v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mSize:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0124

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mLayoutGravity:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mLayoutGravity:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0033

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    iget-object p0, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0b0121

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, v0, p1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    iget p0, p0, Lcom/miui/aod/widget/HorizontalClock;->mLayoutGravity:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const p0, 0x7f030025

    goto :goto_0

    :cond_0
    const p0, 0x7f030021

    :goto_0
    return p0
.end method

.method public setClockMask(II)V
    .locals 1

    iget p1, p0, Lcom/miui/aod/widget/HorizontalClock;->mSize:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-lez p2, :cond_1

    iget-object p1, p0, Lcom/miui/aod/widget/HorizontalClock;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    iget-object p0, p0, Lcom/miui/aod/widget/HorizontalClock;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/miui/aod/resource/AodDrawables;->getDrawableForMask(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/aod/widget/GradientLinearLayout;->setGradientOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public setTimeZone2(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public update(Lcom/miui/aod/common/StyleInfo;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/HorizontalClock;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    return-void
.end method

.method public updateTime(Z)V
    .locals 8

    iput-boolean p1, p0, Lcom/miui/aod/widget/HorizontalClock;->m24HourFormat:Z

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1, v0}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v1, p0, Lcom/miui/aod/widget/HorizontalClock;->mCal:Lmiui/date/Calendar;

    iget-object v1, p0, Lcom/miui/aod/widget/HorizontalClock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/aod/Utils;->getHourMinformat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mCal:Lmiui/date/Calendar;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/miui/aod/widget/HorizontalClock;->m24HourFormat:Z

    const/16 v2, 0xc

    if-nez v1, :cond_0

    if-le v0, v2, :cond_0

    add-int/lit8 v0, v0, -0xc

    :cond_0
    iget-boolean v1, p0, Lcom/miui/aod/widget/HorizontalClock;->m24HourFormat:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    move v0, v2

    :cond_1
    iget-object v1, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockHourView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockHourView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockMinuteView:Landroid/widget/TextView;

    const/16 v2, 0x14

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockMinuteView:Landroid/widget/TextView;

    const-string v5, "%02d"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/aod/widget/HorizontalClock;->mCal:Lmiui/date/Calendar;

    invoke-virtual {v7, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockHorizontal:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/aod/widget/HorizontalClock;->mClockHorizontal:Landroid/widget/TextView;

    const-string v5, "%d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    iget-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mCal:Lmiui/date/Calendar;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v4}, Lcom/miui/aod/widget/AODSettings;->getDateFormat(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/aod/widget/HorizontalClock;->mDateView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/aod/widget/HorizontalClock;->mCal:Lmiui/date/Calendar;

    invoke-virtual {v2, v0}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mDateLunar:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/widget/AODSettings;->shouldShowLunarDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mDateLunar:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/aod/widget/HorizontalClock;->mCal:Lmiui/date/Calendar;

    iget-object v2, p0, Lcom/miui/aod/widget/HorizontalClock;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v3}, Lcom/miui/aod/widget/AODSettings;->getDateFormat(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p1, p0, Lcom/miui/aod/widget/HorizontalClock;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/aod/widget/HorizontalClock;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->isChangeColorAlongTime()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/aod/widget/HorizontalClock;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    invoke-virtual {p1}, Lcom/miui/aod/widget/GradientLinearLayout;->getGradientOverlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {}, Lcom/miui/aod/resource/AodDrawables;->get24GradientDrawableRes()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/miui/aod/widget/HorizontalClock;->setClockMask(II)V

    iget-object v0, p0, Lcom/miui/aod/widget/HorizontalClock;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    invoke-virtual {v0}, Lcom/miui/aod/widget/GradientLinearLayout;->getGradientOverlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_6

    iget-object p0, p0, Lcom/miui/aod/widget/HorizontalClock;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    invoke-virtual {p0}, Lcom/miui/aod/widget/GradientLinearLayout;->invalidate()V

    :cond_6
    return-void
.end method
