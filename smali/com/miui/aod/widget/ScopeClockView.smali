.class public Lcom/miui/aod/widget/ScopeClockView;
.super Landroid/widget/FrameLayout;
.source "ScopeClockView.java"

# interfaces
.implements Lcom/miui/aod/widget/IAnimatable;


# instance fields
.field mCancel:Z

.field private mClockAnimationEndTask:Ljava/lang/Runnable;

.field private mClockHorizontal:Landroid/widget/TextView;

.field private mClockPanel:Lcom/miui/aod/widget/ScopeImageView;

.field mContainer:Landroid/view/View;

.field private mDate:Landroid/widget/TextView;

.field private mDateLunar:Landroid/widget/TextView;

.field private mDateStyle:I

.field mHasWindowFocus:Z

.field mOutAnimator:Landroid/animation/ValueAnimator;

.field private mPaddingTop:I

.field private mPanel:Ljava/lang/String;

.field private mScopeEndRunnable:Ljava/lang/Runnable;

.field private mScopeStyle:I

.field private mSize:I

.field private mStartAnimationTask:Ljava/lang/Runnable;

.field private mTimePaddingBottom:I

.field private mTimeStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/miui/aod/widget/-$$Lambda$ScopeClockView$NH6G0XAcEadNKr937ya7NXvseVg;

    invoke-direct {p1, p0}, Lcom/miui/aod/widget/-$$Lambda$ScopeClockView$NH6G0XAcEadNKr937ya7NXvseVg;-><init>(Lcom/miui/aod/widget/ScopeClockView;)V

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockAnimationEndTask:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/aod/widget/-$$Lambda$ScopeClockView$MtPuwYnXjrT7Az5z5q3nJcZAsNQ;

    invoke-direct {p1, p0}, Lcom/miui/aod/widget/-$$Lambda$ScopeClockView$MtPuwYnXjrT7Az5z5q3nJcZAsNQ;-><init>(Lcom/miui/aod/widget/ScopeClockView;)V

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mScopeEndRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/aod/widget/-$$Lambda$ScopeClockView$dfQd_jz09Nz72lbYBOPsjjkmbTM;

    invoke-direct {p1, p0}, Lcom/miui/aod/widget/-$$Lambda$ScopeClockView$dfQd_jz09Nz72lbYBOPsjjkmbTM;-><init>(Lcom/miui/aod/widget/ScopeClockView;)V

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mStartAnimationTask:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/miui/aod/widget/ScopeClockView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/miui/aod/widget/-$$Lambda$ScopeClockView$NH6G0XAcEadNKr937ya7NXvseVg;

    invoke-direct {p1, p0}, Lcom/miui/aod/widget/-$$Lambda$ScopeClockView$NH6G0XAcEadNKr937ya7NXvseVg;-><init>(Lcom/miui/aod/widget/ScopeClockView;)V

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockAnimationEndTask:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/aod/widget/-$$Lambda$ScopeClockView$MtPuwYnXjrT7Az5z5q3nJcZAsNQ;

    invoke-direct {p1, p0}, Lcom/miui/aod/widget/-$$Lambda$ScopeClockView$MtPuwYnXjrT7Az5z5q3nJcZAsNQ;-><init>(Lcom/miui/aod/widget/ScopeClockView;)V

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mScopeEndRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/aod/widget/-$$Lambda$ScopeClockView$dfQd_jz09Nz72lbYBOPsjjkmbTM;

    invoke-direct {p1, p0}, Lcom/miui/aod/widget/-$$Lambda$ScopeClockView$dfQd_jz09Nz72lbYBOPsjjkmbTM;-><init>(Lcom/miui/aod/widget/ScopeClockView;)V

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mStartAnimationTask:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/miui/aod/widget/ScopeClockView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/widget/ScopeClockView;)I
    .locals 0

    iget p0, p0, Lcom/miui/aod/widget/ScopeClockView;->mSize:I

    return p0
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/aod/widget/ScopeClockView$1;

    invoke-direct {v1, p0}, Lcom/miui/aod/widget/ScopeClockView$1;-><init>(Lcom/miui/aod/widget/ScopeClockView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/aod/widget/ScopeClockView$2;

    invoke-direct {v1, p0}, Lcom/miui/aod/widget/ScopeClockView$2;-><init>(Lcom/miui/aod/widget/ScopeClockView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static synthetic lambda$new$3(Lcom/miui/aod/widget/ScopeClockView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/miui/aod/widget/ScopeClockView;->setOtherElementsVisibility(ZZ)V

    return-void
.end method

.method public static synthetic lambda$new$4(Lcom/miui/aod/widget/ScopeClockView;)V
    .locals 3

    iget v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mSize:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mHasWindowFocus:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/aod/widget/ScopeClockView;->getContainerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v2, 0x7f1100ba

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mContainer:Landroid/view/View;

    :cond_1
    iput-boolean v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mCancel:Z

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeClockView;->mOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$new$5(Lcom/miui/aod/widget/ScopeClockView;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/aod/widget/ScopeClockView;->setOtherElementsVisibility(ZZ)V

    iget v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mSize:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move v0, v2

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockPanel:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v2, p0, Lcom/miui/aod/widget/ScopeClockView;->mScopeEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/miui/aod/widget/ScopeImageView;->setEndAction(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockPanel:Lcom/miui/aod/widget/ScopeImageView;

    invoke-virtual {v1, v0}, Lcom/miui/aod/widget/ScopeImageView;->startAnimation(Z)V

    invoke-virtual {p0}, Lcom/miui/aod/widget/ScopeClockView;->getContainerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f1100ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mContainer:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockAnimationEndTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/ScopeClockView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockAnimationEndTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/aod/widget/ScopeClockView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public clearAnimationView()V
    .locals 2

    iget v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mSize:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mStartAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/ScopeClockView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockAnimationEndTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/ScopeClockView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockAnimationEndTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockPanel:Lcom/miui/aod/widget/ScopeImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/aod/widget/ScopeImageView;->setEndAction(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockPanel:Lcom/miui/aod/widget/ScopeImageView;

    invoke-virtual {v0}, Lcom/miui/aod/widget/ScopeImageView;->clearAnimationView()V

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeClockView;->mOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 2

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1100ba

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/miui/aod/widget/ScopeClockView;->hasWindowFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mHasWindowFocus:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/aod/widget/ScopeClockView;->clearAnimationView()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mHasWindowFocus:Z

    iget v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mSize:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/aod/widget/ScopeClockView;->startAnimation()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/aod/widget/ScopeClockView;->clearAnimationView()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setOtherElementsVisibility(ZZ)V
    .locals 7

    iget v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mSize:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/widget/ScopeClockView;->getContainerView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget v3, v0, v2

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const-wide/16 v4, 0x3e8

    if-eqz p1, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lmiui/view/animation/ExponentialEaseInOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/ExponentialEaseInOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lmiui/view/animation/ExponentialEaseInOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/ExponentialEaseInOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x7f1100be
        0x7f1100b6
        0x7f1100c9
        0x7f1100cf
    .end array-data
.end method

.method public setSize(ILjava/lang/String;)V
    .locals 3

    iput p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mSize:I

    iput-object p2, p0, Lcom/miui/aod/widget/ScopeClockView;->mPanel:Ljava/lang/String;

    iget p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mSize:I

    const/4 p2, 0x1

    const/4 v0, 0x2

    if-nez p1, :cond_0

    const p1, 0x7f0c00b7

    iput p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mDateStyle:I

    const p1, 0x7f0c00ca

    iput p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mScopeStyle:I

    const p1, 0x7f0c00cd

    iput p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mTimeStyle:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mSize:I

    if-ne p1, v0, :cond_1

    const p1, 0x7f0c00b8

    iput p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mDateStyle:I

    const p1, 0x7f0c00cb

    iput p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mScopeStyle:I

    const p1, 0x7f0c00ce

    iput p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mTimeStyle:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mSize:I

    const v1, 0x7f0c00cc

    const v2, 0x7f0c00c8

    if-ne p1, p2, :cond_2

    const p1, 0x7f0c00b9

    iput p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mDateStyle:I

    iput v2, p0, Lcom/miui/aod/widget/ScopeClockView;->mScopeStyle:I

    iput v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mTimeStyle:I

    goto :goto_0

    :cond_2
    const p1, 0x7f0c00af

    iput p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mDateStyle:I

    iput v2, p0, Lcom/miui/aod/widget/ScopeClockView;->mScopeStyle:I

    iput v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mTimeStyle:I

    :goto_0
    const p1, 0x7f1100bd

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/ScopeClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/widget/ScopeImageView;

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockPanel:Lcom/miui/aod/widget/ScopeImageView;

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mPanel:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/aod/widget/ScopeInfoManager;->getFrameAnimationInfoByStyleName(Ljava/lang/String;)Lcom/miui/aod/widget/ScopeInfo;

    move-result-object p1

    iget v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mSize:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockPanel:Lcom/miui/aod/widget/ScopeImageView;

    iget p1, p1, Lcom/miui/aod/widget/ScopeInfo;->mResIdThumbnail:I

    invoke-virtual {v1, p1}, Lcom/miui/aod/widget/ScopeImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockPanel:Lcom/miui/aod/widget/ScopeImageView;

    invoke-virtual {v1, p1}, Lcom/miui/aod/widget/ScopeImageView;->setScopeInfo(Lcom/miui/aod/widget/ScopeInfo;)V

    :goto_1
    const p1, 0x7f1100bf

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/ScopeClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockHorizontal:Landroid/widget/TextView;

    const p1, 0x7f1100c0

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/ScopeClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mDate:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockHorizontal:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mTimeStyle:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Lcom/miui/aod/widget/ScopeClockView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "fonts/MitypeRoundedNormal.otf"

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mDate:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mDateStyle:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mDate:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f1100c1

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/ScopeClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mDateLunar:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mDateLunar:Landroid/widget/TextView;

    iget v2, p0, Lcom/miui/aod/widget/ScopeClockView;->mDateStyle:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mDateLunar:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/miui/aod/widget/ScopeClockView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mScopeStyle:I

    sget-object v2, Lcom/miui/aod/R$styleable;->scope:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mPaddingTop:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mTimePaddingBottom:I

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockPanel:Lcom/miui/aod/widget/ScopeImageView;

    invoke-virtual {v1}, Lcom/miui/aod/widget/ScopeImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p2, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockPanel:Lcom/miui/aod/widget/ScopeImageView;

    invoke-virtual {p2, v1}, Lcom/miui/aod/widget/ScopeImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockHorizontal:Landroid/widget/TextView;

    iget p2, p0, Lcom/miui/aod/widget/ScopeClockView;->mPaddingTop:I

    iget p0, p0, Lcom/miui/aod/widget/ScopeClockView;->mTimePaddingBottom:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public startAnimation()V
    .locals 3

    iget v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mSize:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/aod/widget/ScopeClockView;->setOtherElementsVisibility(ZZ)V

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mStartAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/ScopeClockView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mClockAnimationEndTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/ScopeClockView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView;->mStartAnimationTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/aod/widget/ScopeClockView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
