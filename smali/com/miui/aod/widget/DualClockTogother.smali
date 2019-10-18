.class public Lcom/miui/aod/widget/DualClockTogother;
.super Lcom/miui/aod/widget/HorizontalClock;
.source "DualClockTogother.java"


# instance fields
.field private m24HourFormat:Z

.field private mCal2:Lmiui/date/Calendar;

.field private mCity:Landroid/widget/TextView;

.field private mCity2:Landroid/widget/TextView;

.field private mCityName:Ljava/lang/String;

.field private mCityName2:Ljava/lang/String;

.field private mSize:I

.field private mTimeZone:Ljava/util/TimeZone;

.field private mTimeZone2:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/widget/HorizontalClock;-><init>(II)V

    iput p1, p0, Lcom/miui/aod/widget/DualClockTogother;->mSize:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/widget/DualClockTogother;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/aod/widget/DualClockTogother;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/MitypeRoundedNormal.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f1100c7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/aod/widget/DualClockTogother;->mClockHourView:Landroid/widget/TextView;

    const v1, 0x7f1100c8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/aod/widget/DualClockTogother;->mClockMinuteView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/aod/widget/DualClockTogother;->mClockHourView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/aod/widget/DualClockTogother;->mClockHourView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/aod/widget/DualClockTogother;->mClockMinuteView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/aod/widget/DualClockTogother;->mClockMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    const v1, 0x7f1100c0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/aod/widget/DualClockTogother;->mDateView:Landroid/widget/TextView;

    const v1, 0x7f1100bf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/aod/widget/DualClockTogother;->mClockHorizontal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/aod/widget/DualClockTogother;->mClockHorizontal:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/aod/widget/DualClockTogother;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    const v0, 0x7f1100c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/aod/widget/DualClockTogother;->mCity:Landroid/widget/TextView;

    const v1, 0x7f1100be

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/widget/GradientLinearLayout;

    iput-object v1, p0, Lcom/miui/aod/widget/DualClockTogother;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/DualClockTogother;->mCity:Landroid/widget/TextView;

    const v0, 0x7f1100c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/widget/DualClockTogother;->mCity2:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/aod/widget/DualClockTogother;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "local_city"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/widget/DualClockTogother;->mCityName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    iget-object p1, p0, Lcom/miui/aod/widget/DualClockTogother;->mTimeZone2:Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/widget/AODSettings;->getNamebyZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/widget/DualClockTogother;->mCityName2:Ljava/lang/String;

    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    iget v0, p0, Lcom/miui/aod/widget/DualClockTogother;->mSize:I

    if-nez v0, :cond_0

    const p0, 0x7f030027

    return p0

    :cond_0
    iget p0, p0, Lcom/miui/aod/widget/DualClockTogother;->mSize:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const p0, 0x7f030028

    return p0

    :cond_1
    const p0, 0x7f030026

    return p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/DualClockTogother;->mTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public setTimeZone2(Ljava/util/TimeZone;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/DualClockTogother;->mTimeZone2:Ljava/util/TimeZone;

    return-void
.end method

.method public updateTime(Z)V
    .locals 11

    iput-boolean p1, p0, Lcom/miui/aod/widget/DualClockTogother;->m24HourFormat:Z

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0, p1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/miui/aod/widget/DualClockTogother;->mCal:Lmiui/date/Calendar;

    new-instance v0, Lmiui/date/Calendar;

    iget-object v1, p0, Lcom/miui/aod/widget/DualClockTogother;->mTimeZone2:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/miui/aod/widget/DualClockTogother;->mCal2:Lmiui/date/Calendar;

    iget-object v0, p0, Lcom/miui/aod/widget/DualClockTogother;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->getHourMinformat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object p1, p0, Lcom/miui/aod/widget/DualClockTogother;->mCal:Lmiui/date/Calendar;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    iget-boolean v0, p0, Lcom/miui/aod/widget/DualClockTogother;->m24HourFormat:Z

    const/16 v1, 0xc

    if-nez v0, :cond_0

    if-le p1, v1, :cond_0

    add-int/lit8 p1, p1, -0xc

    :cond_0
    iget-boolean v0, p0, Lcom/miui/aod/widget/DualClockTogother;->m24HourFormat:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    move p1, v1

    :cond_1
    iget-object v0, p0, Lcom/miui/aod/widget/DualClockTogother;->mClockHourView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/aod/widget/DualClockTogother;->mClockHourView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/aod/widget/DualClockTogother;->mClockMinuteView:Landroid/widget/TextView;

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/aod/widget/DualClockTogother;->mClockMinuteView:Landroid/widget/TextView;

    const-string v4, "%02d"

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/aod/widget/DualClockTogother;->mCal:Lmiui/date/Calendar;

    invoke-virtual {v6, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/aod/widget/DualClockTogother;->mClockHorizontal:Landroid/widget/TextView;

    const/4 v4, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/aod/widget/DualClockTogother;->mClockHorizontal:Landroid/widget/TextView;

    const-string v5, "%d:%02d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    iget-object p1, p0, Lcom/miui/aod/widget/DualClockTogother;->mCal:Lmiui/date/Calendar;

    invoke-virtual {p1, v1}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p1, p0, Lcom/miui/aod/widget/DualClockTogother;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/aod/widget/DualClockTogother;->m24HourFormat:Z

    if-eqz v0, :cond_5

    const v0, 0x7f090023

    goto :goto_0

    :cond_5
    const v0, 0x7f090024

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/aod/widget/DualClockTogother;->mDateView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/aod/widget/DualClockTogother;->mCal:Lmiui/date/Calendar;

    invoke-virtual {v5, p1}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/aod/widget/DualClockTogother;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/aod/widget/DualClockTogother;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    iget-object v0, p0, Lcom/miui/aod/widget/DualClockTogother;->mTimeZone2:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x3c

    rem-long v7, v0, v5

    const-wide/16 v9, 0x0

    cmp-long p1, v7, v9

    if-nez p1, :cond_7

    div-long/2addr v0, v5

    cmp-long p1, v0, v9

    if-lez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    long-to-double v5, v0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    div-double/2addr v5, v7

    cmp-long p1, v0, v9

    if-lez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_3
    iget-object v5, p0, Lcom/miui/aod/widget/DualClockTogother;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v6, p0, Lcom/miui/aod/widget/DualClockTogother;->m24HourFormat:Z

    if-eqz v6, :cond_9

    const v6, 0x7f09006d

    goto :goto_4

    :cond_9
    const v6, 0x7f09006e

    :goto_4
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/aod/widget/DualClockTogother;->mCity2:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/aod/widget/DualClockTogother;->mCal2:Lmiui/date/Calendar;

    invoke-virtual {v8, v5}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/aod/widget/DualClockTogother;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v8, 0x7f0a0000

    long-to-int v0, v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object p0, p0, Lcom/miui/aod/widget/DualClockTogother;->mCityName2:Ljava/lang/String;

    aput-object p0, v1, v3

    invoke-virtual {v5, v8, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
