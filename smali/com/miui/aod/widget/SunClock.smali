.class public Lcom/miui/aod/widget/SunClock;
.super Ljava/lang/Object;
.source "SunClock.java"

# interfaces
.implements Lcom/miui/aod/widget/IAodClock;


# instance fields
.field private m24HourFormat:Z

.field protected mCal:Lmiui/date/Calendar;

.field private mClockHorizontal:Landroid/widget/TextView;

.field private mClockView:Lcom/miui/aod/widget/SunClockView;

.field protected mContext:Landroid/content/Context;

.field private mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/aod/widget/SunClock;->mSize:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/widget/SunClock;->mContext:Landroid/content/Context;

    const v0, 0x7f1100bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/widget/SunClockView;

    iput-object v0, p0, Lcom/miui/aod/widget/SunClock;->mClockView:Lcom/miui/aod/widget/SunClockView;

    iget-object v0, p0, Lcom/miui/aod/widget/SunClock;->mClockView:Lcom/miui/aod/widget/SunClockView;

    iget v1, p0, Lcom/miui/aod/widget/SunClock;->mSize:I

    invoke-virtual {v0, v1}, Lcom/miui/aod/widget/SunClockView;->setSize(I)V

    const v0, 0x7f1100bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/SunClock;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "fonts/MitypeRoundedNormal.otf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/aod/widget/SunClock;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget p1, p0, Lcom/miui/aod/widget/SunClock;->mSize:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/widget/SunClock;->mClockHorizontal:Landroid/widget/TextView;

    const p1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_0
    return-void
.end method

.method public getLayoutResource()I
    .locals 0

    const p0, 0x7f03002c

    return p0
.end method

.method public setClockMask(II)V
    .locals 0

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

.method public updateTime(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/miui/aod/widget/SunClock;->m24HourFormat:Z

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0, p1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/miui/aod/widget/SunClock;->mCal:Lmiui/date/Calendar;

    iget-object p1, p0, Lcom/miui/aod/widget/SunClock;->mCal:Lmiui/date/Calendar;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    iget-boolean v0, p0, Lcom/miui/aod/widget/SunClock;->m24HourFormat:Z

    const/16 v1, 0xc

    if-nez v0, :cond_0

    if-le p1, v1, :cond_0

    add-int/lit8 p1, p1, -0xc

    :cond_0
    iget-boolean v0, p0, Lcom/miui/aod/widget/SunClock;->m24HourFormat:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    move p1, v1

    :cond_1
    iget-object v0, p0, Lcom/miui/aod/widget/SunClock;->mClockHorizontal:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/aod/widget/SunClock;->mClockHorizontal:Landroid/widget/TextView;

    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/miui/aod/widget/SunClock;->mCal:Lmiui/date/Calendar;

    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lmiui/date/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
