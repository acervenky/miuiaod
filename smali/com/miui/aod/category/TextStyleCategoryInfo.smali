.class public Lcom/miui/aod/category/TextStyleCategoryInfo;
.super Lcom/miui/aod/category/CategoryInfo;
.source "TextStyleCategoryInfo.java"


# instance fields
.field private mContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field private mFontWeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "font_weight"
    .end annotation
.end field

.field private mGravity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gravity"
    .end annotation
.end field

.field private mLetterSpace:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "letter_space"
    .end annotation
.end field

.field private mLineMultiplier:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "line_multiplier"
    .end annotation
.end field

.field private mShowedContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showed_content"
    .end annotation
.end field

.field private mTextFormat:Lcom/miui/aod/components/view/VerticalTextView$TextFormat;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text_format"
    .end annotation
.end field

.field private mTextSize:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text_size"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "text_style"

    invoke-direct {p0, v0}, Lcom/miui/aod/category/CategoryInfo;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x201

    iput v0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mGravity:I

    const/16 v0, 0x276

    iput v0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mFontWeight:I

    const/high16 v0, 0x42380000    # 46.0f

    iput v0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mTextSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mLineMultiplier:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mLetterSpace:F

    return-void
.end method


# virtual methods
.method public createAodClock(I)Lcom/miui/aod/widget/IAodClock;
    .locals 0

    new-instance p0, Lcom/miui/aod/widget/SignatureClock;

    invoke-direct {p0, p1}, Lcom/miui/aod/widget/SignatureClock;-><init>(I)V

    return-object p0
.end method

.method public dealAodContentContainerLayoutParams(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    const/4 p0, 0x1

    if-eq p2, p0, :cond_0

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    const/4 p0, -0x1

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method public dealClockContentContainerLayoutParams(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    const/4 p0, 0x1

    if-eq p2, p0, :cond_0

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    const/4 p0, -0x1

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method public dealContentLayoutParams(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    const/4 p0, 0x1

    if-eq p2, p0, :cond_0

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    const/4 p0, -0x1

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method public getColorName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/miui/aod/category/CategoryInfo;->getColorName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "aod_gradient_4"

    :cond_0
    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method protected getDefaultClockBg()I
    .locals 0

    invoke-virtual {p0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getDefaultClockBgName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/aod/resource/ImagePool;->getImageRes(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getFontWeight()I
    .locals 0

    iget p0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mFontWeight:I

    return p0
.end method

.method public getGravity()I
    .locals 0

    iget p0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mGravity:I

    return p0
.end method

.method public getLetterSpace()F
    .locals 0

    iget p0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mLetterSpace:F

    return p0
.end method

.method public getLineMultiplier()F
    .locals 0

    iget p0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mLineMultiplier:F

    return p0
.end method

.method public getPreviewTopPaddingResId()I
    .locals 0

    const p0, 0x7f0b00bc

    return p0
.end method

.method public getPureGravity()I
    .locals 1

    iget v0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->isVertical()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    :goto_0
    or-int/2addr p0, v0

    return p0
.end method

.method public getShowedContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mShowedContent:Ljava/lang/String;

    return-object p0
.end method

.method public getStyleSelectViewName()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/miui/aod/components/view/TextStyleSelectView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextFormat()Lcom/miui/aod/components/view/VerticalTextView$TextFormat;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mTextFormat:Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    return-object p0
.end method

.method public getTextSize()F
    .locals 0

    iget p0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mTextSize:F

    return p0
.end method

.method public getTitleResId()I
    .locals 0

    const p0, 0x7f090055

    return p0
.end method

.method public initConfig(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f090056

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mContent:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public isVertical()Z
    .locals 0

    iget p0, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mGravity:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBg(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    const p0, 0x7f1100ae

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mContent:Ljava/lang/String;

    return-void
.end method

.method public setFontWeight(I)V
    .locals 0

    iput p1, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mFontWeight:I

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mGravity:I

    return-void
.end method

.method public setShowedContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mShowedContent:Ljava/lang/String;

    return-void
.end method

.method public setTextFormat(Lcom/miui/aod/components/view/VerticalTextView$TextFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mTextFormat:Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/miui/aod/category/TextStyleCategoryInfo;->mTextSize:F

    return-void
.end method

.method public supportBatteryIcon()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportChangeColorAlongTime()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportHideClock()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportNotificationIcon()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
