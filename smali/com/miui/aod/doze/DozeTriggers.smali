.class public Lcom/miui/aod/doze/DozeTriggers;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/miui/aod/doze/DozeMachine$Part;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;
    }
.end annotation


# instance fields
.field private final mAllowPulseTriggers:Z

.field private final mBroadcastReceiver:Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;

.field private final mContext:Landroid/content/Context;

.field private mHostCallback:Lcom/miui/aod/DozeHost$Callback;

.field private final mMachine:Lcom/miui/aod/doze/DozeMachine;

.field private mPulsePending:Z

.field private mService:Lcom/miui/aod/doze/DozeMachine$Service;

.field private mTimeController:Lcom/miui/aod/doze/MiuiDozeTimeController;

.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/aod/doze/DozeMachine;ZLcom/miui/aod/doze/DozeMachine$Service;Lcom/miui/aod/doze/MiuiDozeTimeController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;-><init>(Lcom/miui/aod/doze/DozeTriggers;Lcom/miui/aod/doze/DozeTriggers$1;)V

    iput-object v0, p0, Lcom/miui/aod/doze/DozeTriggers;->mBroadcastReceiver:Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;

    new-instance v0, Lcom/miui/aod/doze/DozeTriggers$1;

    invoke-direct {v0, p0}, Lcom/miui/aod/doze/DozeTriggers$1;-><init>(Lcom/miui/aod/doze/DozeTriggers;)V

    iput-object v0, p0, Lcom/miui/aod/doze/DozeTriggers;->mHostCallback:Lcom/miui/aod/DozeHost$Callback;

    iput-object p1, p0, Lcom/miui/aod/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/aod/doze/DozeTriggers;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    iput-boolean p3, p0, Lcom/miui/aod/doze/DozeTriggers;->mAllowPulseTriggers:Z

    iget-object p1, p0, Lcom/miui/aod/doze/DozeTriggers;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    iput-object p1, p0, Lcom/miui/aod/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    iput-object p4, p0, Lcom/miui/aod/doze/DozeTriggers;->mService:Lcom/miui/aod/doze/DozeMachine$Service;

    iput-object p5, p0, Lcom/miui/aod/doze/DozeTriggers;->mTimeController:Lcom/miui/aod/doze/MiuiDozeTimeController;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/aod/doze/DozeTriggers;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/doze/DozeTriggers;->requestPulse(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/DozeMachine;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/MiuiDozeTimeController;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers;->mTimeController:Lcom/miui/aod/doze/MiuiDozeTimeController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/aod/doze/DozeTriggers;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/aod/doze/DozeTriggers;)Lcom/miui/aod/doze/DozeMachine$Service;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers;->mService:Lcom/miui/aod/doze/DozeMachine$Service;

    return-object p0
.end method

.method private canPulse()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/doze/DozeTriggers;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/miui/aod/doze/DozeMachine;->getState()Lcom/miui/aod/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE:Lcom/miui/aod/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    invoke-virtual {p0}, Lcom/miui/aod/doze/DozeMachine;->getState()Lcom/miui/aod/doze/DozeMachine$State;

    move-result-object p0

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private checkTriggersAtInit()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/aod/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isPowerSaveMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers;->mService:Lcom/miui/aod/doze/DozeMachine$Service;

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->FINISH:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-interface {p0, v0}, Lcom/miui/aod/doze/DozeMachine$Service;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    :cond_1
    return-void
.end method

.method private continuePulseRequest(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/doze/DozeTriggers;->mPulsePending:Z

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/aod/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/aod/doze/DozeTriggers;->canPulse()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    invoke-virtual {p0, p1}, Lcom/miui/aod/doze/DozeMachine;->requestPulse(I)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/aod/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/miui/aod/doze/DozeTriggers;->mPulsePending:Z

    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    invoke-virtual {p0}, Lcom/miui/aod/doze/DozeMachine;->getState()Lcom/miui/aod/doze/DozeMachine$State;

    move-result-object p0

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/aod/DozeHost;->isPulsingBlocked()Z

    move-result v1

    invoke-static {p1, v0, p0, v1}, Lcom/miui/aod/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;ZLcom/miui/aod/doze/DozeMachine$State;Z)V

    return-void
.end method

.method private requestPulse(I)V
    .locals 2

    invoke-static {}, Lcom/miui/aod/util/Assert;->isMainThread()V

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/aod/DozeHost;->extendPulse()V

    iget-boolean v0, p0, Lcom/miui/aod/doze/DozeTriggers;->mPulsePending:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/aod/doze/DozeTriggers;->mAllowPulseTriggers:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/aod/doze/DozeTriggers;->canPulse()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/aod/doze/DozeTriggers;->continuePulseRequest(I)V

    return-void

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/miui/aod/doze/DozeTriggers;->mAllowPulseTriggers:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/aod/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/miui/aod/doze/DozeTriggers;->mPulsePending:Z

    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    invoke-virtual {p0}, Lcom/miui/aod/doze/DozeMachine;->getState()Lcom/miui/aod/doze/DozeMachine$State;

    move-result-object p0

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/aod/DozeHost;->isPulsingBlocked()Z

    move-result v1

    invoke-static {p1, v0, p0, v1}, Lcom/miui/aod/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;ZLcom/miui/aod/doze/DozeMachine$State;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, " pulsePending="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/miui/aod/doze/DozeTriggers;->mPulsePending:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "DozeSensors:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public transitionTo(Lcom/miui/aod/doze/DozeMachine$State;Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 0

    sget-object p1, Lcom/miui/aod/doze/DozeTriggers$2;->$SwitchMap$com$miui$aod$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Lcom/miui/aod/doze/DozeMachine$State;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/aod/doze/DozeTriggers;->mBroadcastReceiver:Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;

    iget-object p2, p0, Lcom/miui/aod/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;->unregister(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/aod/doze/DozeTriggers;->mHostCallback:Lcom/miui/aod/DozeHost$Callback;

    invoke-virtual {p1, p0}, Lcom/miui/aod/DozeHost;->removeCallback(Lcom/miui/aod/DozeHost$Callback;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/miui/aod/doze/DozeTriggers;->mBroadcastReceiver:Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;

    iget-object p2, p0, Lcom/miui/aod/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/miui/aod/doze/DozeTriggers$TriggerReceiver;->register(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/aod/doze/DozeTriggers;->mHostCallback:Lcom/miui/aod/DozeHost$Callback;

    invoke-virtual {p1, p2}, Lcom/miui/aod/DozeHost;->addCallback(Lcom/miui/aod/DozeHost$Callback;)V

    invoke-direct {p0}, Lcom/miui/aod/doze/DozeTriggers;->checkTriggersAtInit()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
