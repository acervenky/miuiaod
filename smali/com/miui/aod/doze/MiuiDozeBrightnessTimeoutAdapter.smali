.class public Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;
.super Lcom/miui/aod/doze/DozeMachine$Service$Delegate;
.source "MiuiDozeBrightnessTimeoutAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MiuiDozeBrightnessTimeoutAdapter"


# instance fields
.field mBrightnessTask:Lcom/miui/aod/util/CancelableWakeLockTask;

.field private mHandler:Landroid/os/Handler;

.field private mLastBrightness:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/aod/doze/DozeMachine$Service;Landroid/app/AlarmManager;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;-><init>(Lcom/miui/aod/doze/DozeMachine$Service;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mLastBrightness:I

    iput-object p4, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mHandler:Landroid/os/Handler;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mPowerManager:Landroid/os/PowerManager;

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mPowerManager:Landroid/os/PowerManager;

    sget-object p2, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->TAG:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;)Lcom/miui/aod/util/wakelock/WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    new-instance p1, Lcom/miui/aod/util/CancelableWakeLockTask;

    new-instance p2, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter$1;

    invoke-direct {p2, p0}, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter$1;-><init>(Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;)V

    iget-object p3, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    iget-object p4, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/miui/aod/util/CancelableWakeLockTask;-><init>(Ljava/lang/Runnable;Lcom/miui/aod/util/wakelock/WakeLock;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mBrightnessTask:Lcom/miui/aod/util/CancelableWakeLockTask;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->onSetDozeScreenBrightnessTimeout()V

    return-void
.end method

.method private onSetDozeScreenBrightnessTimeout()V
    .locals 1

    iget v0, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mLastBrightness:I

    invoke-super {p0, v0}, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;->setDozeScreenBrightness(I)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-super {p0}, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;->finish()V

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mBrightnessTask:Lcom/miui/aod/util/CancelableWakeLockTask;

    invoke-virtual {v0}, Lcom/miui/aod/util/CancelableWakeLockTask;->remove()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mLastBrightness:I

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 3

    iget v0, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mLastBrightness:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mBrightnessTask:Lcom/miui/aod/util/CancelableWakeLockTask;

    invoke-virtual {v0}, Lcom/miui/aod/util/CancelableWakeLockTask;->remove()V

    iput p1, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mLastBrightness:I

    invoke-direct {p0}, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->onSetDozeScreenBrightnessTimeout()V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mLastBrightness:I

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mBrightnessTask:Lcom/miui/aod/util/CancelableWakeLockTask;

    iget v1, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mLastBrightness:I

    sget v2, Lcom/miui/aod/utils/CommonUtils;->BRIGHTNESS_ON:I

    if-ne v1, v2, :cond_1

    const-wide/16 v1, 0x2710

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x7d0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/miui/aod/util/CancelableWakeLockTask;->execute(J)V

    iput p1, p0, Lcom/miui/aod/doze/MiuiDozeBrightnessTimeoutAdapter;->mLastBrightness:I

    :cond_2
    :goto_1
    return-void
.end method
