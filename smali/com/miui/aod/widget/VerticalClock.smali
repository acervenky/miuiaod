.class public Lcom/miui/aod/widget/VerticalClock;
.super Lcom/miui/aod/widget/HorizontalClock;
.source "VerticalClock.java"


# instance fields
.field protected mClockView:Lcom/miui/aod/widget/VerticalClockView;

.field protected mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/widget/HorizontalClock;-><init>(II)V

    iput p1, p0, Lcom/miui/aod/widget/VerticalClock;->mSize:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/widget/VerticalClock;->mContext:Landroid/content/Context;

    const v0, 0x7f1100bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/widget/VerticalClockView;

    iput-object v0, p0, Lcom/miui/aod/widget/VerticalClock;->mClockView:Lcom/miui/aod/widget/VerticalClockView;

    iget-object v0, p0, Lcom/miui/aod/widget/VerticalClock;->mClockView:Lcom/miui/aod/widget/VerticalClockView;

    iget v1, p0, Lcom/miui/aod/widget/VerticalClock;->mSize:I

    invoke-virtual {v0, v1}, Lcom/miui/aod/widget/VerticalClockView;->setSize(I)V

    const v0, 0x7f1100c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/VerticalClock;->mClockHourView:Landroid/widget/TextView;

    const v0, 0x7f1100c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/VerticalClock;->mClockMinuteView:Landroid/widget/TextView;

    const v0, 0x7f1100c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/VerticalClock;->mDateView:Landroid/widget/TextView;

    const v0, 0x7f1100c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/VerticalClock;->mDateLunar:Landroid/widget/TextView;

    const v0, 0x7f1100bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/VerticalClock;->mClockHorizontal:Landroid/widget/TextView;

    const v0, 0x7f1100c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/VerticalClock;->mCity:Landroid/widget/TextView;

    const v0, 0x7f1100be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/widget/GradientLinearLayout;

    iput-object p1, p0, Lcom/miui/aod/widget/VerticalClock;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    return-void
.end method

.method public getLayoutResource()I
    .locals 0

    const p0, 0x7f03002d

    return p0
.end method

.method public setClockMask(II)V
    .locals 1

    iget p1, p0, Lcom/miui/aod/widget/VerticalClock;->mSize:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-lez p2, :cond_1

    iget-object p1, p0, Lcom/miui/aod/widget/VerticalClock;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    iget-object p0, p0, Lcom/miui/aod/widget/VerticalClock;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/miui/aod/resource/AodDrawables;->getDrawableForMask(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/aod/widget/GradientLinearLayout;->setGradientOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public updateTime(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/aod/widget/HorizontalClock;->updateTime(Z)V

    iget-object v0, p0, Lcom/miui/aod/widget/VerticalClock;->mClockHourView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/aod/widget/VerticalClock;->mCal:Lmiui/date/Calendar;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    if-nez p1, :cond_0

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0xc

    :cond_0
    if-nez p1, :cond_1

    if-nez v0, :cond_1

    move v0, v1

    :cond_1
    iget-object p0, p0, Lcom/miui/aod/widget/VerticalClock;->mClockHourView:Landroid/widget/TextView;

    const-string p1, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
