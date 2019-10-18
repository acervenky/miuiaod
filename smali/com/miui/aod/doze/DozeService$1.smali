.class Lcom/miui/aod/doze/DozeService$1;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/doze/DozeService;
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

    iput-object p1, p0, Lcom/miui/aod/doze/DozeService$1;->this$0:Lcom/miui/aod/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeService$1;->this$0:Lcom/miui/aod/doze/DozeService;

    invoke-static {p0}, Lcom/miui/aod/doze/DozeService;->access$000(Lcom/miui/aod/doze/DozeService;)V

    return-void
.end method
