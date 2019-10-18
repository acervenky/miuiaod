.class public final synthetic Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$_qJEsWGPk3O41JKH01Fue4Zt2hY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/aod/common/AsyncSensorManager;

.field private final synthetic f$1:Landroid/hardware/Sensor;

.field private final synthetic f$2:Landroid/hardware/SensorEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$_qJEsWGPk3O41JKH01Fue4Zt2hY;->f$0:Lcom/miui/aod/common/AsyncSensorManager;

    iput-object p2, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$_qJEsWGPk3O41JKH01Fue4Zt2hY;->f$1:Landroid/hardware/Sensor;

    iput-object p3, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$_qJEsWGPk3O41JKH01Fue4Zt2hY;->f$2:Landroid/hardware/SensorEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$_qJEsWGPk3O41JKH01Fue4Zt2hY;->f$0:Lcom/miui/aod/common/AsyncSensorManager;

    iget-object v1, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$_qJEsWGPk3O41JKH01Fue4Zt2hY;->f$1:Landroid/hardware/Sensor;

    iget-object p0, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$_qJEsWGPk3O41JKH01Fue4Zt2hY;->f$2:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1, p0}, Lcom/miui/aod/common/AsyncSensorManager;->lambda$unregisterListenerImpl$6(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V

    return-void
.end method
