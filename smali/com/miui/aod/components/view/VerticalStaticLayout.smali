.class public Lcom/miui/aod/components/view/VerticalStaticLayout;
.super Ljava/lang/Object;
.source "VerticalStaticLayout.java"


# instance fields
.field private mCJKspacingAdd:F

.field private mCJKspacingMult:F

.field private mDescent:I

.field private mEllipseCount:I

.field private mEllipsisHint:C

.field private mEnd:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineBreakIndex:[I

.field private mLineCount:I

.field private mLineHeights:[F

.field private mLineMaxHeight:F

.field private mLineMaxWidth:F

.field private mLineWidths:[F

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mPaint:Landroid/text/TextPaint;

.field private mShowedLineCount:I

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mStart:I

.field private mText:Ljava/lang/CharSequence;

.field private mTotalWidth:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIFFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mCJKspacingAdd:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mCJKspacingMult:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mShowedLineCount:I

    iput v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mDescent:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mEllipseCount:I

    const v1, 0xfe19

    iput-char v1, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mEllipsisHint:C

    iput-object p1, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mPaint:Landroid/text/TextPaint;

    iput p4, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mMaxHeight:I

    iput p3, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mMaxWidth:I

    iput p5, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mSpacingMult:F

    iput p6, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mSpacingAdd:F

    iput p8, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mCJKspacingAdd:F

    iput p7, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mCJKspacingMult:F

    iget-object p1, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iput v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mEllipseCount:I

    invoke-direct {p0}, Lcom/miui/aod/components/view/VerticalStaticLayout;->measureDimentions()V

    return-void
.end method

.method private getCJKVerticalLineSpacingExtra(Z)F
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mCJKspacingAdd:F

    :goto_0
    return p0
.end method

.method private getCJKVerticalSpacingMultiplier(Z)F
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mCJKspacingMult:F

    :goto_0
    return p0
.end method

.method private getCharWH(I)[F
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/miui/aod/components/view/VerticalStaticLayout;->needRotate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v3, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    add-int/2addr v2, p1

    invoke-virtual {v3, v4, p1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    iget-object v2, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v2, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mDescent:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mPaint:Landroid/text/TextPaint;

    const-string p1, "\u7c73"

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    add-int/2addr v2, p1

    invoke-virtual {v1, v3, p1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    iget-object p1, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, p0

    int-to-float p1, p1

    :goto_0
    const/4 p0, 0x0

    aput v1, v0, p0

    const/4 p0, 0x1

    aput p1, v0, p0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getWidth(IF)F
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget v2, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mSpacingMult:F

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mSpacingAdd:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private measureDimentions()V
    .locals 15

    iget v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mMaxHeight:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineMaxHeight:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineCount:I

    iget-object v3, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineWidths:[F

    iget-object v3, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, v4

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineBreakIndex:[I

    iget-object v3, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, v4

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineHeights:[F

    iput v1, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineMaxWidth:F

    move v7, v1

    move v3, v2

    move v6, v3

    move v5, v4

    :goto_0
    iget-object v8, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v3, v8, :cond_b

    iget-object v8, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-static {v8, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    invoke-direct {p0, v8}, Lcom/miui/aod/components/view/VerticalStaticLayout;->needRotate(I)Z

    move-result v8

    const/16 v10, 0xa

    if-eqz v8, :cond_0

    iget-object v11, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v12, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v12, v12, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mPaint:Landroid/text/TextPaint;

    iget-object v13, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    add-int v14, v3, v9

    invoke-virtual {v12, v13, v3, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v12

    iget-object v13, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v13, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mDescent:I

    goto :goto_1

    :cond_0
    iget-object v11, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v10, :cond_1

    iget-object v11, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mPaint:Landroid/text/TextPaint;

    const-string v12, "\u7c73"

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    move v12, v1

    goto :goto_1

    :cond_1
    iget-object v11, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mPaint:Landroid/text/TextPaint;

    iget-object v12, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    add-int v13, v3, v9

    invoke-virtual {v11, v12, v3, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v11

    iget-object v12, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v12, v12, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v13, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    :goto_1
    add-float v13, v7, v12

    int-to-float v14, v0

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_3

    iget-object v13, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v13, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v13, v10, :cond_2

    goto :goto_2

    :cond_2
    move v13, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v13, v4

    :goto_3
    if-eqz v13, :cond_7

    iget v13, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineMaxHeight:F

    cmpg-float v13, v13, v7

    if-gez v13, :cond_4

    iput v7, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineMaxHeight:F

    :cond_4
    iget-object v13, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineHeights:[F

    iget v14, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mMaxHeight:I

    int-to-float v14, v14

    invoke-static {v7, v14}, Ljava/lang/Math;->max(FF)F

    move-result v7

    aput v7, v13, v6

    iget-object v7, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_5

    iget-object v5, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineBreakIndex:[I

    aput v3, v5, v6

    goto :goto_4

    :cond_5
    iget-object v7, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineBreakIndex:[I

    sub-int v5, v3, v5

    aput v5, v7, v6

    :goto_4
    iget v5, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mWidth:I

    int-to-float v5, v5

    iget-object v7, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineWidths:[F

    aget v7, v7, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mWidth:I

    add-int/lit8 v6, v6, 0x1

    cmpl-float v5, v12, v1

    if-eqz v5, :cond_6

    invoke-direct {p0, v8}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getCJKVerticalSpacingMultiplier(Z)F

    move-result v5

    mul-float/2addr v12, v5

    invoke-direct {p0, v8}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getCJKVerticalLineSpacingExtra(Z)F

    move-result v5

    add-float/2addr v5, v12

    goto :goto_5

    :cond_6
    move v5, v1

    :goto_5
    move v7, v5

    goto :goto_6

    :cond_7
    invoke-direct {p0, v8}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getCJKVerticalSpacingMultiplier(Z)F

    move-result v5

    mul-float/2addr v12, v5

    invoke-direct {p0, v8}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getCJKVerticalLineSpacingExtra(Z)F

    move-result v5

    add-float/2addr v12, v5

    add-float/2addr v7, v12

    iget v5, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineMaxHeight:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_8

    iput v7, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineMaxHeight:F

    :cond_8
    :goto_6
    iget-object v5, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineWidths:[F

    aget v5, v5, v6

    cmpg-float v5, v5, v11

    if-gez v5, :cond_9

    iget-object v5, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineWidths:[F

    aput v11, v5, v6

    iget-object v5, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineWidths:[F

    aget v5, v5, v6

    iget v8, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineMaxWidth:F

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineMaxWidth:F

    :cond_9
    add-int/2addr v3, v9

    iget-object v5, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lt v3, v5, :cond_a

    iget v5, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mWidth:I

    int-to-float v5, v5

    iget-object v8, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineWidths:[F

    aget v8, v8, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mWidth:I

    iget-object v5, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineHeights:[F

    iget v8, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mMaxHeight:I

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v5, v6

    :cond_a
    move v5, v9

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_c

    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineCount:I

    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineBreakIndex:[I

    iget-object v1, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v5

    aput v1, v0, v6

    :cond_c
    iget v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineCount:I

    if-le v0, v4, :cond_d

    iget v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineCount:I

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getWidth(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mWidth:I

    :cond_d
    iget v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mTotalWidth:F

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getShowedLineN()I

    move-result v0

    iput v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mShowedLineCount:I

    return-void
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

    iget-char p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mEllipsisHint:C

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

.method private reverseSearchCharStartIndex(I)I
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    :goto_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/miui/aod/Utils;->isControlCharactorNoLf(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return p1
.end method


# virtual methods
.method public getDescent()I
    .locals 0

    iget p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mDescent:I

    return p0
.end method

.method public getEllipsisCount()I
    .locals 8

    iget v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mEllipseCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mEllipseCount:I

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getShowedLineCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getLineCount()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iput v2, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mEllipseCount:I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-direct {p0, v2}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getCJKVerticalSpacingMultiplier(Z)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-direct {p0, v2}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getCJKVerticalLineSpacingExtra(Z)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getShowedLineCount()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getLineBreak(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getShowedLineCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getHeight(I)F

    move-result v4

    int-to-float v0, v0

    add-float v5, v4, v0

    iget v6, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mMaxHeight:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getShowedLineCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p0, v5}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getLineBreak(I)I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p0}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getShowedLineCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p0, v5}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getLineBreak(I)I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_1
    if-le v1, v5, :cond_5

    invoke-direct {p0, v1}, Lcom/miui/aod/components/view/VerticalStaticLayout;->reverseSearchCharStartIndex(I)I

    move-result v1

    if-gez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, v1}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getCharWH(I)[F

    move-result-object v6

    aget v6, v6, v3

    sub-float/2addr v4, v6

    add-float v6, v4, v0

    iget v7, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mMaxHeight:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mEllipseCount:I

    iget p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mEllipseCount:I

    return p0
.end method

.method public getHeight()F
    .locals 0

    iget p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineMaxHeight:F

    return p0
.end method

.method public getHeight(I)F
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineHeights:[F

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineHeights:[F

    aget p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLineBreak(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineBreakIndex:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineBreakIndex:[I

    aget p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLineBreaks()[I
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineBreakIndex:[I

    return-object p0
.end method

.method public getLineCount()I
    .locals 0

    iget p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineCount:I

    return p0
.end method

.method public getLineLeft(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineMaxWidth()F
    .locals 0

    iget p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineMaxWidth:F

    return p0
.end method

.method public getLineRight(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineWidth(I)F
    .locals 0

    iget p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineMaxWidth:F

    return p0
.end method

.method public getShowedLineCount()I
    .locals 0

    iget p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mShowedLineCount:I

    return p0
.end method

.method public getShowedLineN()I
    .locals 4

    iget v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mTotalWidth:F

    iget v2, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mMaxWidth:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mTotalWidth:F

    iget v2, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineMaxWidth:F

    iget v3, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mSpacingMult:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mSpacingAdd:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mTotalWidth:F

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getWidth()F
    .locals 0

    iget p0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mTotalWidth:F

    return p0
.end method

.method public getWidth(I)F
    .locals 1

    iget v0, p0, Lcom/miui/aod/components/view/VerticalStaticLayout;->mLineMaxWidth:F

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/components/view/VerticalStaticLayout;->getWidth(IF)F

    move-result p0

    return p0
.end method
