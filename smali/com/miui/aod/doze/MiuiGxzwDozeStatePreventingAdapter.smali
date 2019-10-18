.class public Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;
.super Lcom/miui/aod/doze/DozeMachine$Service$Delegate;
.source "MiuiGxzwDozeStatePreventingAdapter.java"


# instance fields
.field private mAod2On:Z

.field private mAodBrightness:I

.field private final mContext:Landroid/content/Context;

.field private mFingerprintPress:Z


# direct methods
.method private constructor <init>(Lcom/miui/aod/doze/DozeMachine$Service;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;-><init>(Lcom/miui/aod/doze/DozeMachine$Service;)V

    const/16 p1, 0x11

    iput p1, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mAodBrightness:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mAod2On:Z

    iput-object p2, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static wrapIfNeeded(Lcom/miui/aod/doze/DozeMachine$Service;Landroid/content/Context;)Lcom/miui/aod/doze/DozeMachine$Service;
    .locals 1

    invoke-static {}, Lcom/miui/aod/Utils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;

    invoke-direct {v0, p0, p1}, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;-><init>(Lcom/miui/aod/doze/DozeMachine$Service;Landroid/content/Context;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public fingerprintPressed(ZLjava/lang/Runnable;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;->fingerprintPressed(ZLjava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mFingerprintPress:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mFingerprintPress:Z

    sget-boolean v0, Lcom/miui/aod/Utils;->SUPPORT_LOW_BRIGHTNESS_FOD:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mAodBrightness:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mAod2On:Z

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mAod2On:Z

    if-eqz p1, :cond_3

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mAod2On:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;->finish()V

    const/16 v0, 0x11

    iput v0, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mAodBrightness:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mFingerprintPress:Z

    iput-boolean v0, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mAod2On:Z

    return-void
.end method

.method public requestState(Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 1

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE:Lcom/miui/aod/doze/DozeMachine$State;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/miui/aod/doze/DozeMachine$State;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->FINISH:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isUnlockWithFingerprintPossible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isShowFingerprintIcon(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1

    iput p1, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mAodBrightness:I

    sget-boolean v0, Lcom/miui/aod/Utils;->SUPPORT_LOW_BRIGHTNESS_FOD:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/aod/doze/MiuiGxzwDozeStatePreventingAdapter;->mFingerprintPress:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;->setDozeScreenBrightness(I)V

    :cond_1
    return-void
.end method
