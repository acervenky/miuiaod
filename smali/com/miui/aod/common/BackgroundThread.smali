.class public final Lcom/miui/aod/common/BackgroundThread;
.super Landroid/os/HandlerThread;
.source "BackgroundThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "Background"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 3

    const-class v0, Lcom/miui/aod/common/BackgroundThread;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/aod/common/BackgroundThread;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/aod/common/BackgroundThread;

    invoke-direct {v1}, Lcom/miui/aod/common/BackgroundThread;-><init>()V

    invoke-virtual {v1}, Lcom/miui/aod/common/BackgroundThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/miui/aod/common/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/miui/aod/common/BackgroundThread;->sHandler:Landroid/os/Handler;

    :cond_0
    sget-object v1, Lcom/miui/aod/common/BackgroundThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/miui/aod/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postAtFrontOfQueue(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/miui/aod/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    invoke-static {}, Lcom/miui/aod/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/miui/aod/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
