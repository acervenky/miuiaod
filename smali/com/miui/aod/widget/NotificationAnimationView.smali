.class public Lcom/miui/aod/widget/NotificationAnimationView;
.super Landroid/view/View;
.source "NotificationAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;
    }
.end annotation


# instance fields
.field private frameCallback:Landroid/view/Choreographer$FrameCallback;

.field private volatile mAnimationRunning:Z

.field private mDrawer:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;

.field private volatile mFrameTime:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/widget/NotificationAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/aod/widget/NotificationAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/aod/widget/NotificationAnimationView$1;

    invoke-direct {p1, p0}, Lcom/miui/aod/widget/NotificationAnimationView$1;-><init>(Lcom/miui/aod/widget/NotificationAnimationView;)V

    iput-object p1, p0, Lcom/miui/aod/widget/NotificationAnimationView;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-direct {p0}, Lcom/miui/aod/widget/NotificationAnimationView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/widget/NotificationAnimationView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/aod/widget/NotificationAnimationView;->dispatchDraw(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/aod/widget/NotificationAnimationView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mAnimationRunning:Z

    return p0
.end method

.method private dispatchDraw(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mFrameTime:J

    invoke-virtual {p0}, Lcom/miui/aod/widget/NotificationAnimationView;->invalidate()V

    return-void
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mAnimationRunning:Z

    invoke-virtual {p0}, Lcom/miui/aod/widget/NotificationAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "NotificationAnimationView"

    const/16 v3, 0x80

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object p0, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/miui/aod/widget/NotificationAnimationView;->stopAnimation()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mDrawer:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mDrawer:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;

    iget-wide v1, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mFrameTime:J

    invoke-interface {v0, p1, v1, v2}, Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;->onAnimationDraw(Landroid/graphics/Canvas;J)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mDrawer:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;

    invoke-interface {p1}, Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mDrawer:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;

    invoke-virtual {p0}, Lcom/miui/aod/widget/NotificationAnimationView;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public releaseDrawer()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mDrawer:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mDrawer:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;

    invoke-interface {v0}, Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mDrawer:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;

    :cond_0
    return-void
.end method

.method public setAnimationDrawer(Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mDrawer:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;

    return-void
.end method

.method public startAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mAnimationRunning:Z

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/aod/widget/NotificationAnimationView;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/aod/widget/NotificationAnimationView;->releaseDrawer()V

    invoke-virtual {p0}, Lcom/miui/aod/widget/NotificationAnimationView;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mAnimationRunning:Z

    iget-object v0, p0, Lcom/miui/aod/widget/NotificationAnimationView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/aod/widget/NotificationAnimationView;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
