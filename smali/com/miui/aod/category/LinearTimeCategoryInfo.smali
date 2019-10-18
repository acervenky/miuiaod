.class public Lcom/miui/aod/category/LinearTimeCategoryInfo;
.super Lcom/miui/aod/category/CategoryInfo;
.source "LinearTimeCategoryInfo.java"


# instance fields
.field private mIsLeftGravity:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_left_gravity"
    .end annotation
.end field

.field private mIsVertical:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_vertical"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "linear_timetext"

    invoke-direct {p0, v0}, Lcom/miui/aod/category/CategoryInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compareToForPresetStyle(Lcom/miui/aod/common/StyleInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isLeftGravity()Z

    move-result v1

    invoke-virtual {p0}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isLeftGravity()Z

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isVertical()Z

    move-result p1

    invoke-virtual {p0}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isVertical()Z

    move-result p0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public createAodClock(I)Lcom/miui/aod/widget/IAodClock;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isLeftGravity()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/miui/aod/widget/HorizontalClock;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/widget/HorizontalClock;-><init>(II)V

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lcom/miui/aod/category/LinearTimeCategoryInfo;->mIsVertical:Z

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/aod/widget/VerticalClock;

    invoke-direct {p0, p1}, Lcom/miui/aod/widget/VerticalClock;-><init>(I)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/miui/aod/widget/HorizontalClock;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/widget/HorizontalClock;-><init>(II)V

    return-object p0
.end method

.method public createDualAodClock1(I)Lcom/miui/aod/widget/IAodClock;
    .locals 0

    new-instance p0, Lcom/miui/aod/widget/DualClock;

    invoke-direct {p0, p1}, Lcom/miui/aod/widget/DualClock;-><init>(I)V

    return-object p0
.end method

.method public createDualAodClock2(I)Lcom/miui/aod/widget/IAodClock;
    .locals 0

    new-instance p0, Lcom/miui/aod/widget/DualClock;

    invoke-direct {p0, p1}, Lcom/miui/aod/widget/DualClock;-><init>(I)V

    return-object p0
.end method

.method public getClockMask()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/aod/resource/ColorPool;->getClockMaskY(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/miui/aod/category/CategoryInfo;->getClockMask()I

    move-result p0

    return p0
.end method

.method public getColorName()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lcom/miui/aod/category/CategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isLeftGravity()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/miui/aod/category/LinearTimeCategoryInfo;->mIsVertical:Z

    if-eqz p0, :cond_1

    const-string v0, "aod_gradient_2"

    goto :goto_0

    :cond_1
    const-string v0, "aod_gradient_1"

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getPresetStyle()Lcom/miui/aod/common/StyleInfo$PresetStyle;
    .locals 3

    new-instance p0, Lcom/miui/aod/common/StyleInfo$PresetStyle;

    const-string v0, "{}"

    const-string v1, "{\"is_vertical\":true}"

    const-string v2, "{\"is_left_gravity\":true}"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09005e

    invoke-direct {p0, v1, v0}, Lcom/miui/aod/common/StyleInfo$PresetStyle;-><init>(I[Ljava/lang/String;)V

    return-object p0
.end method

.method public getPreviewTopPaddingResId()I
    .locals 0

    const p0, 0x7f0b00bb

    return p0
.end method

.method public getStyleSelectViewName()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/miui/aod/components/view/ClockStyleSelectView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTopMargin(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0173

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/aod/category/CategoryInfo;->getTopMargin(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public isLeftGravity()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/category/LinearTimeCategoryInfo;->mIsLeftGravity:Z

    return p0
.end method

.method public isVertical()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/category/LinearTimeCategoryInfo;->mIsVertical:Z

    return p0
.end method

.method public setLeftGravity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/category/LinearTimeCategoryInfo;->mIsLeftGravity:Z

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/category/LinearTimeCategoryInfo;->mIsVertical:Z

    return-void
.end method

.method public supportChangeColorAlongTime()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportDualClock()Z
    .locals 0

    invoke-virtual {p0}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isLeftGravity()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
