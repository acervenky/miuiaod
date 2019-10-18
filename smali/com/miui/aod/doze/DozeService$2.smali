.class Lcom/miui/aod/doze/DozeService$2;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/doze/DozeService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/miui/aod/doze/DozeService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/doze/DozeService$2;->this$0:Lcom/miui/aod/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/doze/DozeService$2;->this$0:Lcom/miui/aod/doze/DozeService;

    invoke-static {v0}, Lcom/miui/aod/doze/DozeService;->access$100(Lcom/miui/aod/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object p0, p0, Lcom/miui/aod/doze/DozeService$2;->this$0:Lcom/miui/aod/doze/DozeService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/aod/doze/DozeService;->access$202(Lcom/miui/aod/doze/DozeService;Z)Z

    return-void
.end method
