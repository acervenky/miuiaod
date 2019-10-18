.class public Lcom/miui/aod/widget/ClockHandDrawer;
.super Ljava/lang/Object;
.source "ClockHandDrawer.java"

# interfaces
.implements Lcom/miui/aod/widget/AnimationView$AnimationDrawer;


# instance fields
.field private mHourHandDrawable:Landroid/graphics/drawable/Drawable;

.field private mHourHeight:I

.field private mHourRect:Landroid/graphics/Rect;

.field private mHourWidth:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFrameTime:J

.field private mListener:Lcom/miui/aod/widget/AnimationView$AnimationDrawer$AnimationStateListener;

.field private mMinHandDrawable:Landroid/graphics/drawable/Drawable;

.field private mMinHeight:I

.field private mMinRect:Landroid/graphics/Rect;

.field private mMinWidth:I

.field private mStartDelay:J

.field private mStartTime:J

.field private mTargetHourDegree:F

.field private mTargetMinDegree:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourHandDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinHandDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourHandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourWidth:I

    iget-object p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourHandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourHeight:I

    iget-object p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinHandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinWidth:I

    iget-object p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinHandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinHeight:I

    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourWidth:I

    iget v0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourHeight:I

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinWidth:I

    iget v0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinHeight:I

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinRect:Landroid/graphics/Rect;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mLastFrameTime:J

    iput-wide p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mStartTime:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mStartDelay:J

    return-void
.end method

.method private drawHourHand(Landroid/graphics/Canvas;F)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iget v4, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourHandDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourHandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawMinHand(Landroid/graphics/Canvas;F)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iget v4, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinHandDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinHandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public onAnimationDraw(Landroid/graphics/Canvas;J)Z
    .locals 7

    iget-wide v0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-wide v4, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mStartTime:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    iput-wide p2, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mStartTime:J

    return v1

    :cond_0
    iget-wide v4, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mStartDelay:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    iget-wide v2, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mStartTime:J

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mStartDelay:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mLastFrameTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x42700000    # 60.0f

    const/4 v4, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mListener:Lcom/miui/aod/widget/AnimationView$AnimationDrawer$AnimationStateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mListener:Lcom/miui/aod/widget/AnimationView$AnimationDrawer$AnimationStateListener;

    invoke-interface {v0}, Lcom/miui/aod/widget/AnimationView$AnimationDrawer$AnimationStateListener;->onAnimationStart()V

    :cond_2
    iget v0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mTargetHourDegree:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mTargetMinDegree:F

    sub-float/2addr v3, v2

    iput-wide p2, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mLastFrameTime:J

    move p2, v4

    move v5, p2

    goto :goto_1

    :cond_3
    iget-wide v5, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mLastFrameTime:J

    sub-long/2addr p2, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr p2, v5

    long-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    const/high16 v0, 0x44160000    # 600.0f

    div-float v0, p2, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v5, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    cmpl-float v5, v0, p3

    if-nez v5, :cond_4

    move v5, v1

    goto :goto_0

    :cond_4
    move v5, v4

    :goto_0
    iget v6, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mTargetHourDegree:F

    sub-float v0, p3, v0

    mul-float/2addr v0, v3

    sub-float v0, v6, v0

    const/high16 v3, 0x44610000    # 900.0f

    div-float/2addr p2, v3

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget-object v3, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    iget v3, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mTargetMinDegree:F

    sub-float v6, p3, p2

    mul-float/2addr v6, v2

    sub-float/2addr v3, v6

    cmpl-float p2, p2, p3

    if-nez p2, :cond_5

    move p2, v1

    goto :goto_1

    :cond_5
    move p2, v4

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/miui/aod/widget/ClockHandDrawer;->drawHourHand(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, p1, v3}, Lcom/miui/aod/widget/ClockHandDrawer;->drawMinHand(Landroid/graphics/Canvas;F)V

    if-eqz v5, :cond_7

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mListener:Lcom/miui/aod/widget/AnimationView$AnimationDrawer$AnimationStateListener;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mListener:Lcom/miui/aod/widget/AnimationView$AnimationDrawer$AnimationStateListener;

    invoke-interface {p0}, Lcom/miui/aod/widget/AnimationView$AnimationDrawer$AnimationStateListener;->onAnimationEnd()V

    :cond_6
    return v4

    :cond_7
    return v1
.end method

.method public setAnimationListener(Lcom/miui/aod/widget/AnimationView$AnimationDrawer$AnimationStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mListener:Lcom/miui/aod/widget/AnimationView$AnimationDrawer$AnimationStateListener;

    return-void
.end method

.method public setAnimationValue(FF)V
    .locals 0

    iput p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mTargetHourDegree:F

    iput p2, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mTargetMinDegree:F

    return-void
.end method

.method public setHourDrawableSize(I)V
    .locals 3

    iput p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourHeight:I

    iget-object v0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourHandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/2addr p1, v0

    iget-object v0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourHandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/2addr p1, v0

    iput p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourWidth:I

    new-instance p1, Landroid/graphics/Rect;

    iget v0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourWidth:I

    iget v1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourHeight:I

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mHourRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setMinDrawableSize(I)V
    .locals 3

    iput p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinHeight:I

    iget-object v0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinHandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/2addr p1, v0

    iget-object v0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinHandDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/2addr p1, v0

    iput p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinWidth:I

    new-instance p1, Landroid/graphics/Rect;

    iget v0, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinWidth:I

    iget v1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinHeight:I

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mMinRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setStartDelay(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/aod/widget/ClockHandDrawer;->mStartDelay:J

    return-void
.end method
