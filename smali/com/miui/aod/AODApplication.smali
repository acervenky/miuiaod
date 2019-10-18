.class public Lcom/miui/aod/AODApplication;
.super Lmiui/external/ApplicationDelegate;
.source "AODApplication.java"


# static fields
.field private static sBatteryController:Lcom/miui/aod/util/BatteryController;

.field private static sHost:Lcom/miui/aod/DozeHost;


# instance fields
.field private mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    return-void
.end method

.method private doSelfProtect()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/miui/aod/AODApplication;->mToken:Landroid/os/Binder;

    iget-object p0, p0, Lcom/miui/aod/AODApplication;->mToken:Landroid/os/Binder;

    invoke-static {p0}, Lcom/miui/aod/utils/CommonUtils;->setProcessForeground(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AODApplication"

    const-string v1, "setProcessForeground"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static getBatteryController()Lcom/miui/aod/util/BatteryController;
    .locals 1

    sget-object v0, Lcom/miui/aod/AODApplication;->sBatteryController:Lcom/miui/aod/util/BatteryController;

    return-object v0
.end method

.method public static getHost()Lcom/miui/aod/DozeHost;
    .locals 1

    sget-object v0, Lcom/miui/aod/AODApplication;->sHost:Lcom/miui/aod/DozeHost;

    return-object v0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/aod/DozeHost;

    invoke-direct {v0, p0}, Lcom/miui/aod/DozeHost;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/aod/AODApplication;->sHost:Lcom/miui/aod/DozeHost;

    invoke-static {p0}, Lcom/miui/aod/util/BatteryController;->getInstance(Landroid/content/Context;)Lcom/miui/aod/util/BatteryController;

    move-result-object v0

    sput-object v0, Lcom/miui/aod/AODApplication;->sBatteryController:Lcom/miui/aod/util/BatteryController;

    invoke-static {p0}, Lcom/miui/aod/Utils;->updateTouchMode(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/aod/AODApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Theme.Light"

    const-string v2, "style"

    const-string v3, "miui"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/aod/AODApplication;->setTheme(I)V

    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    invoke-direct {p0}, Lcom/miui/aod/AODApplication;->doSelfProtect()V

    invoke-virtual {p0}, Lcom/miui/aod/AODApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/aod/AODApplication;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/aod/AODApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/aod/AnalyticsWrapper;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/aod/AODApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/aod/AnalyticalDataCollectorJobService;->schedule(Landroid/content/Context;)V

    return-void
.end method
