.class public Lcom/miui/aod/AnalyticsWrapper;
.super Ljava/lang/Object;
.source "AnalyticsWrapper.java"


# direct methods
.method public static init(Landroid/content/Context;)V
    .locals 4

    const-string v0, "2882303761517996425"

    const-string v1, "5741799662425"

    invoke-static {}, Lcom/miui/aod/AnalyticsWrapper;->resolveChannelName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lcom/xiaomi/stat/MiStat;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/stat/MiStat;->setInternationalRegion(ZLjava/lang/String;)V

    :cond_0
    const/16 p0, 0x8

    invoke-static {p0}, Lcom/xiaomi/stat/MiStat;->setUploadNetworkType(I)V

    invoke-static {v0}, Lcom/xiaomi/stat/MiStat;->setUseSystemUploadingService(Z)Z

    invoke-static {v3}, Lcom/xiaomi/stat/MiStat;->setExceptionCatcherEnabled(Z)V

    invoke-static {v3}, Lcom/xiaomi/stat/MiStat;->setDebugModeEnabled(Z)V

    return-void
.end method

.method private static resolveChannelName()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "MIUI10-alpha"

    return-object v0

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_1

    const-string v0, "MIUI10-dev"

    return-object v0

    :cond_1
    const-string v0, "MIUI10"

    return-object v0
.end method

.method public static trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/miui/aod/AnalyticsWrapper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 0

    invoke-static {p1, p0, p2}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method
