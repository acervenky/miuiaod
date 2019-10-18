.class public Lcom/miui/aod/doze/MiuiDozeTimeController;
.super Ljava/lang/Object;
.source "MiuiDozeTimeController.java"

# interfaces
.implements Lcom/miui/aod/doze/DozeMachine$Part;


# static fields
.field public static final TAG:Ljava/lang/String; = "MiuiDozeTimeController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHideDozeTimeout:Lcom/miui/aod/util/AlarmTimeout;

.field private mHideTime:J

.field private final mMachine:Lcom/miui/aod/doze/DozeMachine;

.field private mService:Lcom/miui/aod/doze/DozeMachine$Service;

.field private final mShowDozeTimeout:Lcom/miui/aod/util/AlarmTimeout;

.field private mShowStyle:I

.field private mShowTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/miui/aod/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/miui/aod/doze/DozeMachine$Service;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    iput-object p5, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mService:Lcom/miui/aod/doze/DozeMachine$Service;

    new-instance p1, Lcom/miui/aod/util/AlarmTimeout;

    new-instance p3, Lcom/miui/aod/doze/-$$Lambda$MiuiDozeTimeController$1disi4UrdOzxjbuhgfH3wNWvd0Y;

    invoke-direct {p3, p0}, Lcom/miui/aod/doze/-$$Lambda$MiuiDozeTimeController$1disi4UrdOzxjbuhgfH3wNWvd0Y;-><init>(Lcom/miui/aod/doze/MiuiDozeTimeController;)V

    const-string p5, "DarkenAlarmTimeout"

    invoke-direct {p1, p4, p3, p5, p2}, Lcom/miui/aod/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mShowDozeTimeout:Lcom/miui/aod/util/AlarmTimeout;

    new-instance p1, Lcom/miui/aod/util/AlarmTimeout;

    new-instance p3, Lcom/miui/aod/doze/-$$Lambda$MiuiDozeTimeController$SUdSqhbvMOP1Vd705-oznZOPF-4;

    invoke-direct {p3, p0}, Lcom/miui/aod/doze/-$$Lambda$MiuiDozeTimeController$SUdSqhbvMOP1Vd705-oznZOPF-4;-><init>(Lcom/miui/aod/doze/MiuiDozeTimeController;)V

    const-string p5, "OffAlarmTimeout"

    invoke-direct {p1, p4, p3, p5, p2}, Lcom/miui/aod/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mHideDozeTimeout:Lcom/miui/aod/util/AlarmTimeout;

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/aod/Utils;->getShowStyle(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mShowStyle:I

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/aod/Utils;->isTimingStyle(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/aod/doze/MiuiDozeTimeController;->checkTime()V

    :cond_0
    return-void
.end method

.method private checkTime()V
    .locals 9

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mShowTime:J

    iput-wide v0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mHideTime:J

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->getAodStartTime(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/aod/Utils;->getAodEndTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v5, v4

    int-to-long v4, v5

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    cmp-long v6, v0, v2

    const-wide/32 v7, 0x5265c00

    if-gtz v6, :cond_3

    cmp-long v6, v4, v0

    if-ltz v6, :cond_1

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mHideTime:J

    goto :goto_5

    :cond_1
    :goto_0
    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    sub-long/2addr v0, v4

    goto :goto_1

    :cond_2
    sub-long/2addr v0, v4

    add-long/2addr v0, v7

    :goto_1
    iput-wide v0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mShowTime:J

    goto :goto_5

    :cond_3
    if-lez v6, :cond_7

    cmp-long v6, v4, v0

    if-gez v6, :cond_5

    cmp-long v6, v4, v2

    if-lez v6, :cond_5

    cmp-long v2, v0, v4

    if-lez v2, :cond_4

    sub-long/2addr v0, v4

    goto :goto_2

    :cond_4
    sub-long/2addr v0, v4

    add-long/2addr v0, v7

    :goto_2
    iput-wide v0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mShowTime:J

    goto :goto_5

    :cond_5
    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    :goto_3
    sub-long/2addr v2, v4

    goto :goto_4

    :cond_6
    add-long/2addr v2, v7

    goto :goto_3

    :goto_4
    iput-wide v2, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mHideTime:J

    :cond_7
    :goto_5
    return-void
.end method

.method private hideDoze()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/aod/doze/MiuiDozeTimeController;->onShowDoze(Z)V

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isTimingStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/aod/doze/MiuiDozeTimeController;->checkTime()V

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mShowDozeTimeout:Lcom/miui/aod/util/AlarmTimeout;

    iget-wide v1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mShowTime:J

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/aod/util/AlarmTimeout;->schedule(JI)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$1disi4UrdOzxjbuhgfH3wNWvd0Y(Lcom/miui/aod/doze/MiuiDozeTimeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/aod/doze/MiuiDozeTimeController;->showDoze()V

    return-void
.end method

.method public static synthetic lambda$SUdSqhbvMOP1Vd705-oznZOPF-4(Lcom/miui/aod/doze/MiuiDozeTimeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/aod/doze/MiuiDozeTimeController;->hideDoze()V

    return-void
.end method

.method private onShowDoze(Z)V
    .locals 7

    sget-object v0, Lcom/miui/aod/doze/MiuiDozeTimeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowDoze:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/miui/aod/doze/DozeMachine;->getState()Lcom/miui/aod/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/miui/aod/doze/DozeMachine$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sget-object v4, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    sget-object v5, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    sget-object v6, Lcom/miui/aod/doze/DozeMachine$State;->DOZE:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne v0, v6, :cond_3

    move v2, v3

    :cond_3
    if-eqz p1, :cond_4

    if-eqz v2, :cond_6

    sget-object v0, Lcom/miui/aod/doze/MiuiDozeTimeController;->TAG:Ljava/lang/String;

    const-string v1, "Show, unpausing AOD"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mService:Lcom/miui/aod/doze/DozeMachine$Service;

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-interface {p0, v0}, Lcom/miui/aod/doze/DozeMachine$Service;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    goto :goto_3

    :cond_4
    if-nez v5, :cond_5

    if-nez v1, :cond_5

    if-nez v1, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    sget-object v0, Lcom/miui/aod/doze/MiuiDozeTimeController;->TAG:Ljava/lang/String;

    const-string v1, "Hide, pausing AOD"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mService:Lcom/miui/aod/doze/DozeMachine$Service;

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE:Lcom/miui/aod/doze/DozeMachine$State;

    invoke-interface {p0, v0}, Lcom/miui/aod/doze/DozeMachine$Service;->requestState(Lcom/miui/aod/doze/DozeMachine$State;)V

    :cond_6
    :goto_3
    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/aod/DozeHost;->setAodClockVisibility(Z)V

    return-void
.end method

.method private showDoze()V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/aod/doze/MiuiDozeTimeController;->onShowDoze(Z)V

    iget-object v1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/aod/Utils;->isTimingStyle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/aod/doze/MiuiDozeTimeController;->checkTime()V

    iget-object v1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mHideDozeTimeout:Lcom/miui/aod/util/AlarmTimeout;

    iget-wide v2, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mHideTime:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/aod/util/AlarmTimeout;->schedule(JI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAodFire(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isShowTemporary(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/aod/DozeHost;->setAodClockVisibility(Z)V

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mHideDozeTimeout:Lcom/miui/aod/util/AlarmTimeout;

    invoke-virtual {p1}, Lcom/miui/aod/util/AlarmTimeout;->cancel()V

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mHideDozeTimeout:Lcom/miui/aod/util/AlarmTimeout;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2, v0}, Lcom/miui/aod/util/AlarmTimeout;->schedule(JI)V

    :cond_0
    return-void
.end method

.method public transitionTo(Lcom/miui/aod/doze/DozeMachine$State;Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 6

    sget-object p1, Lcom/miui/aod/doze/MiuiDozeTimeController$1;->$SwitchMap$com$miui$aod$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Lcom/miui/aod/doze/DozeMachine$State;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mShowDozeTimeout:Lcom/miui/aod/util/AlarmTimeout;

    invoke-virtual {p1}, Lcom/miui/aod/util/AlarmTimeout;->cancel()V

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mHideDozeTimeout:Lcom/miui/aod/util/AlarmTimeout;

    invoke-virtual {p0}, Lcom/miui/aod/util/AlarmTimeout;->cancel()V

    goto/16 :goto_1

    :pswitch_1
    iget p1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mShowStyle:I

    if-nez p1, :cond_2

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/aod/DozeHost;->setAodClockVisibility(Z)V

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mHideDozeTimeout:Lcom/miui/aod/util/AlarmTimeout;

    invoke-virtual {p0}, Lcom/miui/aod/util/AlarmTimeout;->cancel()V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mMachine:Lcom/miui/aod/doze/DozeMachine;

    invoke-virtual {p1}, Lcom/miui/aod/doze/DozeMachine;->getAodReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/aod/doze/MiuiDozeTimeController;->onAodFire(I)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/aod/Utils;->isTimingStyle(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mShowTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mShowDozeTimeout:Lcom/miui/aod/util/AlarmTimeout;

    iget-wide v4, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mShowTime:J

    invoke-virtual {p1, v4, v5, v0}, Lcom/miui/aod/util/AlarmTimeout;->schedule(JI)V

    sget-object p1, Lcom/miui/aod/doze/MiuiDozeTimeController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transitionTo: mShowDozeTimeout schedule "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mShowTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mHideTime:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mHideDozeTimeout:Lcom/miui/aod/util/AlarmTimeout;

    iget-wide v4, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mHideTime:J

    invoke-virtual {p1, v4, v5, v0}, Lcom/miui/aod/util/AlarmTimeout;->schedule(JI)V

    sget-object p1, Lcom/miui/aod/doze/MiuiDozeTimeController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transitionTo: mHideDozeTimeout schedule "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mHideTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-wide p0, p0, Lcom/miui/aod/doze/MiuiDozeTimeController;->mHideTime:J

    cmp-long p0, p0, v2

    if-nez p0, :cond_2

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/miui/aod/DozeHost;->setAodClockVisibility(Z)V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
