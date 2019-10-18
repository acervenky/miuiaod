.class public Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;
.super Lcom/miui/aod/category/CategoryInfo;
.source "AnimateClockPanelCategoryInfo.java"


# instance fields
.field protected mPanel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "panel"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "animate_clock_panel"

    invoke-direct {p0, v0}, Lcom/miui/aod/category/CategoryInfo;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->setBgCluster([I)V

    return-void
.end method


# virtual methods
.method public createAodClock(I)Lcom/miui/aod/widget/IAodClock;
    .locals 2

    new-instance v0, Lcom/miui/aod/widget/ClockPanel;

    iget-object v1, p0, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->mPanel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "clock_panel_first"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->mPanel:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/miui/aod/widget/ClockPanel;-><init>(IZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->getClockBgResID()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->getClockBgResID()I

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public getColorName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/miui/aod/category/CategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "light_purple"

    :cond_0
    return-object p0
.end method

.method public getPanel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;->mPanel:Ljava/lang/String;

    return-object p0
.end method

.method public getPresetStyle()Lcom/miui/aod/common/StyleInfo$PresetStyle;
    .locals 3

    new-instance p0, Lcom/miui/aod/common/StyleInfo$PresetStyle;

    const-string v0, "{}"

    const-string v1, "{\"panel\":\"clock_panel_second\",\"color\":\"light_blue\"}"

    const-string v2, "{\"panel\":\"clock_panel_third\",\"color\":\"light_orange\"}"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090035

    invoke-direct {p0, v1, v0}, Lcom/miui/aod/common/StyleInfo$PresetStyle;-><init>(I[Ljava/lang/String;)V

    return-object p0
.end method

.method public getStyleSelectViewName()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/miui/aod/components/view/ClockStyleSelectView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitleResId()I
    .locals 0

    const p0, 0x7f090021

    return p0
.end method

.method public getTranslationY(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b004a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public hasAnimation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
