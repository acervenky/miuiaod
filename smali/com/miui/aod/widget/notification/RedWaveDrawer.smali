.class public Lcom/miui/aod/widget/notification/RedWaveDrawer;
.super Ljava/lang/Object;
.source "RedWaveDrawer.java"

# interfaces
.implements Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/widget/notification/RedWaveDrawer$CustomInterpolator;
    }
.end annotation


# static fields
.field public static final DURATION:J = 0xc1cL


# instance fields
.field private mAnimationStateListener:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;

.field private mDrawableWidth:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFrameTime:J

.field private mPaint:Landroid/graphics/Paint;

.field private mRepeat:Z

.field private mShaderDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mRepeat:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mLastFrameTime:J

    new-instance v0, Lcom/miui/aod/widget/notification/RedWaveDrawer$CustomInterpolator;

    invoke-direct {v0, p0}, Lcom/miui/aod/widget/notification/RedWaveDrawer$CustomInterpolator;-><init>(Lcom/miui/aod/widget/notification/RedWaveDrawer;)V

    iput-object v0, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, 0x7f020282

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mShaderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mShaderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mDrawableWidth:I

    return-void
.end method


# virtual methods
.method protected drawWaveLine(Landroid/graphics/Canvas;F)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const v2, 0x3e4ccccd    # 0.2f

    sub-float v3, v2, p2

    int-to-float v0, v0

    mul-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    add-float/2addr v2, p2

    iget v4, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mDrawableWidth:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mShaderDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v3, v3

    float-to-int v2, v2

    float-to-int v0, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iget-object v0, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mShaderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p2, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mShaderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float p2, v1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p0, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mShaderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0xc1c

    return-wide v0
.end method

.method public onAnimationDraw(Landroid/graphics/Canvas;J)Z
    .locals 7

    iget-wide v0, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mLastFrameTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iput-wide p2, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mLastFrameTime:J

    move p2, v1

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mLastFrameTime:J

    sub-long/2addr p2, v5

    long-to-float p2, p2

    const p3, 0x49742400    # 1000000.0f

    div-float/2addr p2, p3

    mul-float/2addr p2, v4

    const p3, 0x4541c000    # 3100.0f

    div-float/2addr p2, p3

    :goto_0
    invoke-static {v4, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object p3, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/miui/aod/widget/notification/RedWaveDrawer;->drawWaveLine(Landroid/graphics/Canvas;F)V

    cmpl-float p1, p2, v4

    if-ltz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mRepeat:Z

    if-eqz p1, :cond_1

    iput-wide v2, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mLastFrameTime:J

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mAnimationStateListener:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mAnimationStateListener:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;

    invoke-interface {p1}, Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;->onAnimationEnd()V

    :cond_2
    :goto_1
    iget-boolean p0, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mRepeat:Z

    if-nez p0, :cond_4

    cmpg-float p0, p2, v4

    if-gez p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p0, 0x1

    :goto_3
    return p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setAnimationListener(Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mAnimationStateListener:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;

    return-void
.end method

.method public setRepeatMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/widget/notification/RedWaveDrawer;->mRepeat:Z

    return-void
.end method
