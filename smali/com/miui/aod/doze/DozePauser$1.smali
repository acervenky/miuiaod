.class Lcom/miui/aod/doze/DozePauser$1;
.super Ljava/lang/Object;
.source "DozePauser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/doze/DozePauser;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/miui/aod/doze/DozeMachine;Landroid/app/AlarmManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/doze/DozePauser;


# direct methods
.method constructor <init>(Lcom/miui/aod/doze/DozePauser;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/doze/DozePauser$1;->this$0:Lcom/miui/aod/doze/DozePauser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/miui/aod/doze/DozePauser$1;->this$0:Lcom/miui/aod/doze/DozePauser;

    invoke-static {p0}, Lcom/miui/aod/doze/DozePauser;->access$000(Lcom/miui/aod/doze/DozePauser;)Lcom/miui/aod/doze/DozeMachine;

    move-result-object p0

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/miui/aod/doze/DozeMachine;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    return-void
.end method
