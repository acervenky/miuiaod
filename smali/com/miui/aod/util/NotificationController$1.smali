.class Lcom/miui/aod/util/NotificationController$1;
.super Landroid/database/ContentObserver;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/util/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/util/NotificationController;


# direct methods
.method constructor <init>(Lcom/miui/aod/util/NotificationController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/util/NotificationController$1;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/util/NotificationController$1;->this$0:Lcom/miui/aod/util/NotificationController;

    invoke-static {p0}, Lcom/miui/aod/util/NotificationController;->access$000(Lcom/miui/aod/util/NotificationController;)V

    return-void
.end method
