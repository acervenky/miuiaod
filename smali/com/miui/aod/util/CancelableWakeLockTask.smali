.class public Lcom/miui/aod/util/CancelableWakeLockTask;
.super Ljava/lang/Object;
.source "CancelableWakeLockTask.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastWrappedTask:Ljava/lang/Runnable;

.field private mLockCount:I

.field private mTag:Ljava/lang/String;

.field private mTask:Ljava/lang/Runnable;

.field private mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/miui/aod/util/wakelock/WakeLock;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mTask:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    iput-object p3, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$010(Lcom/miui/aod/util/CancelableWakeLockTask;)I
    .locals 2

    iget v0, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mLockCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/aod/util/CancelableWakeLockTask;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mTask:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public execute(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/aod/util/CancelableWakeLockTask;->remove()V

    iget-object v0, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    new-instance v1, Lcom/miui/aod/util/CancelableWakeLockTask$1;

    invoke-direct {v1, p0}, Lcom/miui/aod/util/CancelableWakeLockTask$1;-><init>(Lcom/miui/aod/util/CancelableWakeLockTask;)V

    invoke-interface {v0, v1}, Lcom/miui/aod/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mLastWrappedTask:Ljava/lang/Runnable;

    iget v0, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mLockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mLockCount:I

    iget-object v0, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mLastWrappedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public remove()V
    .locals 3

    iget v0, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mLockCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    invoke-interface {v0}, Lcom/miui/aod/util/wakelock/WakeLock;->release()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mLockCount:I

    :cond_0
    iget v0, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mLockCount:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mLastWrappedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " wake count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/aod/util/CancelableWakeLockTask;->mLockCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
