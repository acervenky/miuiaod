.class public Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;
.super Ljava/lang/Object;
.source "MiuiDozeScreenBrightnessController.java"

# interfaces
.implements Lcom/miui/aod/doze/DozeMachine$Part;


# static fields
.field public static final TAG:Ljava/lang/String; = "MiuiDozeScreenBrightnessController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDozeTriggers:Lcom/miui/aod/doze/DozeTriggers;

.field private mHandler:Landroid/os/Handler;

.field private mHostCallback:Lcom/miui/aod/DozeHost$Callback;

.field private mLight:Z

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mMachine:Lcom/miui/aod/doze/DozeMachine;

.field private final mOffTimeout:Lcom/miui/aod/util/AlarmTimeout;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRegisterTask:Lcom/miui/aod/util/CancelableWakeLockTask;

.field private mRegistered:Z

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mService:Lcom/miui/aod/doze/DozeMachine$Service;

.field private mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/miui/aod/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/miui/aod/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Lcom/miui/aod/doze/DozeTriggers;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mLight:Z

    new-instance v1, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$2;

    invoke-direct {v1, p0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$2;-><init>(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)V

    iput-object v1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mHostCallback:Lcom/miui/aod/DozeHost$Callback;

    new-instance v1, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;

    invoke-direct {v1, p0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$3;-><init>(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)V

    iput-object v1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iput-object p7, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    iput-object p4, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mService:Lcom/miui/aod/doze/DozeMachine$Service;

    iput-object p5, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const-string p2, "power"

    invoke-virtual {p7, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mPowerManager:Landroid/os/PowerManager;

    iget-object p2, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mPowerManager:Landroid/os/PowerManager;

    sget-object p4, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/aod/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;)Lcom/miui/aod/util/wakelock/WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    iput-object p6, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mDozeTriggers:Lcom/miui/aod/doze/DozeTriggers;

    new-instance p2, Lcom/miui/aod/util/AlarmTimeout;

    new-instance p4, Lcom/miui/aod/doze/-$$Lambda$MiuiDozeScreenBrightnessController$0qteVNmnA1qyGdp8Mkh1wTl0FQQ;

    invoke-direct {p4, p0}, Lcom/miui/aod/doze/-$$Lambda$MiuiDozeScreenBrightnessController$0qteVNmnA1qyGdp8Mkh1wTl0FQQ;-><init>(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)V

    const-string p5, "OffAlarmTimeout"

    invoke-direct {p2, p3, p4, p5, p1}, Lcom/miui/aod/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mOffTimeout:Lcom/miui/aod/util/AlarmTimeout;

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const p2, 0x1fa2655

    invoke-virtual {p1, p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    new-instance p1, Lcom/miui/aod/util/CancelableWakeLockTask;

    new-instance p2, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$1;

    invoke-direct {p2, p0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$1;-><init>(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)V

    iget-object p3, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    iget-object p4, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mHandler:Landroid/os/Handler;

    sget-object p5, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/miui/aod/util/CancelableWakeLockTask;-><init>(Ljava/lang/Runnable;Lcom/miui/aod/util/wakelock/WakeLock;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mRegisterTask:Lcom/miui/aod/util/CancelableWakeLockTask;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Landroid/hardware/Sensor;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mRegistered:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Lcom/miui/aod/util/AlarmTimeout;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mOffTimeout:Lcom/miui/aod/util/AlarmTimeout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mRegistered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Landroid/hardware/SensorEventListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mLight:Z

    return p0
.end method

.method static synthetic access$602(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mLight:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->checkToScreenOff(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Lcom/miui/aod/doze/DozeMachine;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)Lcom/miui/aod/doze/DozeMachine$Service;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mService:Lcom/miui/aod/doze/DozeMachine$Service;

    return-object p0
.end method

.method private checkToScreenOff(Z)V
    .locals 7

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isShowTemporary(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    invoke-virtual {v1}, Lcom/miui/aod/doze/DozeMachine;->getState()Lcom/miui/aod/doze/DozeMachine$State;

    move-result-object v1

    sget-object v2, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/miui/aod/doze/DozeMachine$State;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    sget-object v5, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v1, v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    sget-object v6, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v1, v6, :cond_3

    move v3, v4

    :cond_3
    if-eqz p1, :cond_5

    if-nez v2, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    sget-object p1, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->TAG:Ljava/lang/String;

    const-string v0, "Brightness Light, unpausing AOD"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mService:Lcom/miui/aod/doze/DozeMachine$Service;

    sget-object p1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-interface {p0, p1}, Lcom/miui/aod/doze/DozeMachine$Service;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    sget-object p1, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->TAG:Ljava/lang/String;

    const-string v0, "Brightness Dark, pausing AOD"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mService:Lcom/miui/aod/doze/DozeMachine$Service;

    sget-object p1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-interface {p0, p1}, Lcom/miui/aod/doze/DozeMachine$Service;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static synthetic lambda$0qteVNmnA1qyGdp8Mkh1wTl0FQQ(Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->onOffTimeout()V

    return-void
.end method

.method private onOffTimeout()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mLight:Z

    invoke-direct {p0, v0}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->checkToScreenOff(Z)V

    return-void
.end method


# virtual methods
.method public transitionTo(Lcom/miui/aod/doze/DozeMachine$State;Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 0

    sget-object p1, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController$4;->$SwitchMap$com$miui$aod$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Lcom/miui/aod/doze/DozeMachine$State;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mOffTimeout:Lcom/miui/aod/util/AlarmTimeout;

    invoke-virtual {p1}, Lcom/miui/aod/util/AlarmTimeout;->cancel()V

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mRegisterTask:Lcom/miui/aod/util/CancelableWakeLockTask;

    invoke-virtual {p1}, Lcom/miui/aod/util/CancelableWakeLockTask;->remove()V

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mHostCallback:Lcom/miui/aod/DozeHost$Callback;

    invoke-virtual {p1, p2}, Lcom/miui/aod/DozeHost;->removeCallback(Lcom/miui/aod/DozeHost$Callback;)V

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mRegistered:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->TAG:Ljava/lang/String;

    const-string p2, "unregister sensor listener"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p2, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mRegistered:Z

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mRegisterTask:Lcom/miui/aod/util/CancelableWakeLockTask;

    const-wide/16 p1, 0x190

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/util/CancelableWakeLockTask;->execute(J)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;->mHostCallback:Lcom/miui/aod/DozeHost$Callback;

    invoke-virtual {p1, p0}, Lcom/miui/aod/DozeHost;->addCallback(Lcom/miui/aod/DozeHost$Callback;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
