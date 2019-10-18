.class Lcom/miui/aod/util/BatteryController$1;
.super Landroid/database/ContentObserver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/util/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/util/BatteryController;


# direct methods
.method constructor <init>(Lcom/miui/aod/util/BatteryController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/util/BatteryController$1;->this$0:Lcom/miui/aod/util/BatteryController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/aod/DozeHost;->firePowerSaveChanged()V

    return-void
.end method
