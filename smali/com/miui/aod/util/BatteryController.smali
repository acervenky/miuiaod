.class public Lcom/miui/aod/util/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/util/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# static fields
.field private static mCharging:Z

.field private static sInstance:Lcom/miui/aod/util/BatteryController;


# instance fields
.field mBatteryModeChangeObserver:Landroid/database/ContentObserver;

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/aod/util/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mCharged:Z

.field private mHasReceivedBattery:Z

.field private mLevel:I

.field protected mPluggedIn:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/util/BatteryController;->mHasReceivedBattery:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/aod/util/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/aod/util/BatteryController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/miui/aod/util/BatteryController$1;-><init>(Lcom/miui/aod/util/BatteryController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/aod/util/BatteryController;->mBatteryModeChangeObserver:Landroid/database/ContentObserver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "POWER_SAVE_MODE_OPEN"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/aod/util/BatteryController;->mBatteryModeChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "EXTREME_POWER_MODE_ENABLE"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/aod/util/BatteryController;->mBatteryModeChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/miui/aod/util/BatteryController;->mBatteryModeChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/aod/util/BatteryController;
    .locals 2

    const-class v0, Lcom/miui/aod/util/BatteryController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/aod/util/BatteryController;->sInstance:Lcom/miui/aod/util/BatteryController;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/miui/aod/util/BatteryController;

    invoke-direct {v1, p0}, Lcom/miui/aod/util/BatteryController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/aod/util/BatteryController;->sInstance:Lcom/miui/aod/util/BatteryController;

    :cond_0
    sget-object p0, Lcom/miui/aod/util/BatteryController;->sInstance:Lcom/miui/aod/util/BatteryController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isCharging()Z
    .locals 1

    sget-boolean v0, Lcom/miui/aod/util/BatteryController;->mCharging:Z

    return v0
.end method


# virtual methods
.method public addCallback(Lcom/miui/aod/util/BatteryController$BatteryStateChangeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/util/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/aod/util/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/miui/aod/util/BatteryController;->mHasReceivedBattery:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/aod/util/BatteryController;->mLevel:I

    iget-boolean p0, p0, Lcom/miui/aod/util/BatteryController;->mPluggedIn:Z

    sget-boolean v1, Lcom/miui/aod/util/BatteryController;->mCharging:Z

    invoke-interface {p1, v0, p0, v1}, Lcom/miui/aod/util/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected fireBatteryLevelChanged()V
    .locals 7

    iget-object v0, p0, Lcom/miui/aod/util/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/aod/util/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/miui/aod/util/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/aod/util/BatteryController$BatteryStateChangeCallback;

    iget v4, p0, Lcom/miui/aod/util/BatteryController;->mLevel:I

    iget-boolean v5, p0, Lcom/miui/aod/util/BatteryController;->mPluggedIn:Z

    sget-boolean v6, Lcom/miui/aod/util/BatteryController;->mCharging:Z

    invoke-interface {v3, v4, v5, v6}, Lcom/miui/aod/util/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/aod/util/BatteryController;->mHasReceivedBattery:Z

    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/util/BatteryController;->mLevel:I

    const-string v0, "plugged"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/aod/util/BatteryController;->mPluggedIn:Z

    const-string v0, "status"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/miui/aod/util/BatteryController;->mCharged:Z

    iget-boolean v0, p0, Lcom/miui/aod/util/BatteryController;->mCharged:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    :cond_2
    iget-boolean p2, p0, Lcom/miui/aod/util/BatteryController;->mPluggedIn:Z

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    sput-boolean p1, Lcom/miui/aod/util/BatteryController;->mCharging:Z

    invoke-virtual {p0}, Lcom/miui/aod/util/BatteryController;->fireBatteryLevelChanged()V

    :cond_4
    return-void
.end method

.method public removeCallback(Lcom/miui/aod/util/BatteryController$BatteryStateChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/util/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/miui/aod/util/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
