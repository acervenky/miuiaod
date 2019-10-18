.class final Lcom/miui/aod/util/wakelock/WakeLock$1;
.super Ljava/lang/Object;
.source "WakeLock.java"

# interfaces
.implements Lcom/miui/aod/util/wakelock/WakeLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;)Lcom/miui/aod/util/wakelock/WakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$inner:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/util/wakelock/WakeLock$1;->val$inner:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/util/wakelock/WakeLock$1;->val$inner:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/util/wakelock/WakeLock$1;->val$inner:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/aod/util/wakelock/WakeLock;->wrapImpl(Lcom/miui/aod/util/wakelock/WakeLock;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method
