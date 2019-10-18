.class public Lcom/miui/aod/widget/notification/WaveLineDrawer;
.super Ljava/lang/Object;
.source "WaveLineDrawer.java"

# interfaces
.implements Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;,
        Lcom/miui/aod/widget/notification/WaveLineDrawer$CustomInterpolator;
    }
.end annotation


# static fields
.field public static final DURATION:J = 0x4b0L

.field private static final LINE_COUNT:I = 0x8

.field private static final LINE_WIDTH:I = 0x4

.field private static final MAX_AMP:I = 0x20

.field private static final MAX_LINE_MARGIN:I = 0x9

.field private static final PI_ANGLE:D = 6.283185307179586


# instance fields
.field private mAnimationStateListener:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;

.field private mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvasHeight:I

.field private mCanvasWidth:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFrameTime:J

.field private mLineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;",
            ">;"
        }
    .end annotation
.end field

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPaint:Landroid/graphics/Paint;

.field private mRepeat:Z

.field private mShaderDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mRepeat:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCache:Landroid/util/SparseArray;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mLastFrameTime:J

    new-instance v1, Lcom/miui/aod/widget/notification/WaveLineDrawer$CustomInterpolator;

    invoke-direct {v1, p0}, Lcom/miui/aod/widget/notification/WaveLineDrawer$CustomInterpolator;-><init>(Lcom/miui/aod/widget/notification/WaveLineDrawer;)V

    iput-object v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mLineList:Ljava/util/List;

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mLineList:Ljava/util/List;

    new-instance v4, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    invoke-direct {v4, v5, v6, v0}, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f020281

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mShaderDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private computeSine(I)F
    .locals 4

    iget v0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasHeight:I

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object p0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_1
    int-to-double v0, p1

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasHeight:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCache:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCache:Landroid/util/SparseArray;

    iget p0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasHeight:I

    sub-int/2addr p0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;F)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mShaderDrawable:Landroid/graphics/drawable/Drawable;

    float-to-double v1, p2

    const-wide v3, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v1

    iget p2, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasWidth:I

    int-to-double v1, p2

    mul-double/2addr v3, v1

    double-to-int p2, v3

    iget v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasWidth:I

    iget v2, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mShaderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget p2, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasWidth:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iget v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0, p2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mShaderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawPath(Ljava/util/List;Landroid/graphics/Canvas;F)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;",
            ">;",
            "Landroid/graphics/Canvas;",
            "F)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;

    const/4 v4, 0x0

    cmpg-float v5, p3, v4

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mPaint:Landroid/graphics/Paint;

    iget v6, v3, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mAmp:F

    invoke-virtual {p0, v6}, Lcom/miui/aod/widget/notification/WaveLineDrawer;->getAlphaByAmp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    iget-object v5, v3, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mLeftPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasHeight:I

    int-to-float v6, v6

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v3, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mLeftPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, v3, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mRightPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasHeight:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v3, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mRightPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected drawWaveLine(Landroid/graphics/Canvas;F)V
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasWidth:I

    iget v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasHeight:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasHeight:I

    iget-object v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mLinearGradient:Landroid/graphics/LinearGradient;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v0

    const/4 v0, 0x3

    new-array v7, v0, [I

    const/4 v0, 0x0

    const-string v2, "#153E9E"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v7, v0

    const/4 v0, 0x1

    const/4 v2, -0x1

    aput v2, v7, v0

    const/4 v0, 0x2

    const-string v2, "#153E9E"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v7, v0

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mLinearGradient:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/aod/widget/notification/WaveLineDrawer;->drawBackground(Landroid/graphics/Canvas;F)V

    iget-object v0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mLineList:Ljava/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/miui/aod/widget/notification/WaveLineDrawer;->updatePathList(Ljava/util/List;F)V

    iget-object v0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mLineList:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/aod/widget/notification/WaveLineDrawer;->drawPath(Ljava/util/List;Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public getAlphaByAmp(F)I
    .locals 2

    const/high16 p0, 0x41b40000    # 22.5f

    cmpl-float v0, p1, p0

    const/16 v1, 0x32

    if-lez v0, :cond_0

    const/high16 p0, 0x41d80000    # 27.0f

    sub-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x40900000    # 4.5f

    div-float/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p1, v1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_0
    int-to-float v0, v1

    div-float/2addr p1, p0

    const/high16 p0, 0x437f0000    # 255.0f

    sub-float v0, p0, v0

    mul-float/2addr v0, p1

    sub-float/2addr p0, v0

    float-to-int p0, p0

    const/16 p1, 0xff

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x4b0

    return-wide v0
.end method

.method public onAnimationDraw(Landroid/graphics/Canvas;J)Z
    .locals 7

    iget-wide v0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mLastFrameTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iput-wide p2, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mLastFrameTime:J

    move p2, v1

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mLastFrameTime:J

    sub-long/2addr p2, v5

    long-to-float p2, p2

    const p3, 0x49742400    # 1000000.0f

    div-float/2addr p2, p3

    mul-float/2addr p2, v4

    const/high16 p3, 0x44960000    # 1200.0f

    div-float/2addr p2, p3

    :goto_0
    invoke-static {v4, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object p3, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/miui/aod/widget/notification/WaveLineDrawer;->drawWaveLine(Landroid/graphics/Canvas;F)V

    cmpl-float p1, p2, v4

    if-ltz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mRepeat:Z

    if-eqz p1, :cond_1

    iput-wide v2, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mLastFrameTime:J

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mAnimationStateListener:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mAnimationStateListener:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;

    invoke-interface {p1}, Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;->onAnimationEnd()V

    :cond_2
    :goto_1
    iget-boolean p0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mRepeat:Z

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

    iget-object p0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mLineList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setAnimationListener(Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mAnimationStateListener:Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;

    return-void
.end method

.method public setRepeatMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mRepeat:Z

    return-void
.end method

.method public updatePathList(Ljava/util/List;F)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;",
            ">;F)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;

    iget-object v4, v1, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mLeftPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v1, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mLeftPath:Landroid/graphics/Path;

    const/4 v5, -0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v1, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mLeftPath:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v1, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mRightPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v1, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mRightPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasWidth:I

    add-int/2addr v5, v3

    int-to-float v5, v5

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v1, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mRightPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasWidth:I

    add-int/2addr v4, v3

    int-to-float v3, v4

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr p2, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget v4, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasHeight:I

    if-gt v1, v4, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/miui/aod/widget/notification/WaveLineDrawer;->computeSine(I)F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mLineList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v6, v0

    :goto_2
    if-ge v6, v5, :cond_1

    int-to-float v7, v6

    const/high16 v8, 0x40900000    # 4.5f

    mul-float/2addr v7, v8

    sub-float v7, p2, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float v8, v4, v7

    int-to-float v9, v3

    sub-float/2addr v8, v9

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;

    iput v7, v9, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mAmp:F

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;

    iget-object v7, v7, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mLeftPath:Landroid/graphics/Path;

    int-to-float v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;

    iget-object v7, v7, Lcom/miui/aod/widget/notification/WaveLineDrawer$LineData;->mRightPath:Landroid/graphics/Path;

    iget v10, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer;->mCanvasWidth:I

    int-to-float v10, v10

    sub-float/2addr v10, v8

    invoke-virtual {v7, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
