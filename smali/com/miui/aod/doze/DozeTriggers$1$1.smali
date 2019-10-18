.class Lcom/miui/aod/doze/DozeTriggers$1$1;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/doze/DozeTriggers$1;->onFingerprintPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/aod/doze/DozeTriggers$1;


# direct methods
.method constructor <init>(Lcom/miui/aod/doze/DozeTriggers$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/doze/DozeTriggers$1$1;->this$1:Lcom/miui/aod/doze/DozeTriggers$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/doze/DozeTriggers$1$1;->this$1:Lcom/miui/aod/doze/DozeTriggers$1;

    iget-object v0, v0, Lcom/miui/aod/doze/DozeTriggers$1;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-static {v0}, Lcom/miui/aod/doze/DozeTriggers;->access$200(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/DozeMachine;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/miui/aod/doze/DozeMachine;->requestPulse(I)V

    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers$1$1;->this$1:Lcom/miui/aod/doze/DozeTriggers$1;

    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers$1;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-static {p0}, Lcom/miui/aod/doze/DozeTriggers;->access$200(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/DozeMachine;

    move-result-object p0

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_PULSING:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/miui/aod/doze/DozeMachine;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    const-string p0, "DozeTriggers"

    const-string v0, "change display to on"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
