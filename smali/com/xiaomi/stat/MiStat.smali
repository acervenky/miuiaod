.class public Lcom/xiaomi/stat/MiStat;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/stat/e;


# direct methods
.method private static a()V
    .locals 2

    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must init sdk before use!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/stat/e;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/stat/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "duplicate sdk init!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setDebugModeEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->f(Z)V

    return-void
.end method

.method public static setExceptionCatcherEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->c(Z)V

    return-void
.end method

.method public static setInternationalRegion(ZLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public static setUploadNetworkType(I)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->a(I)V

    return-void
.end method

.method public static setUseSystemUploadingService(Z)Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->e(Z)Z

    move-result p0

    return p0
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method
