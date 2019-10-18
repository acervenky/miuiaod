.class Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DozeTriggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/miui/aod/doze/DozeTriggers;


# direct methods
.method private constructor <init>(Lcom/miui/aod/doze/DozeTriggers;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/aod/doze/DozeTriggers;Lcom/miui/aod/doze/DozeTriggers$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;-><init>(Lcom/miui/aod/doze/DozeTriggers;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "com.android.systemui.doze.pulse"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DozeTriggers"

    const-string v0, "Received pulse intent"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/aod/doze/DozeTriggers;->access$100(Lcom/miui/aod/doze/DozeTriggers;I)V

    :cond_0
    sget-object p1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;->this$0:Lcom/miui/aod/doze/DozeTriggers;

    invoke-static {p0}, Lcom/miui/aod/doze/DozeTriggers;->access$200(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/DozeMachine;

    move-result-object p0

    sget-object p1, Lcom/miui/aod/doze/DozeMachine$State;->FINISH:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/miui/aod/doze/DozeMachine;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    :cond_1
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.doze.pulse"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    return-void
.end method
