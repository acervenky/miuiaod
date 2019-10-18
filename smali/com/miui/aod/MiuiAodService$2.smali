.class Lcom/miui/aod/MiuiAodService$2;
.super Ljava/lang/Object;
.source "MiuiAodService.java"

# interfaces
.implements Lcom/miui/aod/DozeHost$Callback;


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

    iput-object p1, p0, Lcom/miui/aod/MiuiAodService$2;->this$0:Lcom/miui/aod/MiuiAodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fireAodState(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public notifyKeycodeGoto()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/MiuiAodService$2;->this$0:Lcom/miui/aod/MiuiAodService;

    invoke-static {v0}, Lcom/miui/aod/MiuiAodService;->access$000(Lcom/miui/aod/MiuiAodService;)Lcom/miui/aod/IMiuiAodCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/miui/aod/MiuiAodService$2;->this$0:Lcom/miui/aod/MiuiAodService;

    invoke-static {p0}, Lcom/miui/aod/MiuiAodService;->access$000(Lcom/miui/aod/MiuiAodService;)Lcom/miui/aod/IMiuiAodCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/aod/IMiuiAodCallback;->notifyKeycodeGoto()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onAodAnimate(Z)V
    .locals 0

    return-void
.end method

.method public onDozingRequested(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/MiuiAodService$2;->this$0:Lcom/miui/aod/MiuiAodService;

    invoke-static {v0}, Lcom/miui/aod/MiuiAodService;->access$000(Lcom/miui/aod/MiuiAodService;)Lcom/miui/aod/IMiuiAodCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/miui/aod/MiuiAodService$2;->this$0:Lcom/miui/aod/MiuiAodService;

    invoke-static {p0}, Lcom/miui/aod/MiuiAodService;->access$000(Lcom/miui/aod/MiuiAodService;)Lcom/miui/aod/IMiuiAodCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/aod/IMiuiAodCallback;->onDozingRequested(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onExtendPulse()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/MiuiAodService$2;->this$0:Lcom/miui/aod/MiuiAodService;

    invoke-static {v0}, Lcom/miui/aod/MiuiAodService;->access$000(Lcom/miui/aod/MiuiAodService;)Lcom/miui/aod/IMiuiAodCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/miui/aod/MiuiAodService$2;->this$0:Lcom/miui/aod/MiuiAodService;

    invoke-static {p0}, Lcom/miui/aod/MiuiAodService;->access$000(Lcom/miui/aod/MiuiAodService;)Lcom/miui/aod/IMiuiAodCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/aod/IMiuiAodCallback;->onExtendPulse()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onFingerprintPressed(Z)V
    .locals 0

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    return-void
.end method
