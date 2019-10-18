.class public final synthetic Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$B1fbsc8KeoNGWxdVnDyY1riXeJ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/aod/common/AsyncSensorManager;

.field private final synthetic f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$B1fbsc8KeoNGWxdVnDyY1riXeJ8;->f$0:Lcom/miui/aod/common/AsyncSensorManager;

    iput-object p2, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$B1fbsc8KeoNGWxdVnDyY1riXeJ8;->f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$B1fbsc8KeoNGWxdVnDyY1riXeJ8;->f$0:Lcom/miui/aod/common/AsyncSensorManager;

    iget-object p0, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$B1fbsc8KeoNGWxdVnDyY1riXeJ8;->f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;

    invoke-static {v0, p0}, Lcom/miui/aod/common/AsyncSensorManager;->lambda$unregisterDynamicSensorCallbackImpl$2(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    return-void
.end method
