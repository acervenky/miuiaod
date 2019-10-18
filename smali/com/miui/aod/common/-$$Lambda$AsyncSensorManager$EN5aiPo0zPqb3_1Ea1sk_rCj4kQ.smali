.class public final synthetic Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$EN5aiPo0zPqb3_1Ea1sk_rCj4kQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/aod/common/AsyncSensorManager;

.field private final synthetic f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;

.field private final synthetic f$2:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$EN5aiPo0zPqb3_1Ea1sk_rCj4kQ;->f$0:Lcom/miui/aod/common/AsyncSensorManager;

    iput-object p2, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$EN5aiPo0zPqb3_1Ea1sk_rCj4kQ;->f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;

    iput-object p3, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$EN5aiPo0zPqb3_1Ea1sk_rCj4kQ;->f$2:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$EN5aiPo0zPqb3_1Ea1sk_rCj4kQ;->f$0:Lcom/miui/aod/common/AsyncSensorManager;

    iget-object v1, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$EN5aiPo0zPqb3_1Ea1sk_rCj4kQ;->f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;

    iget-object p0, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$EN5aiPo0zPqb3_1Ea1sk_rCj4kQ;->f$2:Landroid/os/Handler;

    invoke-static {v0, v1, p0}, Lcom/miui/aod/common/AsyncSensorManager;->lambda$registerDynamicSensorCallbackImpl$1(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method
