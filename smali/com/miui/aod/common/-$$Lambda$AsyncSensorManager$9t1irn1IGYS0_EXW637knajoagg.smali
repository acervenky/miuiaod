.class public final synthetic Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9t1irn1IGYS0_EXW637knajoagg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/aod/common/AsyncSensorManager;

.field private final synthetic f$1:Landroid/hardware/SensorAdditionalInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/SensorAdditionalInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9t1irn1IGYS0_EXW637knajoagg;->f$0:Lcom/miui/aod/common/AsyncSensorManager;

    iput-object p2, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9t1irn1IGYS0_EXW637knajoagg;->f$1:Landroid/hardware/SensorAdditionalInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9t1irn1IGYS0_EXW637knajoagg;->f$0:Lcom/miui/aod/common/AsyncSensorManager;

    iget-object p0, p0, Lcom/miui/aod/common/-$$Lambda$AsyncSensorManager$9t1irn1IGYS0_EXW637knajoagg;->f$1:Landroid/hardware/SensorAdditionalInfo;

    invoke-static {v0, p0}, Lcom/miui/aod/common/AsyncSensorManager;->lambda$setOperationParameterImpl$5(Lcom/miui/aod/common/AsyncSensorManager;Landroid/hardware/SensorAdditionalInfo;)V

    return-void
.end method
