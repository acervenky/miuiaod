.class public Lcom/miui/aod/doze/DozeUi;
.super Ljava/lang/Object;
.source "DozeUi.java"

# interfaces
.implements Lcom/miui/aod/doze/DozeMachine$Part;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastTimeTickElapsed:J

.field private final mMachine:Lcom/miui/aod/doze/DozeMachine;

.field private final mTimeTicker:Lcom/miui/aod/util/AlarmTimeout;

.field private final mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/miui/aod/doze/DozeMachine;Lcom/miui/aod/util/wakelock/WakeLock;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/aod/doze/DozeUi;->mLastTimeTickElapsed:J

    iput-object p1, p0, Lcom/miui/aod/doze/DozeUi;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/aod/doze/DozeUi;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    iput-object p4, p0, Lcom/miui/aod/doze/DozeUi;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    iput-object p5, p0, Lcom/miui/aod/doze/DozeUi;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/miui/aod/util/AlarmTimeout;

    new-instance p3, Lcom/miui/aod/doze/-$$Lambda$DozeUi$UaChY_pbKlnPzWvpIPkzVqdZL_E;

    invoke-direct {p3, p0}, Lcom/miui/aod/doze/-$$Lambda$DozeUi$UaChY_pbKlnPzWvpIPkzVqdZL_E;-><init>(Lcom/miui/aod/doze/DozeUi;)V

    const-string p4, "doze_time_tick"

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/miui/aod/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/miui/aod/doze/DozeUi;->mTimeTicker:Lcom/miui/aod/util/AlarmTimeout;

    return-void
.end method

.method public static synthetic lambda$UaChY_pbKlnPzWvpIPkzVqdZL_E(Lcom/miui/aod/doze/DozeUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/aod/doze/DozeUi;->onTimeTick()V

    return-void
.end method

.method static synthetic lambda$onTimeTick$6()V
    .locals 0

    return-void
.end method

.method private onTimeTick()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/aod/doze/DozeUi;->verifyLastTimeTick()V

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/aod/DozeHost;->dozeTimeTick()V

    iget-object v0, p0, Lcom/miui/aod/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/aod/doze/DozeUi;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    sget-object v2, Lcom/miui/aod/doze/-$$Lambda$DozeUi$ROchPSIXP7u33DgxlSFtHjaAHiA;->INSTANCE:Lcom/miui/aod/doze/-$$Lambda$DozeUi$ROchPSIXP7u33DgxlSFtHjaAHiA;

    invoke-interface {v1, v2}, Lcom/miui/aod/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/miui/aod/doze/DozeUi;->scheduleTimeTick()V

    return-void
.end method

.method private pulseWhileDozing(I)V
    .locals 1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/doze/DozeUi;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_PULSING:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {p1, v0}, Lcom/miui/aod/doze/DozeMachine;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    iget-object p0, p0, Lcom/miui/aod/doze/DozeUi;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    sget-object p1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/miui/aod/doze/DozeMachine;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    return-void
.end method

.method private roundToNextMinute(J)J
    .locals 0

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x0

    const/16 p2, 0xe

    invoke-virtual {p0, p2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xd

    invoke-virtual {p0, p2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private scheduleTimeTick()V
    .locals 4

    iget-object v0, p0, Lcom/miui/aod/doze/DozeUi;->mTimeTicker:Lcom/miui/aod/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/miui/aod/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/aod/doze/DozeUi;->roundToNextMinute(J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/aod/doze/DozeUi;->mTimeTicker:Lcom/miui/aod/util/AlarmTimeout;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/miui/aod/util/AlarmTimeout;->schedule(JI)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/aod/doze/DozeUi;->mLastTimeTickElapsed:J

    return-void
.end method

.method private unscheduleTimeTick()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/doze/DozeUi;->mTimeTicker:Lcom/miui/aod/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/miui/aod/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/aod/doze/DozeUi;->verifyLastTimeTick()V

    iget-object p0, p0, Lcom/miui/aod/doze/DozeUi;->mTimeTicker:Lcom/miui/aod/util/AlarmTimeout;

    invoke-virtual {p0}, Lcom/miui/aod/util/AlarmTimeout;->cancel()V

    return-void
.end method

.method private updateAnimateWakeup(Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 0

    sget-object p0, Lcom/miui/aod/doze/DozeUi$1;->$SwitchMap$com$miui$aod$doze$DozeMachine$State:[I

    invoke-virtual {p1}, Lcom/miui/aod/doze/DozeMachine$State;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/aod/DozeHost;->setAnimateWakeup(Z)V

    goto :goto_0

    :cond_0
    :pswitch_0
    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/aod/DozeHost;->setAnimateWakeup(Z)V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private verifyLastTimeTick()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/aod/doze/DozeUi;->mLastTimeTickElapsed:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x15f90

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object p0, p0, Lcom/miui/aod/doze/DozeUi;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lcom/miui/aod/utils/CommonUtils;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/aod/doze/DozeLog;->traceMissedTick(Ljava/lang/String;)V

    const-string v0, "DozeMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missed AOD time tick by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public transitionTo(Lcom/miui/aod/doze/DozeMachine$State;Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 3

    sget-object v0, Lcom/miui/aod/doze/DozeUi$1;->$SwitchMap$com$miui$aod$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Lcom/miui/aod/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/aod/DozeHost;->stopDozing()V

    invoke-direct {p0}, Lcom/miui/aod/doze/DozeUi;->unscheduleTimeTick()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/aod/DozeHost;->startDozing()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/miui/aod/doze/DozeUi;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    invoke-virtual {p1}, Lcom/miui/aod/doze/DozeMachine;->getPulseReason()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/aod/doze/DozeUi;->pulseWhileDozing(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/miui/aod/doze/DozeUi;->unscheduleTimeTick()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/miui/aod/doze/DozeUi;->scheduleTimeTick()V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/miui/aod/doze/DozeMachine$State;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_PULSING:Lcom/miui/aod/doze/DozeMachine$State;

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/aod/DozeHost;->dozeTimeTick()V

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->INITIALIZED:Lcom/miui/aod/doze/DozeMachine$State;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/aod/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/aod/doze/DozeUi;->mWakeLock:Lcom/miui/aod/util/wakelock/WakeLock;

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/miui/aod/doze/-$$Lambda$DgbBxhuy1DwvlxGo4f-SvhsmjQI;

    invoke-direct {v2, v1}, Lcom/miui/aod/doze/-$$Lambda$DgbBxhuy1DwvlxGo4f-SvhsmjQI;-><init>(Lcom/miui/aod/DozeHost;)V

    invoke-interface {v0, v2}, Lcom/miui/aod/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-direct {p0}, Lcom/miui/aod/doze/DozeUi;->scheduleTimeTick()V

    :goto_0
    invoke-direct {p0, p2}, Lcom/miui/aod/doze/DozeUi;->updateAnimateWakeup(Lcom/miui/aod/doze/DozeMachine$State;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
