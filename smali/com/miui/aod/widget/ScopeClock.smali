.class public Lcom/miui/aod/widget/ScopeClock;
.super Lcom/miui/aod/widget/HorizontalClock;
.source "ScopeClock.java"


# instance fields
.field private mClockView:Lcom/miui/aod/widget/ScopeClockView;

.field private mPanel:Ljava/lang/String;

.field private mSize:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/widget/HorizontalClock;-><init>(II)V

    iput p1, p0, Lcom/miui/aod/widget/ScopeClock;->mSize:I

    iput-object p2, p0, Lcom/miui/aod/widget/ScopeClock;->mPanel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/widget/ScopeClock;->mContext:Landroid/content/Context;

    const v0, 0x7f1100c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/widget/ScopeClockView;

    iput-object v0, p0, Lcom/miui/aod/widget/ScopeClock;->mClockView:Lcom/miui/aod/widget/ScopeClockView;

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClock;->mClockView:Lcom/miui/aod/widget/ScopeClockView;

    iget v1, p0, Lcom/miui/aod/widget/ScopeClock;->mSize:I

    iget-object v2, p0, Lcom/miui/aod/widget/ScopeClock;->mPanel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/aod/widget/ScopeClockView;->setSize(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClock;->mClockView:Lcom/miui/aod/widget/ScopeClockView;

    invoke-virtual {v0}, Lcom/miui/aod/widget/ScopeClockView;->startAnimation()V

    const v0, 0x7f1100c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/ScopeClock;->mDateView:Landroid/widget/TextView;

    const v0, 0x7f1100c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/ScopeClock;->mDateLunar:Landroid/widget/TextView;

    const v0, 0x7f1100bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/aod/widget/ScopeClock;->mClockHorizontal:Landroid/widget/TextView;

    const v1, 0x7f1100c2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/aod/widget/ScopeClock;->mCity:Landroid/widget/TextView;

    const v1, 0x7f1100be

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/widget/GradientLinearLayout;

    iput-object v1, p0, Lcom/miui/aod/widget/ScopeClock;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    const v1, 0x7f1100c7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/aod/widget/ScopeClock;->mClockHourView:Landroid/widget/TextView;

    const v1, 0x7f1100c8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/aod/widget/ScopeClock;->mClockMinuteView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/aod/widget/ScopeClock;->mClockHorizontal:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/aod/widget/ScopeClock;->mSize:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeClock;->mClockHourView:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeClock;->mClockHourView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/aod/widget/ScopeClock;->mClockMinuteView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeClock;->mClockMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/ScopeClock;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "fonts/MitypeRoundedNormal.otf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClock;->mClockHorizontal:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeClock;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/miui/aod/widget/ScopeClock;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/miui/aod/widget/GradientLinearLayout;->setPadding(IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getLayoutResource()I
    .locals 0

    const p0, 0x7f03002a

    return p0
.end method

.method public setClockMask(II)V
    .locals 0

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeClock;->mGradientLayout:Lcom/miui/aod/widget/GradientLinearLayout;

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeClock;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/miui/aod/resource/AodDrawables;->getDrawableForMask(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/aod/widget/GradientLinearLayout;->setGradientOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
