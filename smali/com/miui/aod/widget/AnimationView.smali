.class public Lcom/miui/aod/widget/AnimationView;
.super Landroid/view/TextureView;
.source "AnimationView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/widget/AnimationView$AnimationDrawer;
    }
.end annotation


# instance fields
.field private frameCallback:Landroid/view/Choreographer$FrameCallback;

.field private volatile mAnimationRunning:Z

.field private final mDrawerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/aod/widget/AnimationView$AnimationDrawer;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingStartAnimation:Z

.field private mSurfaceAvailable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/widget/AnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/aod/widget/AnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/widget/AnimationView;->mDrawerList:Ljava/util/List;

    new-instance p1, Lcom/miui/aod/widget/AnimationView$1;

    invoke-direct {p1, p0}, Lcom/miui/aod/widget/AnimationView$1;-><init>(Lcom/miui/aod/widget/AnimationView;)V

    iput-object p1, p0, Lcom/miui/aod/widget/AnimationView;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-direct {p0}, Lcom/miui/aod/widget/AnimationView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/widget/AnimationView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/aod/widget/AnimationView;->dispatchDraw(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/aod/widget/AnimationView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/widget/AnimationView;->mAnimationRunning:Z

    return p0
.end method

.method private dispatchDraw(J)V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/aod/widget/AnimationView;->mSurfaceAvailable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/aod/widget/AnimationView;->mDrawerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/aod/widget/AnimationView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/miui/aod/widget/AnimationView;->mDrawerList:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/miui/aod/widget/AnimationView;->mDrawerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/aod/widget/AnimationView$AnimationDrawer;

    invoke-interface {v3, v0, p1, p2}, Lcom/miui/aod/widget/AnimationView$AnimationDrawer;->onAnimationDraw(Landroid/graphics/Canvas;J)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/aod/widget/AnimationView;->mDrawerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/miui/aod/widget/AnimationView;->stopAnimation()V

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v0}, Lcom/miui/aod/widget/AnimationView;->unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    invoke-direct {p0, v0}, Lcom/miui/aod/widget/AnimationView;->unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/AnimationView;->setOpaque(Z)V

    iput-boolean v0, p0, Lcom/miui/aod/widget/AnimationView;->mSurfaceAvailable:Z

    iput-boolean v0, p0, Lcom/miui/aod/widget/AnimationView;->mAnimationRunning:Z

    invoke-virtual {p0, p0}, Lcom/miui/aod/widget/AnimationView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private startAnimation()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/aod/widget/AnimationView;->mAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/aod/widget/AnimationView;->mSurfaceAvailable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/miui/aod/widget/AnimationView;->mAnimationRunning:Z

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/aod/widget/AnimationView;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/miui/aod/widget/AnimationView;->mPendingStartAnimation:Z

    :goto_0
    return-void
.end method

.method private stopAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/widget/AnimationView;->mAnimationRunning:Z

    iput-boolean v0, p0, Lcom/miui/aod/widget/AnimationView;->mPendingStartAnimation:Z

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/aod/widget/AnimationView;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/aod/widget/AnimationView;->mSurfaceAvailable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/AnimationView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAnimationDrawer(Lcom/miui/aod/widget/AnimationView$AnimationDrawer;)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/aod/widget/AnimationView;->mDrawerList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/aod/widget/AnimationView;->mDrawerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/aod/widget/AnimationView$AnimationDrawer;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "AnimationView"

    const-string p1, "addAnimationDrawer: duplicate"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/aod/widget/AnimationView;->mDrawerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/miui/aod/widget/AnimationView;->mAnimationRunning:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/miui/aod/widget/AnimationView;->startAnimation()V

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/aod/widget/AnimationView;->mDrawerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/aod/widget/AnimationView;->startAnimation()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/aod/widget/AnimationView;->mDrawerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/miui/aod/widget/AnimationView;->stopAnimation()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/aod/widget/AnimationView;->mSurfaceAvailable:Z

    iget-boolean p1, p0, Lcom/miui/aod/widget/AnimationView;->mPendingStartAnimation:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/aod/widget/AnimationView;->startAnimation()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/widget/AnimationView;->mPendingStartAnimation:Z

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
