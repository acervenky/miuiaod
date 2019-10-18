.class public Lcom/miui/aod/doze/DozeFactory;
.super Ljava/lang/Object;
.source "DozeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createDozeTriggers(Landroid/content/Context;Lcom/miui/aod/doze/DozeMachine;Lcom/miui/aod/doze/DozeMachine$Service;Lcom/miui/aod/doze/MiuiDozeTimeController;)Lcom/miui/aod/doze/DozeTriggers;
    .locals 6

    new-instance p0, Lcom/miui/aod/doze/DozeTriggers;

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/aod/doze/DozeTriggers;-><init>(Landroid/content/Context;Lcom/miui/aod/doze/DozeMachine;ZLcom/miui/aod/doze/DozeMachine$Service;Lcom/miui/aod/doze/MiuiDozeTimeController;)V

    return-object p0
.end method

.method private createDozeUi(Landroid/content/Context;Lcom/miui/aod/util/wakelock/WakeLock;Lcom/miui/aod/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;)Lcom/miui/aod/doze/DozeMachine$Part;
    .locals 6

    new-instance p0, Lcom/miui/aod/doze/DozeUi;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/aod/doze/DozeUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/miui/aod/doze/DozeMachine;Lcom/miui/aod/util/wakelock/WakeLock;Landroid/os/Handler;)V

    return-object p0
.end method


# virtual methods
.method public assembleMachine(Lcom/miui/aod/doze/DozeService;)Lcom/miui/aod/doze/DozeMachine;
    .locals 17

    move-object/from16 v8, p1

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-static {v0}, Lcom/miui/aod/common/AsyncSensorManager;->getInstance(Landroid/hardware/SensorManager;)Lcom/miui/aod/common/AsyncSensorManager;

    move-result-object v6

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/AlarmManager;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/miui/aod/util/wakelock/DelayedWakeLock;

    const-string v0, "Doze"

    invoke-static {v8, v0}, Lcom/miui/aod/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/aod/util/wakelock/WakeLock;

    move-result-object v0

    invoke-direct {v7, v10, v0}, Lcom/miui/aod/util/wakelock/DelayedWakeLock;-><init>(Landroid/os/Handler;Lcom/miui/aod/util/wakelock/WakeLock;)V

    invoke-static {v8, v8}, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->wrapIfNeeded(Lcom/miui/aod/doze/DozeMachine$Service;Landroid/content/Context;)Lcom/miui/aod/doze/DozeMachine$Service;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/miui/aod/doze/MiuiAnimDozeStatePreventingAdapter;->wrapIfNeeded(Lcom/miui/aod/doze/DozeMachine$Service;Landroid/content/Context;)Lcom/miui/aod/doze/DozeMachine$Service;

    move-result-object v0

    new-instance v11, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;

    invoke-direct {v11, v8, v0, v9, v10}, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;-><init>(Landroid/content/Context;Lcom/miui/aod/doze/DozeMachine$Service;Landroid/app/AlarmManager;Landroid/os/Handler;)V

    new-instance v12, Lcom/miui/aod/doze/DozeMachine;

    invoke-direct {v12, v11, v7, v8}, Lcom/miui/aod/doze/DozeMachine;-><init>(Lcom/miui/aod/doze/DozeMachine$Service;Lcom/miui/aod/util/wakelock/WakeLock;Landroid/content/Context;)V

    new-instance v13, Lcom/miui/aod/doze/DozePauser;

    invoke-direct {v13, v8, v10, v12, v9}, Lcom/miui/aod/doze/DozePauser;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/miui/aod/doze/DozeMachine;Landroid/app/AlarmManager;)V

    new-instance v14, Lcom/miui/aod/doze/MiuiDozeTimeController;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v12

    move-object v4, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/miui/aod/doze/MiuiDozeTimeController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/miui/aod/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/miui/aod/doze/DozeMachine$Service;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v11, v14}, Lcom/miui/aod/doze/DozeFactory;->createDozeTriggers(Landroid/content/Context;Lcom/miui/aod/doze/DozeMachine;Lcom/miui/aod/doze/DozeMachine$Service;Lcom/miui/aod/doze/MiuiDozeTimeController;)Lcom/miui/aod/doze/DozeTriggers;

    move-result-object v15

    const/4 v1, 0x7

    new-array v5, v1, [Lcom/miui/aod/doze/DozeMachine$Part;

    const/4 v1, 0x0

    aput-object v13, v5, v1

    const/4 v1, 0x1

    aput-object v15, v5, v1

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v4, v10

    move-object v13, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/miui/aod/doze/DozeFactory;->createDozeUi(Landroid/content/Context;Lcom/miui/aod/util/wakelock/WakeLock;Lcom/miui/aod/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;)Lcom/miui/aod/doze/DozeMachine$Part;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v13, v1

    new-instance v0, Lcom/miui/aod/doze/DozeScreenState;

    invoke-direct {v0, v11, v10}, Lcom/miui/aod/doze/DozeScreenState;-><init>(Lcom/miui/aod/doze/DozeMachine$Service;Landroid/os/Handler;)V

    const/4 v1, 0x3

    aput-object v0, v13, v1

    new-instance v16, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;

    move-object/from16 v0, v16

    move-object v1, v10

    move-object v2, v12

    move-object v3, v9

    move-object v4, v11

    move-object v5, v6

    move-object v6, v15

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/miui/aod/doze/MiuiDozeScreenBrightnessController;-><init>(Landroid/os/Handler;Lcom/miui/aod/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/miui/aod/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Lcom/miui/aod/doze/DozeTriggers;Landroid/content/Context;)V

    const/4 v0, 0x4

    aput-object v16, v13, v0

    const/4 v0, 0x5

    aput-object v14, v13, v0

    new-instance v0, Lcom/miui/aod/doze/MiuiBgController;

    invoke-direct {v0, v8, v10, v9}, Lcom/miui/aod/doze/MiuiBgController;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/AlarmManager;)V

    const/4 v1, 0x6

    aput-object v0, v13, v1

    invoke-virtual {v12, v13}, Lcom/miui/aod/doze/DozeMachine;->setParts([Lcom/miui/aod/doze/DozeMachine$Part;)V

    return-object v12
.end method
