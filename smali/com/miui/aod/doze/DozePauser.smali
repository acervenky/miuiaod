.class public Lcom/miui/aod/doze/DozePauser;
.super Ljava/lang/Object;
.source "DozePauser.java"

# interfaces
.implements Lcom/miui/aod/doze/DozeMachine$Part;


# static fields
.field public static final TAG:Ljava/lang/String; = "DozePauser"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mMachine:Lcom/miui/aod/doze/DozeMachine;

.field private mPausedTask:Lcom/miui/aod/util/CancelableWakeLockTask;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/miui/aod/doze/DozeMachine;Landroid/app/AlarmManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/miui/aod/doze/DozePauser;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    iput-object p2, p0, Lcom/miui/aod/doze/DozePauser;->mHandler:Landroid/os/Handler;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/miui/aod/doze/DozePauser;->mPowerManager:Landroid/os/PowerManager;

    iget-object p1, p0, Lcom/miui/aod/doze/DozePauser;->mPowerManager:Landroid/os/PowerManager;

    sget-object p2, Lcom/miui/aod/doze/DozePauser;->TAG:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;)Lcom/miui/aod/util/wakelock/WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/doze/DozePauser;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    new-instance p1, Lcom/miui/aod/util/CancelableWakeLockTask;

    new-instance p2, Lcom/miui/aod/doze/DozePauser$1;

    invoke-direct {p2, p0}, Lcom/miui/aod/doze/DozePauser$1;-><init>(Lcom/miui/aod/doze/DozePauser;)V

    iget-object p3, p0, Lcom/miui/aod/doze/DozePauser;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    iget-object p4, p0, Lcom/miui/aod/doze/DozePauser;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/miui/aod/doze/DozePauser;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/miui/aod/util/CancelableWakeLockTask;-><init>(Ljava/lang/Runnable;Lcom/miui/aod/util/wakelock/WakeLock;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/aod/doze/DozePauser;->mPausedTask:Lcom/miui/aod/util/CancelableWakeLockTask;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/doze/DozePauser;)Lcom/miui/aod/doze/DozeMachine;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/DozePauser;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    return-object p0
.end method


# virtual methods
.method public transitionTo(Lcom/miui/aod/doze/DozeMachine$State;Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 0

    sget-object p1, Lcom/miui/aod/doze/DozePauser$2;->$SwitchMap$com$miui$aod$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Lcom/miui/aod/doze/DozeMachine$State;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/miui/aod/doze/DozePauser;->mPausedTask:Lcom/miui/aod/util/CancelableWakeLockTask;

    invoke-virtual {p0}, Lcom/miui/aod/util/CancelableWakeLockTask;->remove()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/doze/DozePauser;->mPausedTask:Lcom/miui/aod/util/CancelableWakeLockTask;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/util/CancelableWakeLockTask;->execute(J)V

    :goto_0
    return-void
.end method
