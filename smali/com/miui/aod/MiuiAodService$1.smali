.class Lcom/miui/aod/MiuiAodService$1;
.super Lcom/miui/aod/IMiuiAodService$Stub;
.source "MiuiAodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/MiuiAodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/MiuiAodService;


# direct methods
.method constructor <init>(Lcom/miui/aod/MiuiAodService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/MiuiAodService$1;->this$0:Lcom/miui/aod/MiuiAodService;

    invoke-direct {p0}, Lcom/miui/aod/IMiuiAodService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public fireAodState(Z)V
    .locals 1

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p0

    const-string v0, "reason_fod"

    invoke-virtual {p0, p1, v0}, Lcom/miui/aod/DozeHost;->fireAodState(ZLjava/lang/String;)V

    return-void
.end method

.method public fireFingerprintPressed(Z)V
    .locals 0

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/aod/DozeHost;->fireFingerprintPressed(Z)V

    return-void
.end method

.method public onGxzwIconChanged(Z)V
    .locals 0

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/aod/DozeHost;->onGxzwIconChanged(Z)V

    return-void
.end method

.method public onKeyguardTransparent()V
    .locals 0

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/aod/DozeHost;->onKeyguardTransparent()V

    return-void
.end method

.method public onSimPinSecureChanged(Z)V
    .locals 0

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/aod/DozeHost;->setSimPinSecure(Z)V

    return-void
.end method

.method public registerCallback(Lcom/miui/aod/IMiuiAodCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/aod/MiuiAodService$1;->this$0:Lcom/miui/aod/MiuiAodService;

    invoke-static {v0, p1}, Lcom/miui/aod/MiuiAodService;->access$002(Lcom/miui/aod/MiuiAodService;Lcom/miui/aod/IMiuiAodCallback;)Lcom/miui/aod/IMiuiAodCallback;

    iget-object p0, p0, Lcom/miui/aod/MiuiAodService$1;->this$0:Lcom/miui/aod/MiuiAodService;

    invoke-static {p0}, Lcom/miui/aod/MiuiAodService;->access$000(Lcom/miui/aod/MiuiAodService;)Lcom/miui/aod/IMiuiAodCallback;

    move-result-object p0

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/aod/DozeHost;->isDozing()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/miui/aod/IMiuiAodCallback;->onDozingRequested(Z)V

    return-void
.end method

.method public stopDozing()V
    .locals 0

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/aod/DozeHost;->stopDozing()V

    return-void
.end method

.method public unregisterCallback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/aod/MiuiAodService$1;->this$0:Lcom/miui/aod/MiuiAodService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/aod/MiuiAodService;->access$002(Lcom/miui/aod/MiuiAodService;Lcom/miui/aod/IMiuiAodCallback;)Lcom/miui/aod/IMiuiAodCallback;

    return-void
.end method
