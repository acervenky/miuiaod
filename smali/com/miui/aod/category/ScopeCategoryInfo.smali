.class public Lcom/miui/aod/category/ScopeCategoryInfo;
.super Lcom/miui/aod/category/CategoryInfo;
.source "ScopeCategoryInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "scope"

    invoke-direct {p0, v0}, Lcom/miui/aod/category/CategoryInfo;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/aod/category/ScopeCategoryInfo;->setBgCluster([I)V

    return-void
.end method


# virtual methods
.method public createAodClock(I)Lcom/miui/aod/widget/IAodClock;
    .locals 1

    new-instance v0, Lcom/miui/aod/widget/ScopeClock;

    invoke-virtual {p0}, Lcom/miui/aod/category/ScopeCategoryInfo;->getClockBgName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/miui/aod/widget/ScopeClock;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected getDefaultClockBgName()Ljava/lang/String;
    .locals 0

    const-string p0, "scope_a"

    return-object p0
.end method

.method public getPreviewTopPaddingResId()I
    .locals 0

    const p0, 0x7f0b00bc

    return p0
.end method

.method public getStartDelay()J
    .locals 2

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public getStyleSelectViewName()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitleResId()I
    .locals 0

    const p0, 0x7f09004e

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

.method public hasAnimation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportHideClock()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
