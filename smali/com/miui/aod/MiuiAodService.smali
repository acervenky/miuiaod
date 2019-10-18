.class public Lcom/miui/aod/MiuiAodService;
.super Landroid/app/Service;
.source "MiuiAodService.java"


# instance fields
.field private mBinder:Lcom/miui/aod/IMiuiAodService$Stub;

.field private mCallback:Lcom/miui/aod/IMiuiAodCallback;

.field private mHostCallback:Lcom/miui/aod/DozeHost$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/miui/aod/MiuiAodService$1;

    invoke-direct {v0, p0}, Lcom/miui/aod/MiuiAodService$1;-><init>(Lcom/miui/aod/MiuiAodService;)V

    iput-object v0, p0, Lcom/miui/aod/MiuiAodService;->mBinder:Lcom/miui/aod/IMiuiAodService$Stub;

    new-instance v0, Lcom/miui/aod/MiuiAodService$2;

    invoke-direct {v0, p0}, Lcom/miui/aod/MiuiAodService$2;-><init>(Lcom/miui/aod/MiuiAodService;)V

    iput-object v0, p0, Lcom/miui/aod/MiuiAodService;->mHostCallback:Lcom/miui/aod/DozeHost$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/MiuiAodService;)Lcom/miui/aod/IMiuiAodCallback;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/MiuiAodService;->mCallback:Lcom/miui/aod/IMiuiAodCallback;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/aod/MiuiAodService;Lcom/miui/aod/IMiuiAodCallback;)Lcom/miui/aod/IMiuiAodCallback;
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/MiuiAodService;->mCallback:Lcom/miui/aod/IMiuiAodCallback;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/MiuiAodService;->mBinder:Lcom/miui/aod/IMiuiAodService$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-boolean v0, Lcom/miui/aod/Utils;->SUPPORT_AOD:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/aod/MiuiAodService;->mHostCallback:Lcom/miui/aod/DozeHost$Callback;

    invoke-virtual {v0, p0}, Lcom/miui/aod/DozeHost;->addCallback(Lcom/miui/aod/DozeHost$Callback;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/aod/MiuiAodService;->mHostCallback:Lcom/miui/aod/DozeHost$Callback;

    invoke-virtual {v0, p0}, Lcom/miui/aod/DozeHost;->removeCallback(Lcom/miui/aod/DozeHost$Callback;)V

    return-void
.end method
