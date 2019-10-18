.class public Lcom/miui/aod/doze/MiuiAnimDozeStatePreventingAdapter;
.super Lcom/miui/aod/doze/DozeMachine$Service$Delegate;
.source "MiuiAnimDozeStatePreventingAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/miui/aod/doze/DozeMachine$Service;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;-><init>(Lcom/miui/aod/doze/DozeMachine$Service;)V

    iput-object p2, p0, Lcom/miui/aod/doze/MiuiAnimDozeStatePreventingAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static wrapIfNeeded(Lcom/miui/aod/doze/DozeMachine$Service;Landroid/content/Context;)Lcom/miui/aod/doze/DozeMachine$Service;
    .locals 1

    invoke-static {p1}, Lcom/miui/aod/Utils;->isAodAnimateEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/aod/doze/MiuiAnimDozeStatePreventingAdapter;

    invoke-direct {v0, p0, p1}, Lcom/miui/aod/doze/MiuiAnimDozeStatePreventingAdapter;-><init>(Lcom/miui/aod/doze/DozeMachine$Service;Landroid/content/Context;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public setDozeScreenState(I)V
    .locals 3

    invoke-static {}, Lcom/miui/aod/Utils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiAnimDozeStatePreventingAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isShowFingerprintIcon(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiAnimDozeStatePreventingAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isFodAodShowEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    :cond_1
    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/aod/DozeHost;->isAnimateShowing()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "reason_fod"

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/aod/DozeHost;->getAodStateReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/aod/doze/MiuiAnimDozeStatePreventingAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->isAodClockDisable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "AnimDozeStatePreventingAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prevent setDozeScreenState state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/miui/aod/doze/DozeMachine$Service$Delegate;->setDozeScreenState(I)V

    :goto_2
    return-void
.end method
