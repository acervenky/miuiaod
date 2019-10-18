.class public Lcom/miui/aod/widget/PaintVerticalClock;
.super Lcom/miui/aod/widget/VerticalClock;
.source "PaintVerticalClock.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/widget/VerticalClock;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/aod/widget/VerticalClock;->bindView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/aod/widget/PaintVerticalClock;->mClockView:Lcom/miui/aod/widget/VerticalClockView;

    invoke-virtual {p1}, Lcom/miui/aod/widget/VerticalClockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/miui/aod/widget/PaintVerticalClock;->mSize:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/widget/PaintVerticalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/aod/widget/PaintVerticalClock;->mSize:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/widget/PaintVerticalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/aod/widget/PaintVerticalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object p0, p0, Lcom/miui/aod/widget/PaintVerticalClock;->mClockView:Lcom/miui/aod/widget/VerticalClockView;

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/VerticalClockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
