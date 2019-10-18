.class public Lcom/miui/aod/widget/ScopeImageView;
.super Landroid/view/View;
.source "ScopeImageView.java"


# instance fields
.field final mAnimator:Landroid/animation/ValueAnimator;

.field mArcBitmap:Landroid/graphics/Bitmap;

.field mArcCanvas:Landroid/graphics/Canvas;

.field mBitmap:Landroid/graphics/Bitmap;

.field mClipR:I

.field mClipRect:Landroid/graphics/RectF;

.field mEnd:Lcom/miui/aod/components/ScopePoint;

.field mEndAction:Ljava/lang/Runnable;

.field mFirst:Z

.field mH:F

.field mIndex:I

.field mLoop:Z

.field mMatrix:Landroid/graphics/Matrix;

.field mNeedDrawBitmap:Z

.field final mOutAnimator:Landroid/animation/ValueAnimator;

.field mPaint:Landroid/graphics/Paint;

.field public mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/aod/components/ScopePoint;",
            ">;"
        }
    .end annotation
.end field

.field mRandom:Z

.field mRotate:F

.field mScopeBitmap:Landroid/graphics/Bitmap;

.field mScopeCanvas:Landroid/graphics/Canvas;

.field mScopeInfo:Lcom/miui/aod/widget/ScopeInfo;

.field mSrcInPaint:Landroid/graphics/Paint;

.field mStart:Lcom/miui/aod/components/ScopePoint;

.field mW:F

.field mX:F

.field mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mFirst:Z

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/aod/widget/ScopeImageView;->mSrcInPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/aod/widget/ScopeImageView;->mSrcInPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/miui/aod/widget/ScopeImageView;->mSrcInPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object p2, p0, Lcom/miui/aod/widget/ScopeImageView;->mSrcInPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/aod/widget/ScopeImageView;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/aod/widget/ScopeImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/miui/aod/widget/ScopeImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 p1, 0x2

    new-array p2, p1, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/aod/widget/ScopeImageView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/miui/aod/widget/ScopeImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/aod/widget/ScopeImageView$1;

    invoke-direct {v0, p0}, Lcom/miui/aod/widget/ScopeImageView$1;-><init>(Lcom/miui/aod/widget/ScopeImageView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/miui/aod/widget/ScopeImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/aod/widget/ScopeImageView$2;

    invoke-direct {v0, p0}, Lcom/miui/aod/widget/ScopeImageView$2;-><init>(Lcom/miui/aod/widget/ScopeImageView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/miui/aod/widget/ScopeImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40600000    # 3.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/miui/aod/widget/ScopeImageView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mOutAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mOutAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lmiui/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p2}, Lmiui/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mOutAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/aod/widget/ScopeImageView$3;

    invoke-direct {p2, p0}, Lcom/miui/aod/widget/ScopeImageView$3;-><init>(Lcom/miui/aod/widget/ScopeImageView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mOutAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/aod/widget/ScopeImageView$4;

    invoke-direct {p2, p0}, Lcom/miui/aod/widget/ScopeImageView$4;-><init>(Lcom/miui/aod/widget/ScopeImageView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private drawScope(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mArcCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/miui/aod/widget/ScopeImageView;->drawarc(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x42700000    # 60.0f

    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    rem-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mArcBitmap:Landroid/graphics/Bitmap;

    const/high16 v1, -0x40000000    # -2.0f

    const v3, -0x41333333    # -0.4f

    iget-object v4, p0, Lcom/miui/aod/widget/ScopeImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeImageView;->mScopeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method private drawarc(Landroid/graphics/Canvas;)V
    .locals 8

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/miui/aod/widget/ScopeImageView;->mClipRect:Landroid/graphics/RectF;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x0

    const/high16 v5, 0x41f00000    # 30.0f

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/miui/aod/widget/ScopeImageView;->mRotate:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/miui/aod/widget/ScopeImageView;->mW:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget-object v3, p0, Lcom/miui/aod/widget/ScopeImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, p0, Lcom/miui/aod/widget/ScopeImageView;->mH:F

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/miui/aod/widget/ScopeImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/miui/aod/widget/ScopeImageView;->mX:F

    iget v2, p0, Lcom/miui/aod/widget/ScopeImageView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeImageView;->mSrcInPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getNextIndex()I
    .locals 4

    iget v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mIndex:I

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeImageView;->mPoints:Ljava/util/List;

    iget-boolean v2, p0, Lcom/miui/aod/widget/ScopeImageView;->mRandom:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/miui/aod/widget/ScopeImageView;->mFirst:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput-boolean v3, p0, Lcom/miui/aod/widget/ScopeImageView;->mFirst:Z

    move v3, v0

    goto :goto_0

    :cond_1
    add-int/lit8 p0, v0, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-lt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, p0

    :goto_0
    return v3
.end method


# virtual methods
.method public clearAnimationView()V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mEndAction:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mScopeInfo:Lcom/miui/aod/widget/ScopeInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/widget/ScopeImageView;->getWidth()I

    move-result v0

    iget-boolean v1, p0, Lcom/miui/aod/widget/ScopeImageView;->mNeedDrawBitmap:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeImageView;->mScopeCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lcom/miui/aod/widget/ScopeImageView;->drawScope(Landroid/graphics/Canvas;)V

    iput-boolean v2, p0, Lcom/miui/aod/widget/ScopeImageView;->mNeedDrawBitmap:Z

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/miui/aod/widget/ScopeImageView;->mClipR:I

    int-to-float v1, v1

    div-float v1, v0, v1

    iget v3, p0, Lcom/miui/aod/widget/ScopeImageView;->mClipR:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_0
    const/4 v0, 0x4

    if-ge v2, v0, :cond_3

    rem-int/lit8 v0, v2, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mScopeBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mLoop:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->pause()V

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeImageView;->mOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->pause()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->resume()V

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeImageView;->mOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->resume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEndAction(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setScopeInfo(Lcom/miui/aod/widget/ScopeInfo;)V
    .locals 5

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mScopeInfo:Lcom/miui/aod/widget/ScopeInfo;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/miui/aod/widget/ScopeImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/miui/aod/widget/ScopeInfo;->mPoints:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/aod/widget/ScopeImageView$5;

    invoke-direct {v2, p0}, Lcom/miui/aod/widget/ScopeImageView$5;-><init>(Lcom/miui/aod/widget/ScopeImageView;)V

    invoke-virtual {v2}, Lcom/miui/aod/widget/ScopeImageView$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mPoints:Ljava/util/List;

    iget v0, p1, Lcom/miui/aod/widget/ScopeInfo;->mClipR:I

    iput v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mClipR:I

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/aod/widget/ScopeImageView;->mClipR:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/aod/widget/ScopeImageView;->mClipR:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/aod/widget/ScopeImageView;->mClipR:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/aod/widget/ScopeImageView;->mClipR:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mClipRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mPoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/components/ScopePoint;

    iget v2, v0, Lcom/miui/aod/components/ScopePoint;->x:F

    iput v2, p0, Lcom/miui/aod/widget/ScopeImageView;->mX:F

    iget v2, v0, Lcom/miui/aod/components/ScopePoint;->y:F

    iput v2, p0, Lcom/miui/aod/widget/ScopeImageView;->mY:F

    iget v2, v0, Lcom/miui/aod/components/ScopePoint;->w:F

    iput v2, p0, Lcom/miui/aod/widget/ScopeImageView;->mW:F

    iget v2, v0, Lcom/miui/aod/components/ScopePoint;->h:F

    iput v2, p0, Lcom/miui/aod/widget/ScopeImageView;->mH:F

    iget v0, v0, Lcom/miui/aod/components/ScopePoint;->r:F

    iput v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mRotate:F

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual {p0}, Lcom/miui/aod/widget/ScopeImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p1, p1, Lcom/miui/aod/widget/ScopeInfo;->mResIdImage:I

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mClipR:I

    iget v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mClipR:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mScopeBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mScopeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mScopeCanvas:Landroid/graphics/Canvas;

    iget p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mClipR:I

    iget v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mClipR:I

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mArcBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mArcBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mArcCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public startAnimation(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mRandom:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mLoop:Z

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mScopeInfo:Lcom/miui/aod/widget/ScopeInfo;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mPoints:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/aod/widget/ScopeImageView;->getNextIndex()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/aod/components/ScopePoint;

    iput-object v2, p0, Lcom/miui/aod/widget/ScopeImageView;->mStart:Lcom/miui/aod/components/ScopePoint;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/components/ScopePoint;

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeImageView;->mEnd:Lcom/miui/aod/components/ScopePoint;

    iput v0, p0, Lcom/miui/aod/widget/ScopeImageView;->mIndex:I

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
