.class Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter$1;
.super Ljava/lang/Object;
.source "MiuiDozeBrightnessTimeoutAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;-><init>(Landroid/content/Context;Lcom/miui/aod/doze/DozeMachine$Service;Landroid/app/AlarmManager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;


# direct methods
.method constructor <init>(Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter$1;->this$0:Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter$1;->this$0:Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;

    invoke-static {p0}, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->access$000(Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;)V

    return-void
.end method
