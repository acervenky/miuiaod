.class public Lcom/miui/aod/doze/DozeMachine;
.super Ljava/lang/Object;
.source "DozeMachine.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/doze/DozeMachine$Service;,
        Lcom/miui/aod/doze/DozeMachine$Part;,
        Lcom/miui/aod/doze/DozeMachine$State;
    }
.end annotation


# instance fields
.field private mAodReason:I

.field private mContext:Landroid/content/Context;

.field private final mDozeService:Lcom/miui/aod/doze/DozeMachine$Service;

.field private mParts:[Lcom/miui/aod/doze/DozeMachine$Part;

.field private mPulseReason:I

.field private final mQueuedRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/aod/doze/DozeMachine$State;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/miui/aod/doze/DozeMachine$State;

.field private final mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

.field private mWakeLockHeldForCurrentState:Z


# direct methods
.method public constructor <init>(Lcom/miui/aod/doze/DozeMachine$Service;Lcom/miui/aod/util/wakelock/WakeLock;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->UNINITIALIZED:Lcom/miui/aod/doze/DozeMachine$State;

    iput-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    iput-object p1, p0, Lcom/miui/aod/doze/DozeMachine;->mDozeService:Lcom/miui/aod/doze/DozeMachine$Service;

    iput-object p2, p0, Lcom/miui/aod/doze/DozeMachine;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    iput-object p3, p0, Lcom/miui/aod/doze/DozeMachine;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isExecutingTransition()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private performTransitionOnComponents(Lcom/miui/aod/doze/DozeMachine$State;Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mParts:[Lcom/miui/aod/doze/DozeMachine$Part;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lcom/miui/aod/doze/DozeMachine$Part;->transitionTo(Lcom/miui/aod/doze/DozeMachine$State;Lcom/miui/aod/doze/DozeMachine$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/aod/doze/DozeMachine$1;->$SwitchMap$com$miui$aod$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Lcom/miui/aod/doze/DozeMachine$State;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/miui/aod/doze/DozeMachine;->mDozeService:Lcom/miui/aod/doze/DozeMachine$Service;

    invoke-interface {p0}, Lcom/miui/aod/doze/DozeMachine$Service;->finish()V

    :goto_1
    return-void
.end method

.method private requestState(Lcom/miui/aod/doze/DozeMachine$State;I)V
    .locals 4

    invoke-static {}, Lcom/miui/aod/util/Assert;->isMainThread()V

    const-string v0, "DozeMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request: current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " req="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/miui/aod/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/miui/aod/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/aod/doze/DozeMachine;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    invoke-interface {p1}, Lcom/miui/aod/util/wakelock/WakeLock;->acquire()V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/doze/DozeMachine$State;

    invoke-direct {p0, v0, p2}, Lcom/miui/aod/doze/DozeMachine;->transitionTo(Lcom/miui/aod/doze/DozeMachine$State;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/miui/aod/doze/DozeMachine;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    invoke-interface {p0}, Lcom/miui/aod/util/wakelock/WakeLock;->release()V

    :cond_1
    return-void
.end method

.method private resolveIntermediateState(Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 1

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$1;->$SwitchMap$com$miui$aod$doze$DozeMachine$State:[I

    invoke-virtual {p1}, Lcom/miui/aod/doze/DozeMachine$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/miui/aod/Utils;->isGxzwSensor()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/aod/doze/DozeMachine;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/aod/Utils;->isShowFingerprintIcon(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/aod/doze/DozeMachine;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/aod/Utils;->isFodAodShowEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/doze/DozeMachine;->transitionTo(Lcom/miui/aod/doze/DozeMachine$State;I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/aod/doze/DozeMachine;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/aod/Utils;->isAodClockDisable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE:Lcom/miui/aod/doze/DozeMachine$State;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/aod/doze/DozeMachine;->transitionTo(Lcom/miui/aod/doze/DozeMachine$State;I)V

    :goto_1
    return-void
.end method

.method private transitionPolicy(Lcom/miui/aod/doze/DozeMachine$State;)Lcom/miui/aod/doze/DozeMachine$State;
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->FINISH:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/miui/aod/doze/DozeMachine$State;->FINISH:Lcom/miui/aod/doze/DozeMachine$State;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/miui/aod/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/miui/aod/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne p1, v0, :cond_2

    const-string p1, "DozeMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropping pulse done because current state is already done: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    return-object p0

    :cond_2
    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {v0}, Lcom/miui/aod/doze/DozeMachine$State;->canPulse()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "DozeMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropping pulse request because current state can\'t pulse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    return-object p0

    :cond_3
    return-object p1
.end method

.method private transitionTo(Lcom/miui/aod/doze/DozeMachine$State;I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/miui/aod/doze/DozeMachine;->transitionPolicy(Lcom/miui/aod/doze/DozeMachine$State;)Lcom/miui/aod/doze/DozeMachine$State;

    move-result-object v0

    const-string v1, "DozeMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transition: old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " new="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/aod/doze/DozeMachine;->validateTransition(Lcom/miui/aod/doze/DozeMachine$State;)V

    iget-object p1, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    iput-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-static {v0}, Lcom/miui/aod/doze/DozeLog;->traceState(Lcom/miui/aod/doze/DozeMachine$State;)V

    const-string v1, "doze_machine_state"

    invoke-virtual {v0}, Lcom/miui/aod/doze/DozeMachine$State;->ordinal()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/aod/utils/CommonUtils;->traceAppCounter(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/aod/doze/DozeMachine;->updateStateReason(Lcom/miui/aod/doze/DozeMachine$State;Lcom/miui/aod/doze/DozeMachine$State;I)V

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/doze/DozeMachine;->performTransitionOnComponents(Lcom/miui/aod/doze/DozeMachine$State;Lcom/miui/aod/doze/DozeMachine$State;)V

    invoke-direct {p0, v0}, Lcom/miui/aod/doze/DozeMachine;->updateWakeLockState(Lcom/miui/aod/doze/DozeMachine$State;)V

    invoke-direct {p0, v0}, Lcom/miui/aod/doze/DozeMachine;->resolveIntermediateState(Lcom/miui/aod/doze/DozeMachine$State;)V

    return-void
.end method

.method private updateStateReason(Lcom/miui/aod/doze/DozeMachine$State;Lcom/miui/aod/doze/DozeMachine$State;I)V
    .locals 2

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/miui/aod/doze/DozeMachine$State;

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    iput p3, p0, Lcom/miui/aod/doze/DozeMachine;->mPulseReason:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne p2, v0, :cond_1

    iput v1, p0, Lcom/miui/aod/doze/DozeMachine;->mPulseReason:I

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne p1, v0, :cond_2

    iput p3, p0, Lcom/miui/aod/doze/DozeMachine;->mAodReason:I

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne p2, p1, :cond_3

    iput v1, p0, Lcom/miui/aod/doze/DozeMachine;->mAodReason:I

    :cond_3
    :goto_1
    return-void
.end method

.method private updateWakeLockState(Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 1

    invoke-virtual {p1}, Lcom/miui/aod/doze/DozeMachine$State;->staysAwake()Z

    move-result p1

    iget-boolean v0, p0, Lcom/miui/aod/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/doze/DozeMachine;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    invoke-interface {p1}, Lcom/miui/aod/util/wakelock/WakeLock;->release()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/aod/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/aod/doze/DozeMachine;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    invoke-interface {p1}, Lcom/miui/aod/util/wakelock/WakeLock;->acquire()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/aod/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private validateTransition(Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/miui/aod/doze/DozeMachine$1;->$SwitchMap$com$miui$aod$doze$DozeMachine$State:[I

    iget-object v1, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/miui/aod/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->FINISH:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne p1, v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroid/support/v4/util/Preconditions;->checkState(Z)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->INITIALIZED:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne p1, v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-static {v0}, Landroid/support/v4/util/Preconditions;->checkState(Z)V

    :goto_2
    sget-object v0, Lcom/miui/aod/doze/DozeMachine$1;->$SwitchMap$com$miui$aod$doze$DozeMachine$State:[I

    invoke-virtual {p1}, Lcom/miui/aod/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/miui/aod/doze/DozeMachine$State;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_PULSING:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v1, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    invoke-static {v2}, Landroid/support/v4/util/Preconditions;->checkState(Z)V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->UNINITIALIZED:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v1, :cond_6

    move v2, v3

    :cond_6
    invoke-static {v2}, Landroid/support/v4/util/Preconditions;->checkState(Z)V

    goto :goto_3

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t transition to UNINITIALIZED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v1, :cond_7

    move v2, v3

    :cond_7
    invoke-static {v2}, Landroid/support/v4/util/Preconditions;->checkState(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal Transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, " state="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, " wakeLockHeldForCurrentState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/aod/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "Parts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/aod/doze/DozeMachine;->mParts:[Lcom/miui/aod/doze/DozeMachine$Part;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lcom/miui/aod/doze/DozeMachine$Part;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAodReason()I
    .locals 0

    iget p0, p0, Lcom/miui/aod/doze/DozeMachine;->mAodReason:I

    return p0
.end method

.method public getPulseReason()I
    .locals 3

    invoke-static {}, Lcom/miui/aod/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/miui/aod/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_PULSING:Lcom/miui/aod/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "must be in pulsing state, but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget p0, p0, Lcom/miui/aod/doze/DozeMachine;->mPulseReason:I

    return p0
.end method

.method public getState()Lcom/miui/aod/doze/DozeMachine$State;
    .locals 1

    invoke-static {}, Lcom/miui/aod/util/Assert;->isMainThread()V

    invoke-direct {p0}, Lcom/miui/aod/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/support/v4/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/miui/aod/doze/DozeMachine;->mState:Lcom/miui/aod/doze/DozeMachine$State;

    return-object p0
.end method

.method public requestAod(I)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/aod/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/support/v4/util/Preconditions;->checkState(Z)V

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-direct {p0, v0, p1}, Lcom/miui/aod/doze/DozeMachine;->requestState(Lcom/miui/aod/doze/DozeMachine$State;I)V

    return-void
.end method

.method public requestPulse(I)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/aod/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/support/v4/util/Preconditions;->checkState(Z)V

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-direct {p0, v0, p1}, Lcom/miui/aod/doze/DozeMachine;->requestState(Lcom/miui/aod/doze/DozeMachine$State;I)V

    return-void
.end method

.method public requestState(Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/miui/aod/doze/DozeMachine$State;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/util/Preconditions;->checkArgument(Z)V

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/doze/DozeMachine;->requestState(Lcom/miui/aod/doze/DozeMachine$State;I)V

    return-void
.end method

.method public setParts([Lcom/miui/aod/doze/DozeMachine$Part;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/aod/doze/DozeMachine;->mParts:[Lcom/miui/aod/doze/DozeMachine$Part;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/util/Preconditions;->checkState(Z)V

    iput-object p1, p0, Lcom/miui/aod/doze/DozeMachine;->mParts:[Lcom/miui/aod/doze/DozeMachine$Part;

    return-void
.end method
