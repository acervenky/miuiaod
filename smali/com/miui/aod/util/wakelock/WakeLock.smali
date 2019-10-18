.class public interface abstract Lcom/miui/aod/util/wakelock/WakeLock;
.super Ljava/lang/Object;
.source "WakeLock.java"


# direct methods
.method public static createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/aod/util/wakelock/WakeLock;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/aod/util/wakelock/WakeLock;->createPartialInner(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/aod/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;)Lcom/miui/aod/util/wakelock/WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public static createPartialInner(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$wrapImpl$2(Ljava/lang/Runnable;Lcom/miui/aod/util/wakelock/WakeLock;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/miui/aod/util/wakelock/WakeLock;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lcom/miui/aod/util/wakelock/WakeLock;->release()V

    throw p0
.end method

.method public static wrap(Landroid/os/PowerManager$WakeLock;)Lcom/miui/aod/util/wakelock/WakeLock;
    .locals 1

    new-instance v0, Lcom/miui/aod/util/wakelock/WakeLock$1;

    invoke-direct {v0, p0}, Lcom/miui/aod/util/wakelock/WakeLock$1;-><init>(Landroid/os/PowerManager$WakeLock;)V

    return-object v0
.end method

.method public static wrapImpl(Lcom/miui/aod/util/wakelock/WakeLock;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    invoke-interface {p0}, Lcom/miui/aod/util/wakelock/WakeLock;->acquire()V

    new-instance v0, Lcom/miui/aod/util/wakelock/-$$Lambda$WakeLock$POMCmDzfPQaeBwfukXHsfbyf88c;

    invoke-direct {v0, p1, p0}, Lcom/miui/aod/util/wakelock/-$$Lambda$WakeLock$POMCmDzfPQaeBwfukXHsfbyf88c;-><init>(Ljava/lang/Runnable;Lcom/miui/aod/util/wakelock/WakeLock;)V

    return-object v0
.end method


# virtual methods
.method public abstract acquire()V
.end method

.method public abstract release()V
.end method

.method public abstract wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end method
