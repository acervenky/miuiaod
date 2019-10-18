.class Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$1;
.super Ljava/lang/Object;
.source "MiuiDozeScreenBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;-><init>(Landroid/os/Handler;Lcom/miui/aod/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/miui/aod/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Lcom/miui/aod/doze/DozeTriggers;Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$000(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$100(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->TAG:Ljava/lang/String;

    const-string v1, "register sensor listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    iget-object v1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v1}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$400(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v1}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$200(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    iget-object v1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v1}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$000(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Landroid/hardware/Sensor;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {p0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$300(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$102(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;Z)Z

    :cond_0
    return-void
.end method
