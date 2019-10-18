.class Lcom/miui/aod/doze/MiuiBgController$1;
.super Ljava/lang/Object;
.source "MiuiBgController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/doze/MiuiBgController;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/AlarmManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/doze/MiuiBgController;


# direct methods
.method constructor <init>(Lcom/miui/aod/doze/MiuiBgController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiBgController$1;->this$0:Lcom/miui/aod/doze/MiuiBgController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiBgController$1;->this$0:Lcom/miui/aod/doze/MiuiBgController;

    invoke-static {p0}, Lcom/miui/aod/doze/MiuiBgController;->access$000(Lcom/miui/aod/doze/MiuiBgController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/aod/widget/SunSelector;->updateSunRiseTime(Landroid/content/Context;)V

    return-void
.end method
