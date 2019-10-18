.class public final synthetic Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9Wnsnts5JMRqweyTx3M5e4gNDxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/aod/common/AsyncSensorManager;

.field private final synthetic f$1:Landroid/hardware/TriggerEventListener;

.field private final synthetic f$2:Landroid/hardware/Sensor;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9Wnsnts5JMRqweyTx3M5e4gNDxc;->f$0:Lcom/miui/aod/common/AsyncSensorManager;

    iput-object p2, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9Wnsnts5JMRqweyTx3M5e4gNDxc;->f$1:Landroid/hardware/TriggerEventListener;

    iput-object p3, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9Wnsnts5JMRqweyTx3M5e4gNDxc;->f$2:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9Wnsnts5JMRqweyTx3M5e4gNDxc;->f$0:Lcom/miui/aod/common/AsyncSensorManager;

    iget-object v1, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9Wnsnts5JMRqweyTx3M5e4gNDxc;->f$1:Landroid/hardware/TriggerEventListener;

    iget-object p0, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9Wnsnts5JMRqweyTx3M5e4gNDxc;->f$2:Landroid/hardware/Sensor;

    invoke-static {v0, v1, p0}, Lcom/miui/aod/common/AsyncSensorManager;->lambda$cancelTriggerSensorImpl$4(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method
