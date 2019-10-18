.class public Lcom/miui/aod/components/view/VerticalTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "VerticalTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/components/view/VerticalTextView$TextFormat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.miui.aod.components.view.VerticalTextView"

.field private static sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoSizeTextSizesInPx:[I

.field private mCJKspacingAdd:F

.field private mCJKspacingMult:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableMask:I

.field private mEllipsisHint:C

.field private mIsVerticalMode:Z

.field private mNeedsAutoFormatText:Z

.field private mNeedsAutoSizeText:Z

.field private mTMeasuredHeight:F

.field private mTMeasuredWidth:F

.field private mTempTextPaint:Landroid/text/TextPaint;

.field private mTextFormat:Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

.field private mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/aod/components/view/VerticalTextView;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mIsVerticalMode:Z

    const p1, 0xfe19

    iput-char p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mEllipsisHint:C

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mCJKspacingAdd:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mCJKspacingMult:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mDrawableMask:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mNeedsAutoSizeText:Z

    iput-boolean p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mNeedsAutoFormatText:Z

    invoke-direct {p0}, Lcom/miui/aod/components/view/VerticalTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mIsVerticalMode:Z

    const p1, 0xfe19

    iput-char p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mEllipsisHint:C

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mCJKspacingAdd:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mCJKspacingMult:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mDrawableMask:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mNeedsAutoSizeText:Z

    iput-boolean p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mNeedsAutoFormatText:Z

    invoke-direct {p0}, Lcom/miui/aod/components/view/VerticalTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mIsVerticalMode:Z

    const p1, 0xfe19

    iput-char p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mEllipsisHint:C

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mCJKspacingAdd:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mCJKspacingMult:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mDrawableMask:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mNeedsAutoSizeText:Z

    iput-boolean p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mNeedsAutoFormatText:Z

    invoke-direct {p0}, Lcom/miui/aod/components/view/VerticalTextView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/components/view/VerticalTextView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/VerticalTextView;->initDrawMask(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private autoJustTextFormat(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->isNeedsAutoFormatText()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTextFormat:Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    if-eqz v0, :cond_2

    :goto_0
    if-lt p1, p2, :cond_2

    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mAutoSizeTextSizesInPx:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/miui/aod/components/view/VerticalTextView;->fitForTextFormat(I)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :cond_2
    :goto_1
    return p1
.end method

.method private autoJustTextSize()V
    .locals 8

    iget-boolean v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mNeedsAutoSizeText:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getTotalPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getExtendedPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getExtendedPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v5

    if-lez v3, :cond_5

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    move v5, v0

    :goto_0
    if-gt v0, v4, :cond_3

    add-int v5, v0, v4

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/miui/aod/components/view/VerticalTextView;->mAutoSizeTextSizesInPx:[I

    aget v6, v6, v5

    invoke-direct {p0, v6, v2}, Lcom/miui/aod/components/view/VerticalTextView;->suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    move v7, v5

    move v5, v0

    move v0, v7

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, -0x1

    move v4, v5

    goto :goto_0

    :cond_3
    invoke-direct {p0, v5, v3}, Lcom/miui/aod/components/view/VerticalTextView;->autoJustTextFormat(II)I

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mAutoSizeTextSizesInPx:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getTextSize()F

    move-result v2

    iget-object v4, p0, Lcom/miui/aod/components/view/VerticalTextView;->mAutoSizeTextSizesInPx:[I

    aget v4, v4, v0

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mAutoSizeTextSizesInPx:[I

    aget v0, v2, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/aod/components/view/VerticalTextView;->setRawTextSize(F)V

    :cond_4
    iput-boolean v1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mNeedsAutoSizeText:Z

    goto :goto_3

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    return-void
.end method

.method private fitForTextFormat(I)I
    .locals 12

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->isVerticalMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTempTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTempTextPaint:Landroid/text/TextPaint;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    :goto_0
    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTempTextPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance p1, Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingRight()I

    move-result v3

    sub-int v6, v0, v3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingBottom()I

    move-result v3

    sub-int v7, v0, v3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLineSpacingMultiplier()F

    move-result v8

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLineSpacingExtra()F

    move-result v9

    invoke-direct {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getCJKVerticalSpacingMultiplier()F

    move-result v10

    invoke-direct {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getCJKVerticalLineSpacingExtra()F

    move-result v11

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lcom/miui/aod/components/view/VerticalStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIFFFF)V

    iput-object p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string p1, "makeNewLayout"

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const-class v4, Landroid/text/BoringLayout$Metrics;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-class v4, Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x3

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x4

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x5

    aput-object v4, v3, v8

    invoke-direct {p0, p1, v3}, Lcom/miui/aod/components/view/VerticalTextView;->getTextViewMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v5

    aput-object v3, v0, v6

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getTextFormat()Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTextFormat:Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->compareTo(Lcom/miui/aod/components/view/VerticalTextView$TextFormat;)I

    move-result p1

    if-gez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getTextFormat()Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTextFormat:Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    invoke-virtual {p1, p0}, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->compareTo(Lcom/miui/aod/components/view/VerticalTextView$TextFormat;)I

    move-result p0

    if-lez p0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    return v2
.end method

.method private getCJKVerticalLineSpacingExtra()F
    .locals 0

    iget p0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mCJKspacingAdd:F

    return p0
.end method

.method private getCJKVerticalSpacingMultiplier()F
    .locals 0

    iget p0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mCJKspacingMult:F

    return p0
.end method

.method private getCurLineBeginY(I)F
    .locals 2

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getHeight(I)F

    move-result p0

    sub-float p0, v0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getHeight(I)F

    move-result p0

    sub-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float p0, v0, p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getTextViewMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :try_start_0
    sget-object p0, Lcom/miui/aod/components/view/VerticalTextView;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    if-nez p0, :cond_0

    const-class p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object p2, Lcom/miui/aod/components/view/VerticalTextView;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private init()V
    .locals 0

    return-void
.end method

.method private initDimentionsOnMeasure(II)V
    .locals 12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    new-instance v11, Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const v2, 0x7fffffff

    if-nez v0, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, p1

    :goto_0
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingBottom()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLineSpacingMultiplier()F

    move-result v7

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLineSpacingExtra()F

    move-result v8

    invoke-direct {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getCJKVerticalSpacingMultiplier()F

    move-result v9

    invoke-direct {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getCJKVerticalLineSpacingExtra()F

    move-result v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/miui/aod/components/view/VerticalStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIFFFF)V

    iput-object v11, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    iget-object v2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v2}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v3}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getHeight()F

    move-result v3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v2, v4

    const/high16 v4, 0x4f000000

    const/high16 v5, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_2

    int-to-float p2, p2

    goto :goto_2

    :cond_2
    if-ne v1, v5, :cond_3

    int-to-float p2, p2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_2

    :cond_3
    move p2, v4

    :goto_2
    if-ne v0, v6, :cond_4

    int-to-float v4, p1

    goto :goto_3

    :cond_4
    if-ne v0, v5, :cond_5

    int-to-float p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_5
    :goto_3
    iput p2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTMeasuredHeight:F

    iput v4, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTMeasuredWidth:F

    return-void
.end method

.method private initDrawMask(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mIsVerticalMode:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v0, Lcom/miui/aod/components/view/VerticalTextView$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/aod/components/view/VerticalTextView$1;-><init>(Lcom/miui/aod/components/view/VerticalTextView;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/view/VerticalTextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->invalidate()V

    return-object p1

    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1, v3}, Lcom/miui/aod/components/view/VerticalTextView;->getLineBounds(ILandroid/graphics/Rect;)I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    add-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v2, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/miui/aod/components/view/VerticalTextView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hrect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    iget-object v3, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v3}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getShowedLineCount()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getWidth(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingTop()I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-ne v3, v2, :cond_5

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_5
    :goto_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v2}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getShowedLineCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v3}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getLineMaxWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLineSpacingMultiplier()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLineSpacingExtra()F

    move-result v4

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v2, v0}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getHeight(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    sget-object p0, Lcom/miui/aod/components/view/VerticalTextView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vrect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object p1
.end method

.method private needRotate(I)Z
    .locals 3

    invoke-static {p1}, Lcom/miui/aod/Utils;->isCJKCharacter(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/miui/aod/Utils;->isEmojiCharacter(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/miui/aod/Utils;->isControlCharactor(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-char p0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mEllipsisHint:C

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    if-eq p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setRawTextSize(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->isInLayout()Z

    move-result p1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/aod/components/view/VerticalTextView;->reMeasureText(II)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->requestLayout()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->forceLayout()V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->invalidate()V

    :cond_2
    return-void
.end method

.method private suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z
    .locals 9

    iget-object p2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTempTextPaint:Landroid/text/TextPaint;

    if-nez p2, :cond_0

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTempTextPaint:Landroid/text/TextPaint;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->reset()V

    :goto_0
    iget-object p2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object p2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTempTextPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance p1, Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingRight()I

    move-result v0

    sub-int v3, p2, v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingBottom()I

    move-result v0

    sub-int v4, p2, v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLineSpacingMultiplier()F

    move-result v5

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLineSpacingExtra()F

    move-result v6

    invoke-direct {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getCJKVerticalSpacingMultiplier()F

    move-result v7

    invoke-direct {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getCJKVerticalLineSpacingExtra()F

    move-result v8

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/miui/aod/components/view/VerticalStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIFFFF)V

    iput-object p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    iget-object p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {p1}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getShowedLineCount()I

    move-result p1

    iget-object p0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getLineCount()I

    move-result p0

    if-ge p1, p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getDrawableMask()I
    .locals 0

    iget p0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mDrawableMask:I

    return p0
.end method

.method public getShowText()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->isVerticalMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v0}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getShowedLineCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v1}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getLineCount()I

    move-result v1

    if-gtz v0, :cond_0

    iget-char p0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mEllipsisHint:C

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/view/VerticalTextView;->getShowText(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/view/VerticalTextView;->getShowText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public getShowText(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->isVerticalMode()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v3}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getEllipsisCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v0}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getEllipsisCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-char p0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mEllipsisHint:C

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    sub-int/2addr p1, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\u2026"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextFormat()Lcom/miui/aod/components/view/VerticalTextView$TextFormat;
    .locals 8

    new-instance v0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    invoke-direct {v0}, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;-><init>()V

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->isVerticalMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    new-array v4, v1, [I

    iput-object v4, v0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineEnds:[I

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v6, v0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineEnds:[I

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    aput v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v5, :cond_1

    iget-object v2, v0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineEnds:[I

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result p0

    add-int/2addr v5, p0

    add-int/2addr v5, v3

    aput v5, v2, v4

    :cond_1
    iput v1, v0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineCount:I

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v1}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getShowedLineCount()I

    move-result v1

    iput v1, v0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineCount:I

    iget v1, v0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineCount:I

    if-lez v1, :cond_5

    iget v1, v0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineEnds:[I

    move v1, v2

    :goto_1
    iget v4, v0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineCount:I

    if-ge v1, v4, :cond_3

    iget-object v4, v0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineEnds:[I

    iget-object v5, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v5, v1}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getLineBreak(I)I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineEnds:[I

    iget v4, v0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineCount:I

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object p0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getEllipsisCount()I

    move-result p0

    if-lez p0, :cond_4

    move v2, v3

    :cond_4
    sub-int/2addr v5, v2

    aput v5, v1, v4

    :cond_5
    :goto_2
    return-object v0
.end method

.method public isNeedsAutoFormatText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mNeedsAutoFormatText:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTextFormat:Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVerticalMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mIsVerticalMode:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getDrawableMask()I

    move-result v1

    const/4 v10, 0x0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    const v2, 0x7fffffff

    invoke-direct {v1, v2, v2, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, v1}, Lcom/miui/aod/components/view/VerticalTextView;->initDrawMask(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getDrawableMask()I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/aod/resource/AodDrawables;->getDrawableForMask(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/aod/components/view/VerticalTextView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/miui/aod/components/view/VerticalTextView;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-static {v2, v3}, Lcom/miui/aod/utils/CommonUtils;->setXfermodeForDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Xfermode;)V

    iget-object v2, v0, Lcom/miui/aod/components/view/VerticalTextView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    iget-boolean v1, v0, Lcom/miui/aod/components/view/VerticalTextView;->mIsVerticalMode:Z

    if-nez v1, :cond_2

    invoke-super/range {p0 .. p1}, Landroid/support/v7/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lcom/miui/aod/components/view/VerticalTextView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/miui/aod/components/view/VerticalTextView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    move v0, v9

    goto/16 :goto_b

    :cond_2
    iget-object v1, v0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v1}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getShowedLineCount()I

    move-result v12

    iget-object v1, v0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v1}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getLineCount()I

    move-result v13

    if-nez v13, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v11, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getShowText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    iget-object v3, v0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v3}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getShowedLineCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getWidth(I)F

    move-result v2

    iget-object v3, v0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v3}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getLineMaxWidth()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLineSpacingMultiplier()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLineSpacingExtra()F

    move-result v4

    add-float v16, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x5

    const/high16 v17, 0x40000000    # 2.0f

    const/4 v7, 0x1

    if-ne v3, v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v1, v1, v16

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    sub-float v1, v2, v16

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-ne v3, v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, v2

    div-float v1, v1, v17

    sub-float v1, v1, v16

    :cond_6
    :goto_0
    invoke-direct {v0, v10}, Lcom/miui/aod/components/view/VerticalTextView;->getCurLineBeginY(I)F

    move-result v2

    move v5, v1

    move/from16 v18, v5

    move v4, v2

    move v3, v10

    move v6, v3

    :goto_1
    array-length v1, v15

    if-ge v6, v1, :cond_10

    invoke-static {v15, v6}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    invoke-direct {v0, v1}, Lcom/miui/aod/components/view/VerticalTextView;->needRotate(I)Z

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    if-eqz v19, :cond_7

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {v8, v7, v5, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_7
    if-eqz v19, :cond_8

    move v7, v5

    goto :goto_2

    :cond_8
    iget-object v7, v0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v7}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getDescent()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    :goto_2
    if-eqz v19, :cond_9

    iget v10, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v21, v1

    iget v1, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v10, v1

    int-to-float v1, v10

    sub-float v1, v16, v1

    div-float v1, v1, v17

    sub-float v1, v4, v1

    iget v10, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v10, v10

    sub-float/2addr v1, v10

    :goto_3
    move/from16 v10, v21

    move/from16 v21, v1

    goto :goto_4

    :cond_9
    move/from16 v21, v1

    iget v1, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v1, v1

    sub-float v1, v4, v1

    goto :goto_3

    :goto_4
    move-object/from16 v1, p1

    move/from16 v22, v2

    move-object v2, v15

    move/from16 v23, v9

    move v9, v3

    move v3, v6

    move/from16 v24, v4

    move/from16 v4, v22

    move/from16 v25, v5

    move v5, v7

    move v7, v6

    move/from16 v6, v21

    move-object/from16 v26, v14

    const/16 v20, 0x1

    move v14, v7

    move-object v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move/from16 v1, v22

    add-int v6, v14, v1

    array-length v2, v15

    if-ge v6, v2, :cond_a

    move/from16 v2, v20

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_f

    add-int/lit8 v2, v14, 0x1

    iget-object v3, v0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {v3, v9}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getLineBreak(I)I

    move-result v3

    if-le v2, v3, :cond_b

    move/from16 v2, v20

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_d

    add-int/lit8 v3, v9, 0x1

    if-ge v3, v13, :cond_d

    if-lt v3, v12, :cond_c

    goto :goto_a

    :cond_c
    sub-float v18, v18, v16

    invoke-direct {v0, v3}, Lcom/miui/aod/components/view/VerticalTextView;->getCurLineBeginY(I)F

    move-result v1

    move v4, v1

    move/from16 v5, v18

    goto :goto_7

    :cond_d
    if-eqz v19, :cond_e

    invoke-virtual {v11, v15, v14, v1}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v1

    add-float v4, v24, v1

    move v3, v9

    move/from16 v5, v25

    :goto_7
    move-object/from16 v1, v26

    goto :goto_9

    :cond_e
    move-object/from16 v1, v26

    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getCJKVerticalSpacingMultiplier()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-direct/range {p0 .. p0}, Lcom/miui/aod/components/view/VerticalTextView;->getCJKVerticalLineSpacingExtra()F

    move-result v3

    add-float/2addr v2, v3

    add-float v4, v24, v2

    move v3, v9

    goto :goto_8

    :cond_f
    move-object/from16 v1, v26

    move v3, v9

    move/from16 v4, v24

    :goto_8
    move/from16 v5, v25

    :goto_9
    move-object v14, v1

    move/from16 v7, v20

    move/from16 v9, v23

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_10
    move/from16 v23, v9

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lcom/miui/aod/components/view/VerticalTextView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lcom/miui/aod/components/view/VerticalTextView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_11
    move/from16 v0, v23

    :goto_b
    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/AppCompatTextView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->isVerticalMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/aod/components/view/VerticalTextView;->autoJustTextSize()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->isVerticalMode()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->isNeedsAutoFormatText()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getTextFormat()Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTextFormat:Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    invoke-virtual {p1, p2}, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->compareTo(Lcom/miui/aod/components/view/VerticalTextView$TextFormat;)I

    move-result p2

    const/4 p3, 0x0

    if-gtz p2, :cond_2

    iget-object p2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTextFormat:Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    invoke-virtual {p1, p2}, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->compareTo(Lcom/miui/aod/components/view/VerticalTextView$TextFormat;)I

    move-result p1

    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getTextSize()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    invoke-virtual {p0, p3, p1}, Lcom/miui/aod/components/view/VerticalTextView;->setTextSize(IF)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getTextSize()F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    sub-int/2addr p1, p3

    add-int/lit8 p1, p1, 0x1

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mAutoSizeTextSizesInPx:[I

    move p2, p3

    :goto_0
    if-ge p2, p1, :cond_3

    iget-object p4, p0, Lcom/miui/aod/components/view/VerticalTextView;->mAutoSizeTextSizesInPx:[I

    add-int p5, p3, p2

    aput p5, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mAutoSizeTextSizesInPx:[I

    iget-object p2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mAutoSizeTextSizesInPx:[I

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, p2, p3}, Lcom/miui/aod/components/view/VerticalTextView;->autoJustTextFormat(II)I

    move-result p2

    iget-object p4, p0, Lcom/miui/aod/components/view/VerticalTextView;->mAutoSizeTextSizesInPx:[I

    array-length p4, p4

    add-int/lit8 p4, p4, -0x1

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    aget p1, p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p3, p1}, Lcom/miui/aod/components/view/VerticalTextView;->setTextSize(IF)V

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/miui/aod/components/view/VerticalTextView;->mIsVerticalMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/aod/components/view/VerticalTextView;->initDimentionsOnMeasure(II)V

    iget p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTMeasuredWidth:F

    float-to-int p1, p1

    iget p2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTMeasuredHeight:F

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/components/view/VerticalTextView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public reMeasureText(II)V
    .locals 10

    new-instance v9, Lcom/miui/aod/components/view/VerticalStaticLayout;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingRight()I

    move-result v0

    sub-int v3, p1, v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getPaddingBottom()I

    move-result p1

    sub-int v4, p2, p1

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLineSpacingMultiplier()F

    move-result v5

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getLineSpacingExtra()F

    move-result v6

    invoke-direct {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getCJKVerticalSpacingMultiplier()F

    move-result v7

    invoke-direct {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getCJKVerticalLineSpacingExtra()F

    move-result v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/miui/aod/components/view/VerticalStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIFFFF)V

    iput-object v9, p0, Lcom/miui/aod/components/view/VerticalTextView;->mVerticalStaticLayout:Lcom/miui/aod/components/view/VerticalStaticLayout;

    return-void
.end method

.method public setAutoFormatText(ZLcom/miui/aod/components/view/VerticalTextView$TextFormat;)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mNeedsAutoFormatText:Z

    iput-object p2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mTextFormat:Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->isVerticalMode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mNeedsAutoSizeText:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {p4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    invoke-static {p4, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    invoke-static {p4, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    sub-float/2addr p2, p1

    div-float/2addr p2, p3

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p2, v2

    add-int/2addr p2, v1

    new-array p4, p2, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    int-to-float v2, v0

    mul-float/2addr v2, p3

    add-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mNeedsAutoSizeText:Z

    iput-object p4, p0, Lcom/miui/aod/components/view/VerticalTextView;->mAutoSizeTextSizesInPx:[I

    invoke-direct {p0}, Lcom/miui/aod/components/view/VerticalTextView;->autoJustTextSize()V

    :goto_1
    return-void
.end method

.method public setCJKVerticalSpace(FF)V
    .locals 0

    iput p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mCJKspacingAdd:F

    iput p2, p0, Lcom/miui/aod/components/view/VerticalTextView;->mCJKspacingMult:F

    return-void
.end method

.method public setDrawableMask(I)V
    .locals 0

    iput p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mDrawableMask:I

    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mNeedsAutoSizeText:Z

    return-void
.end method

.method public setTextSize(IFZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->setTextSize(IF)V

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mNeedsAutoSizeText:Z

    :cond_0
    return-void
.end method

.method public setVerticalMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/components/view/VerticalTextView;->mIsVerticalMode:Z

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalTextView;->requestLayout()V

    return-void
.end method
