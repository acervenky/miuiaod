.class public Lcom/miui/aod/category/DualClockCategoryInfo;
.super Lcom/miui/aod/category/CategoryInfo;
.source "DualClockCategoryInfo.java"


# instance fields
.field protected mDualStyle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dual_clock_style"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "dual_clock"

    invoke-direct {p0, v0}, Lcom/miui/aod/category/CategoryInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createAodClock(I)Lcom/miui/aod/widget/IAodClock;
    .locals 1

    new-instance p0, Lcom/miui/aod/widget/HorizontalClock;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/widget/HorizontalClock;-><init>(II)V

    return-object p0
.end method

.method public createDualAodClock1(I)Lcom/miui/aod/widget/IAodClock;
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/category/DualClockCategoryInfo;->mDualStyle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dual_default"

    iget-object v1, p0, Lcom/miui/aod/category/DualClockCategoryInfo;->mDualStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "dual_panel"

    iget-object p0, p0, Lcom/miui/aod/category/DualClockCategoryInfo;->mDualStyle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/aod/widget/ClockPanel;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/widget/ClockPanel;-><init>(IZ)V

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/miui/aod/widget/DualClockTogother;

    invoke-direct {p0, p1}, Lcom/miui/aod/widget/DualClockTogother;-><init>(I)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p0, Lcom/miui/aod/widget/DualClock;

    invoke-direct {p0, p1}, Lcom/miui/aod/widget/DualClock;-><init>(I)V

    :goto_1
    return-object p0
.end method

.method public createDualAodClock2(I)Lcom/miui/aod/widget/IAodClock;
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/category/DualClockCategoryInfo;->mDualStyle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dual_default"

    iget-object v1, p0, Lcom/miui/aod/category/DualClockCategoryInfo;->mDualStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "dual_panel"

    iget-object p0, p0, Lcom/miui/aod/category/DualClockCategoryInfo;->mDualStyle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/aod/widget/ClockPanel;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/widget/ClockPanel;-><init>(IZ)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p0, Lcom/miui/aod/widget/DualClock;

    invoke-direct {p0, p1}, Lcom/miui/aod/widget/DualClock;-><init>(I)V

    :goto_1
    return-object p0
.end method

.method public getPresetStyle()Lcom/miui/aod/common/StyleInfo$PresetStyle;
    .locals 3

    new-instance p0, Lcom/miui/aod/common/StyleInfo$PresetStyle;

    const-string v0, "{}"

    const-string v1, "{\"dual_clock_style\":\"dual_panel\"}"

    const-string v2, "{\"dual_clock_style\":\"dual_together\"}"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/miui/aod/common/StyleInfo$PresetStyle;-><init>(I[Ljava/lang/String;)V

    return-object p0
.end method

.method public isBatterySwitchOn()Z
    .locals 0

    sget-object p0, Lcom/miui/aod/Application;->sInstance:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/aod/widget/AODSettings;->getSingleClockStyleInfo(Landroid/content/Context;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->isBatterySwitchOn()Z

    move-result p0

    return p0
.end method

.method public isNotificationSwitchOn()Z
    .locals 0

    sget-object p0, Lcom/miui/aod/Application;->sInstance:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/aod/widget/AODSettings;->getSingleClockStyleInfo(Landroid/content/Context;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->isNotificationSwitchOn()Z

    move-result p0

    return p0
.end method

.method public supportDualClock()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
