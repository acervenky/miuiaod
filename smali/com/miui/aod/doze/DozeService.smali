.class public Lcom/miui/aod/doze/DozeService;
.super Lcom/miui/aod/services/WrappedDreamService;
.source "DozeService.java"

# interfaces
.implements Lcom/miui/aod/doze/DozeMachine$Service;


# static fields
.field private static final AOD_START_DELAY:I = 0x12c

.field static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "DozeService"


# instance fields
.field private mAcquire:Z

.field private mDozeMachine:Lcom/miui/aod/doze/DozeMachine;

.field private mDreamStart:Z

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRunnable:Ljava/lang/Runnable;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/aod/services/WrappedDreamService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/doze/DozeService;->mDreamStart:Z

    new-instance v0, Lcom/miui/aod/doze/DozeService$1;

    invoke-direct {v0, p0}, Lcom/miui/aod/doze/DozeService$1;-><init>(Lcom/miui/aod/doze/DozeService;)V

    iput-object v0, p0, Lcom/miui/aod/doze/DozeService;->mRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/aod/doze/DozeService;->setDebug(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/aod/doze/DozeService;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/aod/doze/DozeService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/aod/doze/DozeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/doze/DozeService;->mAcquire:Z

    return p1
.end method

.method private start()V
    .locals 4

    invoke-super {p0}, Lcom/miui/aod/services/WrappedDreamService;->startDozing()V

    iget-boolean v0, p0, Lcom/miui/aod/doze/DozeService;->mAcquire:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/doze/DozeService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/aod/doze/DozeService$2;

    invoke-direct {v1, p0}, Lcom/miui/aod/doze/DozeService$2;-><init>(Lcom/miui/aod/doze/DozeService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/aod/doze/DozeService;->mDozeMachine:Lcom/miui/aod/doze/DozeMachine;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeService;->mDozeMachine:Lcom/miui/aod/doze/DozeMachine;

    invoke-virtual {p0, p2}, Lcom/miui/aod/doze/DozeMachine;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public fingerprintPressed(ZLjava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/miui/aod/services/WrappedDreamService;->onCreate()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/aod/doze/DozeService;->setWindowless(Z)V

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/doze/DozeService;->finish()V

    return-void

    :cond_0
    sget-boolean v1, Lcom/miui/aod/Utils;->SUPPORT_AOD:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/aod/doze/DozeService;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/aod/doze/DozeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/aod/widget/AODSettings;->AOD_MODE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/miui/aod/Utils;->isInvertColorsEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/miui/aod/Utils;->isGxzwSensor()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/miui/aod/Utils;->isUnlockWithFingerprintPossible(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/miui/aod/doze/DozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/aod/Utils;->getKeyguardNotificationStatus(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/miui/aod/doze/DozeService;->finish()V

    return-void

    :cond_3
    new-instance v1, Lcom/miui/aod/doze/DozeFactory;

    invoke-direct {v1}, Lcom/miui/aod/doze/DozeFactory;-><init>()V

    invoke-virtual {v1, p0}, Lcom/miui/aod/doze/DozeFactory;->assembleMachine(Lcom/miui/aod/doze/DozeService;)Lcom/miui/aod/doze/DozeMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/aod/doze/DozeService;->mDozeMachine:Lcom/miui/aod/doze/DozeMachine;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/miui/aod/doze/DozeService;->mHandler:Landroid/os/Handler;

    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/miui/aod/doze/DozeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/miui/aod/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/miui/aod/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "DozeService"

    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    invoke-super {p0}, Lcom/miui/aod/services/WrappedDreamService;->onDreamingStarted()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/aod/doze/DozeService;->mDreamStart:Z

    iget-object v0, p0, Lcom/miui/aod/doze/DozeService;->mDozeMachine:Lcom/miui/aod/doze/DozeMachine;

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->INITIALIZED:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/miui/aod/doze/DozeMachine;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    invoke-virtual {p0}, Lcom/miui/aod/doze/DozeService;->startDozing()V

    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    invoke-super {p0}, Lcom/miui/aod/services/WrappedDreamService;->onDreamingStopped()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/doze/DozeService;->mDreamStart:Z

    iget-object p0, p0, Lcom/miui/aod/doze/DozeService;->mDozeMachine:Lcom/miui/aod/doze/DozeMachine;

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->FINISH:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/miui/aod/doze/DozeMachine;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    return-void
.end method

.method public requestState(Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeService;->mDozeMachine:Lcom/miui/aod/doze/DozeMachine;

    invoke-virtual {p0, p1}, Lcom/miui/aod/doze/DozeMachine;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    return-void
.end method

.method public requestWakeUp()V
    .locals 0

    invoke-static {p0}, Lcom/miui/aod/utils/CommonUtils;->requestWakeUp(Landroid/content/Context;)V

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/aod/doze/DozeService;->mDreamStart:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/aod/services/WrappedDreamService;->setDozeScreenBrightness(I)V

    :cond_0
    return-void
.end method

.method public setDozeScreenState(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/aod/services/WrappedDreamService;->setDozeScreenState(I)V

    const-string p0, "DozeService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDozeScreenState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDozing()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/aod/doze/DozeService;->mAcquire:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/aod/doze/DozeService;->mAcquire:Z

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/doze/DozeService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/aod/doze/DozeService;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/aod/doze/DozeService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/doze/DozeService;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
