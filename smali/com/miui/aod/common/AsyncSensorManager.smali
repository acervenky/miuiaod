.class public Lcom/miui/aod/common/AsyncSensorManager;
.super Landroid/hardware/SensorManager;
.source "AsyncSensorManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncSensorManager"

.field private static final sHandlerThread:Landroid/os/HandlerThread;

.field private static sInstance:Lcom/miui/aod/common/AsyncSensorManager;


# instance fields
.field final mHandler:Landroid/os/Handler;

.field private final mInner:Landroid/hardware/SensorManager;

.field private final mSensorCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "async_sensor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/aod/common/AsyncSensorManager;->sHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method private constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/common/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    sget-object p1, Lcom/miui/aod/common/AsyncSensorManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/miui/aod/common/AsyncSensorManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    :cond_0
    new-instance p1, Landroid/os/Handler;

    sget-object v0, Lcom/miui/aod/common/AsyncSensorManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/aod/common/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/miui/aod/common/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/common/AsyncSensorManager;->mSensorCache:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/hardware/SensorManager;)Lcom/miui/aod/common/AsyncSensorManager;
    .locals 2

    const-class v0, Lcom/miui/aod/common/AsyncSensorManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/aod/common/AsyncSensorManager;->sInstance:Lcom/miui/aod/common/AsyncSensorManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/aod/common/AsyncSensorManager;

    invoke-direct {v1, p0}, Lcom/miui/aod/common/AsyncSensorManager;-><init>(Landroid/hardware/SensorManager;)V

    sput-object v1, Lcom/miui/aod/common/AsyncSensorManager;->sInstance:Lcom/miui/aod/common/AsyncSensorManager;

    :cond_0
    sget-object p0, Lcom/miui/aod/common/AsyncSensorManager;->sInstance:Lcom/miui/aod/common/AsyncSensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic lambda$cancelTriggerSensorImpl$4(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V
    .locals 2

    iget-object p0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "AsyncSensorManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Canceling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static synthetic lambda$registerDynamicSensorCallbackImpl$1(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$registerListenerImpl$0(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "AsyncSensorManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Registering "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static synthetic lambda$requestTriggerSensorImpl$3(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V
    .locals 2

    iget-object p0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "AsyncSensorManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setOperationParameterImpl$5(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/SensorAdditionalInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    return-void
.end method

.method public static synthetic lambda$unregisterDynamicSensorCallbackImpl$2(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    return-void
.end method

.method public static synthetic lambda$unregisterListenerImpl$6(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p2, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 1

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object p3, p0, Lcom/miui/aod/common/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9Wnsnts5JMRqweyTx3M5e4gNDxc;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9Wnsnts5JMRqweyTx3M5e4gNDxc;-><init>(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method protected configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flush(Landroid/hardware/SensorEventListener;)Z

    move-result p0

    return p0
.end method

.method protected getFullDynamicSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDynamicSensorList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getFullSensorList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mSensorCache:Ljava/util/List;

    return-object p0
.end method

.method protected initDataInjectionImpl(Z)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$EN5aiPo0zPqb3_1Ea1sk_rCj4kQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$EN5aiPo0zPqb3_1Ea1sk_rCj4kQ;-><init>(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 8

    iget-object p6, p0, Lcom/miui/aod/common/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$Dl2cLRVKRVTszrVz6T6RyFbfM9Q;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$Dl2cLRVKRVTszrVz6T6RyFbfM9Q;-><init>(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)V

    invoke-virtual {p6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$LWjjtmopMIHTZDy40_s0PQ544iA;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$LWjjtmopMIHTZDy40_s0PQ544iA;-><init>(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method protected setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9t1irn1IGYS0_EXW637knajoagg;

    invoke-direct {v1, p0, p1}, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9t1irn1IGYS0_EXW637knajoagg;-><init>(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/SensorAdditionalInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method protected unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$B1fbsc8KeoNGWxdVnDyY1riXeJ8;

    invoke-direct {v1, p0, p1}, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$B1fbsc8KeoNGWxdVnDyY1riXeJ8;-><init>(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/common/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$_qJEsWGPk3O41JKH01Fue4Zt2hY;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$_qJEsWGPk3O41JKH01Fue4Zt2hY;-><init>(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
