.class public Lcom/miui/aod/widget/DualClock;
.super Ljava/lang/Object;
.source "DualClock.java"

# interfaces
.implements Lcom/miui/aod/widget/IAodClock;


# instance fields
.field private m24HourFormat:Z

.field private mCity:Landroid/widget/TextView;

.field private mClockHorizontal:Landroid/widget/TextView;

.field private mClockHourView:Landroid/widget/TextView;

.field private mClockMinuteView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDateView:Landroid/widget/TextView;

.field protected mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

.field private mSize:I

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/aod/widget/DualClock;->mSize:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/widget/DualClock;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/miui/aod/widget/DualClock;->mSize:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/aod/widget/DualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/widget/DualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/MitypeRoundedNormal.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f1100c7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/aod/widget/DualClock;->mClockHourView:Landroid/widget/TextView;

    const v1, 0x7f1100c8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/aod/widget/DualClock;->mClockMinuteView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/aod/widget/DualClock;->mClockHourView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/aod/widget/DualClock;->mClockHourView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/aod/widget/DualClock;->mClockMinuteView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/aod/widget/DualClock;->mClockMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    const v1, 0x7f1100c0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/aod/widget/DualClock;->mDateView:Landroid/widget/TextView;

    const v1, 0x7f1100bf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/aod/widget/DualClock;->mClockHorizontal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/aod/widget/DualClock;->mClockHorizontal:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/aod/widget/DualClock;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    const v0, 0x7f1100c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/DualClock;->mCity:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/aod/widget/DualClock;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/aod/widget/DualClock;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/aod/widget/DualClock;->mCity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/aod/widget/DualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "local_city"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/aod/widget/DualClock;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/aod/widget/AODSettings;->getNamebyZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/miui/aod/widget/DualClock;->mCity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    const v0, 0x7f1100be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/widget/GradientLinearLayout;

    iput-object p1, p0, Lcom/miui/aod/widget/DualClock;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    return-void
.end method

.method public getLayoutResource()I
    .locals 2

    iget v0, p0, Lcom/miui/aod/widget/DualClock;->mSize:I

    if-nez v0, :cond_0

    const p0, 0x7f030023

    return p0

    :cond_0
    iget v0, p0, Lcom/miui/aod/widget/DualClock;->mSize:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget p0, p0, Lcom/miui/aod/widget/DualClock;->mSize:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f030024

    return p0

    :cond_2
    :goto_0
    const p0, 0x7f030022

    return p0
.end method

.method public setClockMask(II)V
    .locals 0

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/miui/aod/widget/DualClock;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    iget-object p0, p0, Lcom/miui/aod/widget/DualClock;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/miui/aod/resource/AodDrawables;->getDrawableForMask(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/aod/widget/GradientLinearLayout;->setGradientOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/DualClock;->mTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public setTimeZone2(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public updateTime(Z)V
    .locals 8

    iput-boolean p1, p0, Lcom/miui/aod/widget/DualClock;->m24HourFormat:Z

    iget-object p1, p0, Lcom/miui/aod/widget/DualClock;->mTimeZone:Ljava/util/TimeZone;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/widget/DualClock;->mTimeZone:Ljava/util/TimeZone;

    :goto_0
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0, p1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iget-object v1, p0, Lcom/miui/aod/widget/DualClock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/aod/Utils;->getHourMinformat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 p1, 0x12

    invoke-virtual {v0, p1}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    iget-boolean v1, p0, Lcom/miui/aod/widget/DualClock;->m24HourFormat:Z

    const/16 v2, 0xc

    if-nez v1, :cond_1

    if-le p1, v2, :cond_1

    add-int/lit8 p1, p1, -0xc

    :cond_1
    iget-boolean v1, p0, Lcom/miui/aod/widget/DualClock;->m24HourFormat:Z

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    move p1, v2

    :cond_2
    iget-object v1, p0, Lcom/miui/aod/widget/DualClock;->mClockHourView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/aod/widget/DualClock;->mClockHourView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/miui/aod/widget/DualClock;->mClockMinuteView:Landroid/widget/TextView;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/aod/widget/DualClock;->mClockMinuteView:Landroid/widget/TextView;

    const-string v5, "%02d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lcom/miui/aod/widget/DualClock;->mClockHorizontal:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/aod/widget/DualClock;->mClockHorizontal:Landroid/widget/TextView;

    const-string v5, "%d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p1, p0, Lcom/miui/aod/widget/DualClock;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-boolean v1, p0, Lcom/miui/aod/widget/DualClock;->m24HourFormat:Z

    if-eqz v1, :cond_6

    const v1, 0x7f090023

    goto :goto_1

    :cond_6
    const v1, 0x7f090024

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/aod/widget/DualClock;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
