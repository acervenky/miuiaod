.class public Lcom/miui/aod/widget/FrameAnimationView;
.super Landroid/view/TextureView;
.source "FrameAnimationView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private mFrameAnimation:Lcom/miui/aod/widget/FrameAnimationController;

.field private mFrameInterval:I

.field private mPendingStartAnimation:Z

.field private mResArray:[I

.field private mSurfaceReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I[I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    if-gtz p2, :cond_0

    const/16 p2, 0x1e

    :cond_0
    const/16 p1, 0x3e8

    div-int/2addr p1, p2

    iput p1, p0, Lcom/miui/aod/widget/FrameAnimationView;->mFrameInterval:I

    iput-object p3, p0, Lcom/miui/aod/widget/FrameAnimationView;->mResArray:[I

    invoke-direct {p0}, Lcom/miui/aod/widget/FrameAnimationView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/widget/FrameAnimationView;->mPendingStartAnimation:Z

    iput-boolean v0, p0, Lcom/miui/aod/widget/FrameAnimationView;->mSurfaceReady:Z

    new-instance v0, Lcom/miui/aod/widget/FrameAnimationController;

    invoke-direct {v0, p0, p0}, Lcom/miui/aod/widget/FrameAnimationController;-><init>(Landroid/view/TextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v0, p0, Lcom/miui/aod/widget/FrameAnimationView;->mFrameAnimation:Lcom/miui/aod/widget/FrameAnimationController;

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationView;->mFrameAnimation:Lcom/miui/aod/widget/FrameAnimationController;

    iget p0, p0, Lcom/miui/aod/widget/FrameAnimationView;->mFrameInterval:I

    invoke-virtual {v0, p0}, Lcom/miui/aod/widget/FrameAnimationController;->setFrameInterval(I)V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationView;->mResArray:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationView;->mResArray:[I

    array-length v0, v0

    iget p0, p0, Lcom/miui/aod/widget/FrameAnimationView;->mFrameInterval:I

    mul-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/miui/aod/widget/FrameAnimationView;->mFrameAnimation:Lcom/miui/aod/widget/FrameAnimationController;

    invoke-virtual {p0}, Lcom/miui/aod/widget/FrameAnimationController;->release()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/aod/widget/FrameAnimationView;->mSurfaceReady:Z

    iget-boolean p1, p0, Lcom/miui/aod/widget/FrameAnimationView;->mPendingStartAnimation:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/widget/FrameAnimationView;->startAnimation()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/widget/FrameAnimationView;->mPendingStartAnimation:Z

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/widget/FrameAnimationView;->mSurfaceReady:Z

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

.method public setAnimationCallBack(Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationView;->mFrameAnimation:Lcom/miui/aod/widget/FrameAnimationController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/widget/FrameAnimationView;->mFrameAnimation:Lcom/miui/aod/widget/FrameAnimationController;

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/FrameAnimationController;->setAnimationCallBack(Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;)V

    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/aod/widget/FrameAnimationView;->mSurfaceReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationView;->mFrameAnimation:Lcom/miui/aod/widget/FrameAnimationController;

    iget-object v1, p0, Lcom/miui/aod/widget/FrameAnimationView;->mResArray:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/aod/widget/FrameAnimationController;->startAnimation([II)V

    iput-boolean v2, p0, Lcom/miui/aod/widget/FrameAnimationView;->mPendingStartAnimation:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/aod/widget/FrameAnimationView;->mPendingStartAnimation:Z

    :goto_0
    return-void
.end method
