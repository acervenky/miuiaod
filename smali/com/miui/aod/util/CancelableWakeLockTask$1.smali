.class Lcom/miui/aod/util/CancelableWakeLockTask$1;
.super Ljava/lang/Object;
.source "CancelableWakeLockTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/util/CancelableWakeLockTask;->execute(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/util/CancelableWakeLockTask;


# direct methods
.method constructor <init>(Lcom/miui/aod/util/CancelableWakeLockTask;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/util/CancelableWakeLockTask$1;->this$0:Lcom/miui/aod/util/CancelableWakeLockTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/util/CancelableWakeLockTask$1;->this$0:Lcom/miui/aod/util/CancelableWakeLockTask;

    invoke-static {v0}, Lcom/miui/aod/util/CancelableWakeLockTask;->access$010(Lcom/miui/aod/util/CancelableWakeLockTask;)I

    iget-object p0, p0, Lcom/miui/aod/util/CancelableWakeLockTask$1;->this$0:Lcom/miui/aod/util/CancelableWakeLockTask;

    invoke-static {p0}, Lcom/miui/aod/util/CancelableWakeLockTask;->access$100(Lcom/miui/aod/util/CancelableWakeLockTask;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
