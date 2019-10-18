.class Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;
.super Ljava/lang/Object;
.source "MiuiDozeScreenBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    sget-object v0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensor event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1fa2655

    if-ne v1, v0, :cond_9

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    float-to-int p1, p1

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$800(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Lcom/miui/aod/doze/DozeMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/aod/doze/DozeMachine;->getState()Lcom/miui/aod/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/miui/aod/doze/DozeMachine$State;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sget-object v4, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    sget-object v5, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v5, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    const/4 v5, 0x2

    if-eq p1, v5, :cond_5

    if-ne p1, v2, :cond_3

    goto :goto_3

    :cond_3
    if-nez v1, :cond_4

    if-eqz v4, :cond_6

    :cond_4
    sget-object v0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->TAG:Ljava/lang/String;

    const-string v1, "Prox FAR, unpausing AOD"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$900(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Lcom/miui/aod/doze/DozeMachine$Service;

    move-result-object v0

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-interface {v0, v1}, Lcom/miui/aod/doze/DozeMachine$Service;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v1, v3}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$602(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;Z)Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->TAG:Ljava/lang/String;

    const-string v1, "Prox NEAR, pausing AOD   "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$900(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Lcom/miui/aod/doze/DozeMachine$Service;

    move-result-object v0

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-interface {v0, v1}, Lcom/miui/aod/doze/DozeMachine$Service;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    :cond_6
    :goto_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v0, v3}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$602(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;Z)Z

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$900(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Lcom/miui/aod/doze/DozeMachine$Service;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/miui/aod/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$1000(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Lcom/miui/aod/util/AlarmTimeout;

    move-result-object v0

    const-wide/32 v3, 0x493e0

    invoke-virtual {v0, v3, v4, v2}, Lcom/miui/aod/util/AlarmTimeout;->schedule(JI)V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$1000(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Lcom/miui/aod/util/AlarmTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/aod/util/AlarmTimeout;->cancel()V

    :goto_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {p1, v2}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$602(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;Z)Z

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$600(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$700(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;Z)V

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {p0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$900(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Lcom/miui/aod/doze/DozeMachine$Service;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/miui/aod/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    goto :goto_6

    :cond_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {p1, v2}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$602(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;Z)Z

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$600(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$700(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;Z)V

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;->this$0:Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    invoke-static {p0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->access$900(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Lcom/miui/aod/doze/DozeMachine$Service;

    move-result-object p0

    sget p1, Lcom/miui/aod/utils/CommonUtils;->BRIGHTNESS_ON:I

    invoke-interface {p0, p1}, Lcom/miui/aod/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    :cond_9
    :goto_6
    return-void
.end method
