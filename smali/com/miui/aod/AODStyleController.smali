.class public Lcom/miui/aod/AODStyleController;
.super Ljava/lang/Object;
.source "AODStyleController.java"


# instance fields
.field mAodClock:Lcom/miui/aod/widget/IAodClock;

.field mAodClock2:Lcom/miui/aod/widget/IAodClock;

.field private mAodContainerView:Lcom/miui/aod/components/view/AodContainerView;

.field private mSize:I


# direct methods
.method public constructor <init>(ILandroid/view/LayoutInflater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/miui/aod/AODStyleController;->mAodClock:Lcom/miui/aod/widget/IAodClock;

    iput-object p2, p0, Lcom/miui/aod/AODStyleController;->mAodClock2:Lcom/miui/aod/widget/IAodClock;

    iput p1, p0, Lcom/miui/aod/AODStyleController;->mSize:I

    return-void
.end method


# virtual methods
.method public getStyleInfo(Landroid/content/Context;)Lcom/miui/aod/common/StyleInfo;
    .locals 1

    invoke-static {p1}, Lcom/miui/aod/widget/AODSettings;->getAodCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/aod/AODStyleController;->getStyleInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p0

    return-object p0
.end method

.method public getStyleInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;
    .locals 0

    invoke-static {p1, p2}, Lcom/miui/aod/category/CategoryFactory;->createStyleInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p0

    return-object p0
.end method

.method public handleUpdateTime(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/AODStyleController;->mAodContainerView:Lcom/miui/aod/components/view/AodContainerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/AODStyleController;->mAodContainerView:Lcom/miui/aod/components/view/AodContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/view/AodContainerView;->handleUpdateTime(Z)V

    :cond_0
    return-void
.end method

.method public inflateClockView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/aod/widget/AODSettings;->getAodCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/aod/AODStyleController;->inflateView(Landroid/view/View;Ljava/lang/String;)Lcom/miui/aod/widget/IAodClock;

    return-void
.end method

.method public inflateView(Landroid/view/View;Lcom/miui/aod/common/StyleInfo;)Lcom/miui/aod/widget/IAodClock;
    .locals 1

    instance-of v0, p1, Lcom/miui/aod/components/view/AodContainerView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/aod/components/view/AodContainerView;

    iput-object p1, p0, Lcom/miui/aod/AODStyleController;->mAodContainerView:Lcom/miui/aod/components/view/AodContainerView;

    iget-object p1, p0, Lcom/miui/aod/AODStyleController;->mAodContainerView:Lcom/miui/aod/components/view/AodContainerView;

    iget p0, p0, Lcom/miui/aod/AODStyleController;->mSize:I

    invoke-virtual {p1, p2, p0}, Lcom/miui/aod/components/view/AodContainerView;->update(Lcom/miui/aod/common/StyleInfo;I)Lcom/miui/aod/widget/IAodClock;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public inflateView(Landroid/view/View;Ljava/lang/String;)Lcom/miui/aod/widget/IAodClock;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/miui/aod/category/CategoryFactory;->createStyleInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/AODStyleController;->inflateView(Landroid/view/View;Lcom/miui/aod/common/StyleInfo;)Lcom/miui/aod/widget/IAodClock;

    move-result-object p0

    return-object p0
.end method

.method public inflateView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/aod/widget/IAodClock;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/miui/aod/category/CategoryFactory;->createStyleInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/AODStyleController;->inflateView(Landroid/view/View;Lcom/miui/aod/common/StyleInfo;)Lcom/miui/aod/widget/IAodClock;

    move-result-object p0

    return-object p0
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
