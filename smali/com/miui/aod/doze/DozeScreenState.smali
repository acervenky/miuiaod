.class public Lcom/miui/aod/doze/DozeScreenState;
.super Ljava/lang/Object;
.source "DozeScreenState.java"

# interfaces
.implements Lcom/miui/aod/doze/DozeMachine$Part;


# instance fields
.field private final mApplyPendingScreenState:Ljava/lang/Runnable;

.field private final mDozeService:Lcom/miui/aod/doze/DozeMachine$Service;

.field private final mHandler:Landroid/os/Handler;

.field private mPendingScreenState:I


# direct methods
.method public constructor <init>(Lcom/miui/aod/doze/DozeMachine$Service;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/aod/doze/-$$Lambda$DozeScreenState$tJ9zzWt1fVff_uJayFS-2PABuMQ;

    invoke-direct {v0, p0}, Lcom/miui/aod/doze/-$$Lambda$DozeScreenState$tJ9zzWt1fVff_uJayFS-2PABuMQ;-><init>(Lcom/miui/aod/doze/DozeScreenState;)V

    iput-object v0, p0, Lcom/miui/aod/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/aod/doze/DozeScreenState;->mPendingScreenState:I

    iput-object p1, p0, Lcom/miui/aod/doze/DozeScreenState;->mDozeService:Lcom/miui/aod/doze/DozeMachine$Service;

    iput-object p2, p0, Lcom/miui/aod/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private applyPendingScreenState()V
    .locals 1

    iget v0, p0, Lcom/miui/aod/doze/DozeScreenState;->mPendingScreenState:I

    invoke-direct {p0, v0}, Lcom/miui/aod/doze/DozeScreenState;->applyScreenState(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/aod/doze/DozeScreenState;->mPendingScreenState:I

    return-void
.end method

.method private applyScreenState(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/aod/doze/DozeScreenState;->mDozeService:Lcom/miui/aod/doze/DozeMachine$Service;

    invoke-interface {v0, p1}, Lcom/miui/aod/doze/DozeMachine$Service;->setDozeScreenState(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/aod/doze/DozeScreenState;->mPendingScreenState:I

    :cond_0
    return-void
.end method

.method public static synthetic lambda$tJ9zzWt1fVff_uJayFS-2PABuMQ(Lcom/miui/aod/doze/DozeScreenState;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/aod/doze/DozeScreenState;->applyPendingScreenState()V

    return-void
.end method


# virtual methods
.method public transitionTo(Lcom/miui/aod/doze/DozeMachine$State;Lcom/miui/aod/doze/DozeMachine$State;)V
    .locals 2

    invoke-virtual {p2}, Lcom/miui/aod/doze/DozeMachine$State;->screenState()I

    move-result v0

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->FINISH:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne p2, v1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/aod/doze/DozeScreenState;->mPendingScreenState:I

    iget-object p1, p0, Lcom/miui/aod/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/miui/aod/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/miui/aod/doze/DozeScreenState;->applyScreenState(I)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/miui/aod/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/aod/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-static {p2, v1}, Lcom/miui/aod/utils/CommonUtils;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->INITIALIZED:Lcom/miui/aod/doze/DozeMachine$State;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/aod/doze/DozeScreenState;->applyScreenState(I)V

    return-void

    :cond_3
    :goto_0
    iput v0, p0, Lcom/miui/aod/doze/DozeScreenState;->mPendingScreenState:I

    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/miui/aod/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
