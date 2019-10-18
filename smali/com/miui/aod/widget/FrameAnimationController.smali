.class public Lcom/miui/aod/widget/FrameAnimationController;
.super Ljava/lang/Object;
.source "FrameAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;,
        Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;,
        Lcom/miui/aod/widget/FrameAnimationController$DecodeTask;,
        Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;
    }
.end annotation


# instance fields
.field private mAnimationCallback:Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;

.field private mBitmapQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDecodeHandler:Landroid/os/Handler;

.field private mDecodeTask:Lcom/miui/aod/widget/FrameAnimationController$DecodeTask;

.field private mDecodeThread:Landroid/os/HandlerThread;

.field private volatile mFrameInterval:I

.field private mFrameUpdate:Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;

.field private final mHandlerLock:Ljava/lang/Object;

.field private mMainHandler:Landroid/os/Handler;

.field private final mTextureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/view/TextureView;Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mFrameInterval:I

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mBitmapQueue:Ljava/util/Queue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mHandlerLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mMainHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/aod/widget/FrameAnimationController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/widget/FrameAnimationController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/aod/widget/FrameAnimationController;I)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/widget/FrameAnimationController;->decodeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/aod/widget/FrameAnimationController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mHandlerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/aod/widget/FrameAnimationController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/aod/widget/FrameAnimationController;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mBitmapQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/aod/widget/FrameAnimationController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/aod/widget/FrameAnimationController;)I
    .locals 0

    iget p0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mFrameInterval:I

    return p0
.end method

.method static synthetic access$800(Lcom/miui/aod/widget/FrameAnimationController;Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Matrix;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/aod/widget/FrameAnimationController;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method private decodeBitmap(I)Landroid/graphics/Bitmap;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Matrix;I)V
    .locals 8

    iget-object p4, p0, Lcom/miui/aod/widget/FrameAnimationController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p4}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object p4

    if-eqz p4, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/aod/widget/FrameAnimationController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/aod/widget/FrameAnimationController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    sub-int v4, v1, v0

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    sub-int v6, v3, v2

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    int-to-float v1, v1

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v7, v1, v6

    int-to-float v0, v0

    div-float/2addr v7, v0

    int-to-float v0, v3

    mul-float/2addr v6, v0

    int-to-float v2, v2

    div-float/2addr v6, v2

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    div-float/2addr v0, v3

    invoke-virtual {p3, v2, v2, v1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, p1, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0, p4}, Lcom/miui/aod/widget/FrameAnimationController;->unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, p4}, Lcom/miui/aod/widget/FrameAnimationController;->unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method private prepareDecodeThread()V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "aod_frame_animation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeHandler:Landroid/os/Handler;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public notifyAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mAnimationCallback:Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mAnimationCallback:Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;

    invoke-interface {p0}, Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public notifyAnimationStart()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mAnimationCallback:Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mAnimationCallback:Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;

    invoke-interface {p0}, Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;->onAnimationStart()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 4

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeTask:Lcom/miui/aod/widget/FrameAnimationController$DecodeTask;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeTask:Lcom/miui/aod/widget/FrameAnimationController$DecodeTask;

    invoke-static {v0, v1}, Lcom/miui/aod/widget/FrameAnimationController$DecodeTask;->access$100(Lcom/miui/aod/widget/FrameAnimationController$DecodeTask;Z)V

    iput-object v2, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeTask:Lcom/miui/aod/widget/FrameAnimationController$DecodeTask;

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeHandler:Landroid/os/Handler;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeThread:Landroid/os/HandlerThread;

    :cond_2
    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mFrameUpdate:Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mFrameUpdate:Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;

    invoke-virtual {v0, v1}, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->setDrawing(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/aod/widget/FrameAnimationController;->mFrameUpdate:Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iput-object v2, p0, Lcom/miui/aod/widget/FrameAnimationController;->mFrameUpdate:Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;

    :cond_3
    iget-object p0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mBitmapQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setAnimationCallBack(Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/FrameAnimationController;->mAnimationCallback:Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;

    return-void
.end method

.method public setFrameInterval(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/miui/aod/widget/FrameAnimationController;->mFrameInterval:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "frameInterval < 0"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startAnimation([II)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/aod/widget/FrameAnimationController;->release()V

    invoke-direct {p0}, Lcom/miui/aod/widget/FrameAnimationController;->prepareDecodeThread()V

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mBitmapQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    new-instance v0, Lcom/miui/aod/widget/FrameAnimationController$DecodeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/miui/aod/widget/FrameAnimationController$DecodeTask;-><init>(Lcom/miui/aod/widget/FrameAnimationController;[IILcom/miui/aod/widget/FrameAnimationController$1;)V

    iput-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeTask:Lcom/miui/aod/widget/FrameAnimationController$DecodeTask;

    iget-object p1, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeTask:Lcom/miui/aod/widget/FrameAnimationController$DecodeTask;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/aod/widget/FrameAnimationController$DecodeTask;->access$100(Lcom/miui/aod/widget/FrameAnimationController$DecodeTask;Z)V

    iget-object p1, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mDecodeTask:Lcom/miui/aod/widget/FrameAnimationController$DecodeTask;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;

    invoke-direct {p1, p0, v1}, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;-><init>(Lcom/miui/aod/widget/FrameAnimationController;Lcom/miui/aod/widget/FrameAnimationController$1;)V

    iput-object p1, p0, Lcom/miui/aod/widget/FrameAnimationController;->mFrameUpdate:Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;

    iget-object p1, p0, Lcom/miui/aod/widget/FrameAnimationController;->mFrameUpdate:Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;

    invoke-virtual {p1, p2}, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->setDrawing(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/aod/widget/FrameAnimationController;->mFrameUpdate:Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
