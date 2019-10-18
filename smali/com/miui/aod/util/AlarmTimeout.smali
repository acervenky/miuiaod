.class public Lcom/miui/aod/util/AlarmTimeout;
.super Ljava/lang/Object;
.source "AlarmTimeout.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mScheduled:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/util/AlarmTimeout;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/miui/aod/util/AlarmTimeout;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    iput-object p3, p0, Lcom/miui/aod/util/AlarmTimeout;->mTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/aod/util/AlarmTimeout;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/aod/util/AlarmTimeout;->mScheduled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/util/AlarmTimeout;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const-string v0, "AlarmTimeout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmTimeout cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/aod/util/AlarmTimeout;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/util/AlarmTimeout;->mScheduled:Z

    :cond_0
    return-void
.end method

.method public isScheduled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/util/AlarmTimeout;->mScheduled:Z

    return p0
.end method

.method public onAlarm()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/aod/util/AlarmTimeout;->mScheduled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/util/AlarmTimeout;->mScheduled:Z

    iget-object p0, p0, Lcom/miui/aod/util/AlarmTimeout;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-interface {p0}, Landroid/app/AlarmManager$OnAlarmListener;->onAlarm()V

    return-void
.end method

.method public schedule(JI)V
    .locals 7

    packed-switch p3, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Illegal mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-boolean p3, p0, Lcom/miui/aod/util/AlarmTimeout;->mScheduled:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/util/AlarmTimeout;->cancel()V

    goto :goto_0

    :pswitch_1
    iget-boolean p3, p0, Lcom/miui/aod/util/AlarmTimeout;->mScheduled:Z

    if-eqz p3, :cond_0

    return-void

    :pswitch_2
    iget-boolean p3, p0, Lcom/miui/aod/util/AlarmTimeout;->mScheduled:Z

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/aod/util/AlarmTimeout;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/miui/aod/util/AlarmTimeout;->mTag:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/aod/util/AlarmTimeout;->mHandler:Landroid/os/Handler;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const-string p3, "AlarmTimeout"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmTimeout schedule "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/aod/util/AlarmTimeout;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/aod/util/AlarmTimeout;->mScheduled:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/miui/aod/util/AlarmTimeout;->mTag:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " timeout is already scheduled"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
