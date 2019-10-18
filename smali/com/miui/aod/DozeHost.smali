.class public Lcom/miui/aod/DozeHost;
.super Ljava/lang/Object;
.source "DozeHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/DozeHost$Callback;,
        Lcom/miui/aod/DozeHost$SineEaseOutInterpolator;
    }
.end annotation


# instance fields
.field private mAODView:Lcom/miui/aod/AODView;

.field private mAnimateWakeup:Z

.field private mAodStateOnReason:Ljava/lang/String;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/aod/DozeHost$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDozing:Z

.field private mDozingRequested:Z

.field private mFingerUpRunnable:Ljava/lang/Runnable;

.field private mGxzwIconTransparent:Z

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mShowAodAnimate:Z

.field private mSimPinSecure:Z

.field private mStopAodRunnable:Ljava/lang/Runnable;

.field private mViewManager:Landroid/view/WindowManager;

.field private mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

.field private mWindowAdded:Z

.field private removeAODViewRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/DozeHost;->mWindowAdded:Z

    iput-boolean v0, p0, Lcom/miui/aod/DozeHost;->mSimPinSecure:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/aod/DozeHost;->mGxzwIconTransparent:Z

    new-instance v1, Lcom/miui/aod/DozeHost$5;

    invoke-direct {v1, p0}, Lcom/miui/aod/DozeHost$5;-><init>(Lcom/miui/aod/DozeHost;)V

    iput-object v1, p0, Lcom/miui/aod/DozeHost;->mFingerUpRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/miui/aod/DozeHost$6;

    invoke-direct {v1, p0}, Lcom/miui/aod/DozeHost$6;-><init>(Lcom/miui/aod/DozeHost;)V

    iput-object v1, p0, Lcom/miui/aod/DozeHost;->removeAODViewRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/miui/aod/DozeHost$7;

    invoke-direct {v1, p0}, Lcom/miui/aod/DozeHost$7;-><init>(Lcom/miui/aod/DozeHost;)V

    iput-object v1, p0, Lcom/miui/aod/DozeHost;->mStopAodRunnable:Ljava/lang/Runnable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/aod/DozeHost;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/miui/aod/DozeHost;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/aod/DozeHost;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/miui/aod/DozeHost;->mPowerManager:Landroid/os/PowerManager;

    iget-object p1, p0, Lcom/miui/aod/DozeHost;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "DozeHost"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;)Lcom/miui/aod/util/wakelock/WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/DozeHost;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    invoke-direct {p0}, Lcom/miui/aod/DozeHost;->upgrade()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/DozeHost;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/aod/DozeHost;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/DozeHost;->onFingerprintPressed(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/aod/DozeHost;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/aod/DozeHost;->onStopDoze()V

    return-void
.end method

.method public static synthetic lambda$startDozing$1(Lcom/miui/aod/DozeHost;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContainer:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mAODView:Lcom/miui/aod/AODView;

    invoke-virtual {p0}, Lcom/miui/aod/AODView;->startClockPanelAnimation()V

    return-void
.end method

.method private onFingerprintPressed(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/aod/DozeHost;->mDozing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/aod/Utils;->SUPPORT_LOW_BRIGHTNESS_FOD:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/aod/DozeHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/DozeHost$Callback;

    invoke-interface {v1, p1}, Lcom/miui/aod/DozeHost$Callback;->onFingerprintPressed(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/aod/DozeHost;->mFingerUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/aod/DozeHost;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/aod/DozeHost;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mContainer:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/aod/DozeHost;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mFingerUpRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private onStopDoze()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/aod/DozeHost;->mDozingRequested:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/DozeHost;->mDozingRequested:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/aod/DozeHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/DozeHost$Callback;

    iget-boolean v2, p0, Lcom/miui/aod/DozeHost;->mDozingRequested:Z

    invoke-interface {v1, v2}, Lcom/miui/aod/DozeHost$Callback;->onDozingRequested(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mAODView:Lcom/miui/aod/AODView;

    invoke-virtual {v0}, Lcom/miui/aod/AODView;->onStopDoze()V

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/miui/aod/DozeHost;->mDozing:Z

    invoke-static {v0, v1}, Lcom/miui/aod/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    iget-boolean v0, p0, Lcom/miui/aod/DozeHost;->mDozingRequested:Z

    iput-boolean v0, p0, Lcom/miui/aod/DozeHost;->mDozing:Z

    const-string v0, "KEYGUARD_TURN_ON_DELAYED"

    invoke-static {v0}, Lcom/miui/aod/utils/CommonUtils;->getRuntimeSharedValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->removeAODViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x226

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/aod/DozeHost;->removeAODView()V

    :cond_2
    :goto_1
    return-void
.end method

.method private showSecurityIdentityViewAt()Lcom/miui/aod/AODView;
    .locals 8

    invoke-virtual {p0}, Lcom/miui/aod/DozeHost;->removeAODView()V

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/AODView;

    new-instance v1, Lcom/miui/aod/DozeHost$1;

    invoke-direct {v1, p0}, Lcom/miui/aod/DozeHost$1;-><init>(Lcom/miui/aod/DozeHost;)V

    invoke-virtual {v0, v1}, Lcom/miui/aod/AODView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/miui/aod/Utils;->isGxzwSensor()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x2

    :goto_0
    move v7, v2

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    :goto_1
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7ea

    const v6, 0x10500

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/aod/utils/CommonUtils;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V

    const-string v3, "AOD"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v3, 0x1304

    invoke-virtual {v0, v3}, Lcom/miui/aod/AODView;->setSystemUiVisibility(I)V

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object v3, p0, Lcom/miui/aod/DozeHost;->mViewManager:Landroid/view/WindowManager;

    invoke-interface {v3, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v2, p0, Lcom/miui/aod/DozeHost;->mWindowAdded:Z

    const v1, 0x7f1100ad

    invoke-virtual {v0, v1}, Lcom/miui/aod/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/miui/aod/DozeHost;->mContainer:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/miui/aod/DozeHost;->mDozingRequested:Z

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/aod/AODView;->setVisibility(I)V

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_1
    return-object v0
.end method

.method private upgrade()V
    .locals 9

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/16 v5, 0x1c

    if-lt v1, v5, :cond_1

    const-string v1, "doze_always_on"

    invoke-static {v0, v1, v2, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->getIntFromSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string v1, "aod_mode"

    invoke-static {v0, v1, v2, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->getIntFromSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v5, "doze_always_on"

    invoke-static {v0, v5, v1, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    const-string v1, "doze_enabled"

    invoke-static {v0, v1, v3, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    sget-object v1, Lcom/miui/aod/widget/AODSettings;->AOD_MODE:Ljava/lang/String;

    invoke-static {v0, v1, v3, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->getIntFromSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    const-string v6, "aod_mode_time"

    invoke-static {v0, v6, v3, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->getIntFromSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v5, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    sget-object v7, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v8, "cepheus"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-boolean v7, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v7, :cond_5

    const-string v7, "aod_index_update"

    invoke-static {v0, v7, v3, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->getIntFromSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "aod_style_index"

    invoke-static {v0, v7, v2, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->getIntFromSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/16 v7, 0xf

    if-gt v2, v7, :cond_4

    if-ltz v2, :cond_4

    const/16 v7, 0x10

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    const-string v8, "aod_style_index"

    aget v2, v7, v2

    invoke-static {v0, v8, v2, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_4
    const-string v2, "aod_index_update"

    invoke-static {v0, v2, v5, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_5
    const-string v2, "aod_time_update"

    invoke-static {v0, v2, v3, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->getIntFromSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_8

    if-eqz v1, :cond_6

    const-string v2, "need_reset_aod_time"

    invoke-static {v0, v2, v5, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz v6, :cond_7

    const-string v2, "aod_start"

    const/16 v7, 0x168

    invoke-static {v0, v2, v7, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->getIntFromSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const-string v7, "aod_end"

    const/16 v8, 0x5a0

    invoke-static {v0, v7, v8, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->getIntFromSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const-string v8, "aod_start"

    invoke-static {v0, v8, v2, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v2, "aod_end"

    invoke-static {v0, v2, v7, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_6
    const-string v2, "aod_mode_time"

    invoke-static {v0, v2, v5, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_7
    :goto_2
    const-string v2, "aod_time_update"

    invoke-static {v0, v2, v5, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_8
    const-string v2, "aod_show_style_update"

    invoke-static {v0, v2, v3, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->getIntFromSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_b

    if-eqz v1, :cond_a

    const-string v2, "aod_show_style"

    if-eqz v6, :cond_9

    move v3, v5

    goto :goto_3

    :cond_9
    const/4 v3, 0x2

    :goto_3
    invoke-static {v0, v2, v3, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_a
    const-string v2, "aod_show_style_update"

    invoke-static {v0, v2, v5, v4}, Lcom/miui/aod/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_b
    invoke-static {v0, v1}, Lcom/miui/aod/widget/AODSettings;->upgradeIndex2Name(Landroid/content/ContentResolver;Z)V

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/aod/widget/AODSettings;->upgradeName2Category(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/aod/widget/AODSettings;->upgradeScrapHistoryName(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        0x3
        0x2
        0x6
        0x5
        0x1
        0x4
        0x7
        0x8
        0x9
        0xa
        0x0
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data
.end method


# virtual methods
.method public addCallback(Lcom/miui/aod/DozeHost$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dozeTimeTick()V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mAODView:Lcom/miui/aod/AODView;

    invoke-virtual {p0}, Lcom/miui/aod/AODView;->handleUpdateView()V

    return-void
.end method

.method public extendPulse()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/DozeHost$Callback;

    invoke-interface {v0}, Lcom/miui/aod/DozeHost$Callback;->onExtendPulse()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireAnimateState()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/aod/DozeHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/DozeHost$Callback;

    iget-boolean v2, p0, Lcom/miui/aod/DozeHost;->mShowAodAnimate:Z

    invoke-interface {v1, v2}, Lcom/miui/aod/DozeHost$Callback;->onAodAnimate(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireAodState(ZLjava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/aod/DozeHost;->setAodStateReason(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/aod/DozeHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/miui/aod/DozeHost;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/aod/DozeHost;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    new-instance v3, Lcom/miui/aod/DozeHost$3;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/miui/aod/DozeHost$3;-><init>(Lcom/miui/aod/DozeHost;Ljava/util/List;ZLjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/miui/aod/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fireFingerprintPressed(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/aod/DozeHost;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    new-instance v2, Lcom/miui/aod/DozeHost$4;

    invoke-direct {v2, p0, p1}, Lcom/miui/aod/DozeHost$4;-><init>(Lcom/miui/aod/DozeHost;Z)V

    invoke-interface {v1, v2}, Lcom/miui/aod/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public firePowerSaveChanged()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isPowerSaveMode(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/DozeHost$Callback;

    invoke-interface {v1, v0}, Lcom/miui/aod/DozeHost$Callback;->onPowerSaveChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAodStateReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mAodStateOnReason:Ljava/lang/String;

    return-object p0
.end method

.method public isAnimateShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/DozeHost;->mShowAodAnimate:Z

    return p0
.end method

.method public isAodClockVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isDozing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/DozeHost;->mDozingRequested:Z

    return p0
.end method

.method public isGxzwIconShown()Z
    .locals 7

    const-string v0, "KEYGUARD_GXZW_ICON_SHOWN"

    invoke-static {v0}, Lcom/miui/aod/utils/CommonUtils;->getRuntimeSharedValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iget-boolean p0, p0, Lcom/miui/aod/DozeHost;->mGxzwIconTransparent:Z

    if-nez p0, :cond_1

    :goto_0
    move v3, v4

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x1

    cmp-long p0, v0, v5

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v3
.end method

.method public isPulsingBlocked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSimPinSecure()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/DozeHost;->mSimPinSecure:Z

    return p0
.end method

.method public notifyKeycodeGoto()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/DozeHost$Callback;

    invoke-interface {v0}, Lcom/miui/aod/DozeHost$Callback;->notifyKeycodeGoto()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGxzwIconChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/DozeHost;->mGxzwIconTransparent:Z

    return-void
.end method

.method public onKeyguardTransparent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/aod/DozeHost;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->removeAODViewRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, p0}, Lcom/miui/aod/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeAODView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/aod/DozeHost;->mViewManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mAODView:Lcom/miui/aod/AODView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/aod/DozeHost;->mWindowAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mAODView:Lcom/miui/aod/AODView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/aod/AODView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mViewManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/aod/DozeHost;->mAODView:Lcom/miui/aod/AODView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/DozeHost;->mWindowAdded:Z

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/miui/aod/DozeHost$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAnimateWakeup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/DozeHost;->mAnimateWakeup:Z

    return-void
.end method

.method public setAodClockVisibility(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/aod/DozeHost;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    new-instance v2, Lcom/miui/aod/DozeHost$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/aod/DozeHost$2;-><init>(Lcom/miui/aod/DozeHost;Z)V

    invoke-interface {v1, v2}, Lcom/miui/aod/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAodStateReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/DozeHost;->mAodStateOnReason:Ljava/lang/String;

    return-void
.end method

.method public setNotificationAnimate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/DozeHost;->mShowAodAnimate:Z

    return-void
.end method

.method public setSimPinSecure(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/DozeHost;->mSimPinSecure:Z

    return-void
.end method

.method public setSunImage(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mAODView:Lcom/miui/aod/AODView;

    invoke-virtual {p0, p1}, Lcom/miui/aod/AODView;->setSunImage(I)V

    return-void
.end method

.method public startDozing()V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/aod/DozeHost;->mDozingRequested:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/aod/DozeHost;->mDozingRequested:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/aod/DozeHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/DozeHost$Callback;

    iget-boolean v2, p0, Lcom/miui/aod/DozeHost;->mDozingRequested:Z

    invoke-interface {v1, v2}, Lcom/miui/aod/DozeHost$Callback;->onDozingRequested(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/miui/aod/DozeHost;->mDozing:Z

    invoke-static {v0, v1}, Lcom/miui/aod/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    iget-boolean v0, p0, Lcom/miui/aod/DozeHost;->mDozingRequested:Z

    iput-boolean v0, p0, Lcom/miui/aod/DozeHost;->mDozing:Z

    invoke-direct {p0}, Lcom/miui/aod/DozeHost;->showSecurityIdentityViewAt()Lcom/miui/aod/AODView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/DozeHost;->mAODView:Lcom/miui/aod/AODView;

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mAODView:Lcom/miui/aod/AODView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/aod/AODView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mAODView:Lcom/miui/aod/AODView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/aod/AODView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mAODView:Lcom/miui/aod/AODView;

    invoke-virtual {v0}, Lcom/miui/aod/AODView;->onStartDoze()V

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mAODView:Lcom/miui/aod/AODView;

    invoke-virtual {v0}, Lcom/miui/aod/AODView;->handleUpdateView()V

    invoke-static {}, Lcom/miui/aod/Utils;->isGxzwSensor()Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isAodClockDisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isAodAnimateEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isAodClockDisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/widget/AODSettings;->getClockStyleInfo(Landroid/content/Context;)Lcom/miui/aod/common/StyleInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/aod/common/StyleInfo;->getStartDelay()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/miui/aod/common/StyleInfo;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/aod/DozeHost$SineEaseOutInterpolator;

    invoke-direct {v1, p0}, Lcom/miui/aod/DozeHost$SineEaseOutInterpolator;-><init>(Lcom/miui/aod/DozeHost;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mAODView:Lcom/miui/aod/AODView;

    invoke-virtual {v0}, Lcom/miui/aod/AODView;->clearClockPanelAnimation()V

    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/miui/aod/-$$Lambda$DozeHost$PoI86tvfp347XTzMq-FYqWrCBN4;

    invoke-direct {v1, p0}, Lcom/miui/aod/-$$Lambda$DozeHost$PoI86tvfp347XTzMq-FYqWrCBN4;-><init>(Lcom/miui/aod/DozeHost;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public stopDozing()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/aod/DozeHost;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/aod/DozeHost;->onStopDoze()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/DozeHost;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/DozeHost;->mStopAodRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
