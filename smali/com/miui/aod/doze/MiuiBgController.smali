.class public Lcom/miui/aod/doze/MiuiBgController;
.super Ljava/lang/Object;
.source "MiuiBgController.java"

# interfaces
.implements Lcom/miui/aod/doze/DozeMachine$Part;


# static fields
.field public static final TAG:Ljava/lang/String; = "MiuiBgController"

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mBgHandler:Landroid/os/Handler;

.field private final mChangeBgTimeout:Lcom/miui/aod/util/AlarmTimeout;

.field private mContext:Landroid/content/Context;

.field private mIsSunRiseOpen:Z

.field private mScheduleTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bg_looper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/aod/doze/MiuiBgController;->sWorkerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/miui/aod/doze/MiuiBgController;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/AlarmManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/aod/util/AlarmTimeout;

    new-instance v1, Lcom/miui/aod/doze/-$$Lambda$MiuiBgController$1JcbBJaik2j1cn1LpznBHSVDZsA;

    invoke-direct {v1, p0}, Lcom/miui/aod/doze/-$$Lambda$MiuiBgController$1JcbBJaik2j1cn1LpznBHSVDZsA;-><init>(Lcom/miui/aod/doze/MiuiBgController;)V

    const-string v2, "SunImageTimeout"

    invoke-direct {v0, p3, v1, v2, p2}, Lcom/miui/aod/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/aod/doze/MiuiBgController;->mChangeBgTimeout:Lcom/miui/aod/util/AlarmTimeout;

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiBgController;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiBgController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/aod/widget/AODSettings;->isNeedTimeChangedStyle(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiBgController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/aod/widget/AODSettings;->isSunStyle(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/aod/doze/MiuiBgController;->mIsSunRiseOpen:Z

    :cond_0
    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/miui/aod/doze/MiuiBgController;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/aod/doze/MiuiBgController;->mBgHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/miui/aod/doze/MiuiBgController;->mBgHandler:Landroid/os/Handler;

    new-instance p2, Lcom/miui/aod/doze/MiuiBgController$1;

    invoke-direct {p2, p0}, Lcom/miui/aod/doze/MiuiBgController$1;-><init>(Lcom/miui/aod/doze/MiuiBgController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/doze/MiuiBgController;->mIsSunRiseOpen:Z

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/doze/MiuiBgController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/MiuiBgController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private changeBg()V
    .locals 7

    iget-boolean v0, p0, Lcom/miui/aod/doze/MiuiBgController;->mIsSunRiseOpen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 v1, v1, 0x3c

    add-int v2, v1, v0

    invoke-direct {p0, v2}, Lcom/miui/aod/doze/MiuiBgController;->chooseBg(I)I

    move-result v3

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/aod/DozeHost;->setSunImage(I)V

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {}, Lcom/miui/aod/widget/SunSelector;->getChangePointLength()I

    move-result v5

    rem-int/2addr v3, v5

    invoke-static {v3}, Lcom/miui/aod/widget/SunSelector;->getChangePoint(I)I

    move-result v3

    const-wide/32 v5, 0xea60

    if-le v3, v2, :cond_1

    sub-int/2addr v3, v1

    sub-int/2addr v3, v0

    int-to-long v0, v3

    mul-long/2addr v0, v5

    iput-wide v0, p0, Lcom/miui/aod/doze/MiuiBgController;->mScheduleTime:J

    goto :goto_0

    :cond_1
    if-ltz v3, :cond_2

    add-int/lit16 v3, v3, 0x5a0

    sub-int/2addr v3, v1

    sub-int/2addr v3, v0

    int-to-long v0, v3

    mul-long/2addr v0, v5

    iput-wide v0, p0, Lcom/miui/aod/doze/MiuiBgController;->mScheduleTime:J

    :goto_0
    iget-object v0, p0, Lcom/miui/aod/doze/MiuiBgController;->mChangeBgTimeout:Lcom/miui/aod/util/AlarmTimeout;

    iget-wide v1, p0, Lcom/miui/aod/doze/MiuiBgController;->mScheduleTime:J

    invoke-virtual {v0, v1, v2, v4}, Lcom/miui/aod/util/AlarmTimeout;->schedule(JI)V

    return-void

    :cond_2
    return-void
.end method

.method private chooseBg(I)I
    .locals 0

    invoke-static {p1}, Lcom/miui/aod/widget/SunSelector;->getDrawableIndex(I)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$1JcbBJaik2j1cn1LpznBHSVDZsA(Lcom/miui/aod/doze/MiuiBgController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/aod/doze/MiuiBgController;->changeBg()V

    return-void
.end method


# virtual methods
.method public transitionTo(Lcom/miui/aod/doze/DozeMachine$State;Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 0

    sget-object p1, Lcom/miui/aod/doze/MiuiBgController$2;->$SwitchMap$com$miui$aod$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Lcom/miui/aod/doze/DozeMachine$State;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/miui/aod/doze/MiuiBgController;->mChangeBgTimeout:Lcom/miui/aod/util/AlarmTimeout;

    invoke-virtual {p0}, Lcom/miui/aod/util/AlarmTimeout;->cancel()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/aod/doze/MiuiBgController;->changeBg()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
