.class public Lcom/miui/aod/category/OnelineCategoryInfo;
.super Lcom/miui/aod/category/CategoryInfo;
.source "OnelineCategoryInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "oneline"

    invoke-direct {p0, v0}, Lcom/miui/aod/category/CategoryInfo;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/aod/category/OnelineCategoryInfo;->setBgCluster([I)V

    return-void
.end method


# virtual methods
.method public createAodClock(I)Lcom/miui/aod/widget/IAodClock;
    .locals 0

    new-instance p0, Lcom/miui/aod/widget/OneLineClock;

    invoke-direct {p0, p1}, Lcom/miui/aod/widget/OneLineClock;-><init>(I)V

    return-object p0
.end method

.method protected getDefaultClockBg()I
    .locals 0

    invoke-virtual {p0}, Lcom/miui/aod/category/OnelineCategoryInfo;->getDefaultClockBgName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/aod/resource/ImagePool;->getImageRes(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getDefaultClockBgName()Ljava/lang/String;
    .locals 0

    const-string p0, "tree"

    return-object p0
.end method

.method public getPreviewTopPaddingResId()I
    .locals 0

    const p0, 0x7f0b00b9

    return p0
.end method

.method public getStyleSelectViewName()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitleResId()I
    .locals 0

    const p0, 0x7f09003f

    return p0
.end method

.method public getTopMargin(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0170

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public setBg(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/miui/aod/category/CategoryInfo;->setBg(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1100ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b00e8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    sget v0, Lcom/miui/aod/category/CategoryConstants;->SSMALL_RADIO:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0b00e7

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sget p2, Lcom/miui/aod/category/CategoryConstants;->SSMALL_RADIO:F

    mul-float/2addr p0, p2

    float-to-int p0, p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 p0, 0x51

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    return-void
.end method

.method public supportHideClock()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
