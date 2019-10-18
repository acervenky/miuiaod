.class Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$2;
.super Ljava/lang/Object;
.source "MiuiDozeScreenBrightnessController.java"

# interfaces
.implements Lcom/miui/aod/DozeHost$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;


# direct methods
.method constructor <init>(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$2;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fireAodState(ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$2;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {p1}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$500(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/Utils;->isAodClockDisable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$2;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$2;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {p0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$600(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$700(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;Z)V

    :cond_0
    return-void
.end method

.method public notifyKeycodeGoto()V
    .locals 0

    return-void
.end method

.method public onAodAnimate(Z)V
    .locals 0

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
    .locals 0

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    return-void
.end method
