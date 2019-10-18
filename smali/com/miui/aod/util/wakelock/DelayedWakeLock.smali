.class public Lcom/miui/aod/util/wakelock/DelayedWakeLock;
.super Ljava/lang/Object;
.source "DelayedWakeLock.java"

# interfaces
.implements Lcom/miui/aod/util/wakelock/WakeLock;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInner:Lcom/miui/aod/util/wakelock/WakeLock;

.field private final mRelease:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/miui/aod/util/wakelock/WakeLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/util/wakelock/DelayedWakeLock;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/miui/aod/util/wakelock/DelayedWakeLock;->mInner:Lcom/miui/aod/util/wakelock/WakeLock;

    iget-object p1, p0, Lcom/miui/aod/util/wakelock/DelayedWakeLock;->mInner:Lcom/miui/aod/util/wakelock/WakeLock;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/miui/aod/util/wakelock/-$$Lambda$6-9LDT9tmPwF8YBm7jtyiApupfQ;

    invoke-direct {p2, p1}, Lcom/miui/aod/util/wakelock/-$$Lambda$6-9LDT9tmPwF8YBm7jtyiApupfQ;-><init>(Lcom/miui/aod/util/wakelock/WakeLock;)V

    iput-object p2, p0, Lcom/miui/aod/util/wakelock/DelayedWakeLock;->mRelease:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/util/wakelock/DelayedWakeLock;->mInner:Lcom/miui/aod/util/wakelock/WakeLock;

    invoke-interface {p0}, Lcom/miui/aod/util/wakelock/WakeLock;->acquire()V

    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/util/wakelock/DelayedWakeLock;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/util/wakelock/DelayedWakeLock;->mRelease:Ljava/lang/Runnable;

    const-wide/16 v1, 0x8c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/aod/util/wakelock/WakeLock;->wrapImpl(Lcom/miui/aod/util/wakelock/WakeLock;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method
