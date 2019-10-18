.class public Lcom/miui/aod/category/ClockPanelCategoryInfo;
.super Lcom/miui/aod/category/CategoryInfo;
.source "ClockPanelCategoryInfo.java"


# instance fields
.field protected mPanel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "panel"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "clock_panel"

    invoke-direct {p0, v0}, Lcom/miui/aod/category/CategoryInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compareToForPresetStyle(Lcom/miui/aod/common/StyleInfo;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/aod/category/CategoryInfo;->compareToForPresetStyle(Lcom/miui/aod/common/StyleInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/category/ClockPanelCategoryInfo;->mPanel:Ljava/lang/String;

    check-cast p1, Lcom/miui/aod/category/ClockPanelCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public createAodClock(I)Lcom/miui/aod/widget/IAodClock;
    .locals 2

    new-instance v0, Lcom/miui/aod/widget/ClockPanel;

    iget-object v1, p0, Lcom/miui/aod/category/ClockPanelCategoryInfo;->mPanel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "CLOCK_STYLE_STATIC_1"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/category/ClockPanelCategoryInfo;->mPanel:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/miui/aod/widget/ClockPanel;-><init>(IZLjava/lang/String;)V

    return-object v0
.end method

.method public createDualAodClock1(I)Lcom/miui/aod/widget/IAodClock;
    .locals 2

    new-instance v0, Lcom/miui/aod/widget/ClockPanel;

    iget-object v1, p0, Lcom/miui/aod/category/ClockPanelCategoryInfo;->mPanel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "CLOCK_STYLE_STATIC_1"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/category/ClockPanelCategoryInfo;->mPanel:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p0}, Lcom/miui/aod/widget/ClockPanel;-><init>(IZLjava/lang/String;)V

    return-object v0
.end method

.method public createDualAodClock2(I)Lcom/miui/aod/widget/IAodClock;
    .locals 2

    new-instance v0, Lcom/miui/aod/widget/ClockPanel;

    iget-object v1, p0, Lcom/miui/aod/category/ClockPanelCategoryInfo;->mPanel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "CLOCK_STYLE_STATIC_1"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/category/ClockPanelCategoryInfo;->mPanel:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p0}, Lcom/miui/aod/widget/ClockPanel;-><init>(IZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/miui/aod/category/ClockPanelCategoryInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/miui/aod/category/ClockPanelCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getClockBgResID()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getClockBgResID()I

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public getPanel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/category/ClockPanelCategoryInfo;->mPanel:Ljava/lang/String;

    return-object p0
.end method

.method public getPresetStyle()Lcom/miui/aod/common/StyleInfo$PresetStyle;
    .locals 7

    new-instance p0, Lcom/miui/aod/common/StyleInfo$PresetStyle;

    const-string v0, "{}"

    const-string v1, "{\"panel\":\"CLOCK_STYLE_STATIC_2\"}"

    const-string v2, "{\"panel\":\"CLOCK_STYLE_STATIC_3\"}"

    const-string v3, "{\"panel\":\"CLOCK_STYLE_STATIC_4\"}"

    const-string v4, "{\"panel\":\"CLOCK_STYLE_STATIC_5\"}"

    const-string v5, "{\"panel\":\"CLOCK_STYLE_STATIC_6\"}"

    const-string v6, "{\"panel\":\"CLOCK_STYLE_STATIC_7\"}"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

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

    const p0, 0x7f090057

    return p0
.end method

.method public setPanel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/category/ClockPanelCategoryInfo;->mPanel:Ljava/lang/String;

    return-void
.end method

.method public supportDualClock()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
