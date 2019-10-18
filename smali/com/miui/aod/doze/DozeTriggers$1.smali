.class Lcom/miui/aod/doze/DozeTriggers$1;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/miui/aod/DozeHost$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/doze/DozeTriggers;


# direct methods
.method constructor <init>(Lcom/miui/aod/doze/DozeTriggers;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/doze/DozeTriggers$1;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fireAodState(ZLjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/aod/doze/DozeTriggers$1;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-static {v0}, Lcom/miui/aod/doze/DozeTriggers;->access$200(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/DozeMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/aod/doze/DozeMachine;->getState()Lcom/miui/aod/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/miui/aod/doze/DozeMachine$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sget-object v4, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    sget-object v5, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    sget-object v6, Lcom/miui/aod/doze/DozeMachine$State;->DOZE:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v6, :cond_3

    move v2, v3

    :cond_3
    if-eqz p1, :cond_6

    if-nez v1, :cond_5

    if-nez v4, :cond_5

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers$1;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-static {p0}, Lcom/miui/aod/doze/DozeTriggers;->access$300(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/MiuiDozeTimeController;

    move-result-object p0

    invoke-static {p2}, Lcom/miui/aod/doze/DozeLog;->aodReasonToInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/aod/doze/MiuiDozeTimeController;->onAodFire(I)V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers$1;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-static {p0}, Lcom/miui/aod/doze/DozeTriggers;->access$200(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/DozeMachine;

    move-result-object p0

    invoke-static {p2}, Lcom/miui/aod/doze/DozeLog;->aodReasonToInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/aod/doze/DozeMachine;->requestAod(I)V

    goto :goto_4

    :cond_6
    if-nez v5, :cond_7

    if-nez v1, :cond_7

    if-eqz v4, :cond_9

    :cond_7
    iget-object p1, p0, Lcom/miui/aod/doze/DozeTriggers$1;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-static {p1}, Lcom/miui/aod/doze/DozeTriggers;->access$400(Lcom/miui/aod/doze/DozeTriggers;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/Utils;->isAodClockDisable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/aod/DozeHost;->isAodClockVisible()Z

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/aod/DozeHost;->isAnimateShowing()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers$1;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-static {p0}, Lcom/miui/aod/doze/DozeTriggers;->access$200(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/DozeMachine;

    move-result-object p0

    sget-object p1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/miui/aod/doze/DozeMachine;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public notifyKeycodeGoto()V
    .locals 0

    return-void
.end method

.method public onAodAnimate(Z)V
    .locals 7

    iget-object v0, p0, Lcom/miui/aod/doze/DozeTriggers$1;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-static {v0}, Lcom/miui/aod/doze/DozeTriggers;->access$200(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/DozeMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/aod/doze/DozeMachine;->getState()Lcom/miui/aod/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/miui/aod/doze/DozeMachine$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sget-object v4, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    sget-object v5, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    sget-object v6, Lcom/miui/aod/doze/DozeMachine$State;->DOZE:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v6, :cond_3

    move v2, v3

    :cond_3
    if-eqz p1, :cond_5

    if-nez v1, :cond_4

    if-nez v4, :cond_4

    if-eqz v2, :cond_7

    :cond_4
    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers$1;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-static {p0}, Lcom/miui/aod/doze/DozeTriggers;->access$200(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/DozeMachine;

    move-result-object p0

    sget-object p1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/miui/aod/doze/DozeMachine;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/miui/aod/doze/DozeTriggers$1;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-static {p1}, Lcom/miui/aod/doze/DozeTriggers;->access$400(Lcom/miui/aod/doze/DozeTriggers;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/Utils;->isAodClockDisable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez v5, :cond_6

    if-nez v1, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers$1;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-static {p0}, Lcom/miui/aod/doze/DozeTriggers;->access$200(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/DozeMachine;

    move-result-object p0

    sget-object p1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/miui/aod/doze/DozeMachine;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onDozingRequested(Z)V
    .locals 0

    return-void
.end method

.method public onExtendPulse()V
    .locals 0

    return-void
.end method

.method public onFingerprintPressed(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/aod/doze/DozeTriggers$1;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-static {v0}, Lcom/miui/aod/doze/DozeTriggers;->access$500(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/DozeMachine$Service;

    move-result-object v0

    new-instance v1, Lcom/miui/aod/doze/DozeTriggers$1$1;

    invoke-direct {v1, p0}, Lcom/miui/aod/doze/DozeTriggers$1$1;-><init>(Lcom/miui/aod/doze/DozeTriggers$1;)V

    invoke-interface {v0, p1, v1}, Lcom/miui/aod/doze/DozeMachine$Service;->fingerprintPressed(ZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/doze/DozeTriggers$1;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-static {v0}, Lcom/miui/aod/doze/DozeTriggers;->access$500(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/DozeMachine$Service;

    move-result-object v0

    new-instance v1, Lcom/miui/aod/doze/DozeTriggers$1$2;

    invoke-direct {v1, p0}, Lcom/miui/aod/doze/DozeTriggers$1$2;-><init>(Lcom/miui/aod/doze/DozeTriggers$1;)V

    invoke-interface {v0, p1, v1}, Lcom/miui/aod/doze/DozeMachine$Service;->fingerprintPressed(ZLjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers$1;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-static {p0}, Lcom/miui/aod/doze/DozeTriggers;->access$500(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/DozeMachine$Service;

    move-result-object p0

    sget-object p1, Lcom/miui/aod/doze/DozeMachine$State;->FINISH:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-interface {p0, p1}, Lcom/miui/aod/doze/DozeMachine$Service;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    :cond_0
    return-void
.end method
