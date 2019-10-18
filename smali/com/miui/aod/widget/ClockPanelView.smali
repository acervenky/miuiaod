.class public Lcom/miui/aod/widget/ClockPanelView;
.super Landroid/widget/FrameLayout;
.source "ClockPanelView.java"

# interfaces
.implements Lcom/miui/aod/widget/IAnimatable;


# instance fields
.field private mAnimationView:Lcom/miui/aod/widget/AnimationView;

.field private mClockAnimationEndTask:Ljava/lang/Runnable;

.field private mClockPanelStyle:I

.field private mDotSize:I

.field private mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

.field private mFrameAnimationInfo:Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

.field private mHour:I

.field private mHourHand:Landroid/widget/ImageView;

.field private mHourLength:I

.field private mHourLengthTail:I

.field private mIsDual:Z

.field private mMinute:I

.field private mMinuteHand:Landroid/widget/ImageView;

.field private mMinuteLength:I

.field private mMinuteLengthTail:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPanelCenterDot:Landroid/widget/ImageView;

.field private mPendingAnimation:Z

.field private mRound:I

.field private mSize:I

.field private mTimeInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/miui/aod/widget/-$$Lambda$YD8MyyzAEM674LL_iYhn-Kc8Fyo;

    invoke-direct {p1, p0}, Lcom/miui/aod/widget/-$$Lambda$YD8MyyzAEM674LL_iYhn-Kc8Fyo;-><init>(Lcom/miui/aod/widget/ClockPanelView;)V

    iput-object p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mClockAnimationEndTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/widget/ClockPanelView;)Lcom/miui/aod/widget/AnimationView;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/ClockPanelView;->mAnimationView:Lcom/miui/aod/widget/AnimationView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/aod/widget/ClockPanelView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/ClockPanelView;->mClockAnimationEndTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private addAnimationView()V
    .locals 6

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationInfo:Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->clearAnimationView()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/miui/aod/widget/AnimationView;

    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/aod/widget/AnimationView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mAnimationView:Lcom/miui/aod/widget/AnimationView;

    iget-object v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mAnimationView:Lcom/miui/aod/widget/AnimationView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/miui/aod/widget/ClockPanelView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/miui/aod/widget/FrameAnimationView;

    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationInfo:Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    iget v4, v4, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;->mFps:I

    iget-object v5, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationInfo:Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    iget-object v5, v5, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;->mResIdArrays:[I

    invoke-direct {v1, v3, v4, v5}, Lcom/miui/aod/widget/FrameAnimationView;-><init>(Landroid/content/Context;I[I)V

    iput-object v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    iget-object v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    invoke-virtual {p0, v1, v2, v0}, Lcom/miui/aod/widget/ClockPanelView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private startBackgroundAnimation()V
    .locals 2

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    invoke-virtual {v0}, Lcom/miui/aod/widget/FrameAnimationView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/ClockPanelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    new-instance v1, Lcom/miui/aod/widget/ClockPanelView$2;

    invoke-direct {v1, p0}, Lcom/miui/aod/widget/ClockPanelView$2;-><init>(Lcom/miui/aod/widget/ClockPanelView;)V

    invoke-virtual {v0, v1}, Lcom/miui/aod/widget/FrameAnimationView;->setAnimationCallBack(Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;)V

    iget-object p0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    invoke-virtual {p0}, Lcom/miui/aod/widget/FrameAnimationView;->startAnimation()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private startClockHandAnimation(FF)V
    .locals 4

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mAnimationView:Lcom/miui/aod/widget/AnimationView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mAnimationView:Lcom/miui/aod/widget/AnimationView;

    invoke-virtual {v0}, Lcom/miui/aod/widget/AnimationView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/miui/aod/widget/ClockHandDrawer;

    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationInfo:Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    iget v2, v2, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;->mResIdHour:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationInfo:Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    iget v3, v3, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;->mResIdMin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/aod/widget/ClockHandDrawer;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/aod/widget/ClockHandDrawer;->setAnimationValue(FF)V

    const-wide/32 p1, 0x23c34600

    invoke-virtual {v0, p1, p2}, Lcom/miui/aod/widget/ClockHandDrawer;->setStartDelay(J)V

    iget-object p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourHand:Landroid/widget/ImageView;

    const/16 p2, 0x8

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourLength:I

    invoke-virtual {v0, p1}, Lcom/miui/aod/widget/ClockHandDrawer;->setHourDrawableSize(I)V

    iget-object p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourHand:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteHand:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteLength:I

    invoke-virtual {v0, p1}, Lcom/miui/aod/widget/ClockHandDrawer;->setMinDrawableSize(I)V

    iget-object p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteHand:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    new-instance p1, Lcom/miui/aod/widget/ClockPanelView$1;

    invoke-direct {p1, p0}, Lcom/miui/aod/widget/ClockPanelView$1;-><init>(Lcom/miui/aod/widget/ClockPanelView;)V

    invoke-virtual {v0, p1}, Lcom/miui/aod/widget/ClockHandDrawer;->setAnimationListener(Lcom/miui/aod/widget/AnimationView$AnimationDrawer$AnimationStateListener;)V

    iget-object p0, p0, Lcom/miui/aod/widget/ClockPanelView;->mAnimationView:Lcom/miui/aod/widget/AnimationView;

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/AnimationView;->addAnimationDrawer(Lcom/miui/aod/widget/AnimationView$AnimationDrawer;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public clearAnimationView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    invoke-virtual {v0, v1}, Lcom/miui/aod/widget/FrameAnimationView;->setAnimationCallBack(Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;)V

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/ClockPanelView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mAnimationView:Lcom/miui/aod/widget/AnimationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mAnimationView:Lcom/miui/aod/widget/AnimationView;

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/ClockPanelView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mAnimationView:Lcom/miui/aod/widget/AnimationView;

    :cond_1
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

.method public init(IZLjava/lang/String;)V
    .locals 7

    invoke-static {p3}, Lcom/miui/aod/widget/FrameAnimationManager;->getFrameAnimationInfoByStyleName(Ljava/lang/String;)Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationInfo:Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    iput p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    iput-boolean p2, p0, Lcom/miui/aod/widget/ClockPanelView;->mIsDual:Z

    iget-object p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationInfo:Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mIsDual:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0c00a7

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const v1, 0x7f0c00a9

    goto :goto_1

    :cond_2
    const v1, 0x7f0c009f

    :goto_1
    iput v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mClockPanelStyle:I

    goto :goto_5

    :cond_3
    iget v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    const v4, 0x7f0c00a8

    if-ne v1, v3, :cond_6

    iget-boolean v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mIsDual:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    const v4, 0x7f0c00aa

    goto :goto_2

    :cond_5
    const v4, 0x7f0c00a1

    :goto_2
    iput v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mClockPanelStyle:I

    goto :goto_5

    :cond_6
    iget v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    if-ne v1, v2, :cond_9

    iget-boolean v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mIsDual:Z

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    if-nez p1, :cond_8

    const v4, 0x7f0c00ab

    goto :goto_3

    :cond_8
    const v4, 0x7f0c00a2

    :goto_3
    iput v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mClockPanelStyle:I

    goto :goto_5

    :cond_9
    iget-boolean v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mIsDual:Z

    if-eqz v1, :cond_a

    const v1, 0x7f0c00a3

    goto :goto_4

    :cond_a
    if-nez p1, :cond_b

    const v1, 0x7f0c00a0

    goto :goto_4

    :cond_b
    const v1, 0x7f0c009e

    :goto_4
    iput v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mClockPanelStyle:I

    :goto_5
    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mClockPanelStyle:I

    sget-object v5, Lcom/miui/aod/R$styleable;->clockPanel:[I

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-boolean v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mIsDual:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourLength:I

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourLengthTail:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteLength:I

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteLengthTail:I

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mRound:I

    goto :goto_6

    :cond_c
    iget-object v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourHand:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourLength:I

    iget-object v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourHand:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v6, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourLength:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourLength:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourHand:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteHand:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteLength:I

    iget-object v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteHand:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v6, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteLength:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteLength:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteHand:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mPanelCenterDot:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mDotSize:I

    iget-object v4, p0, Lcom/miui/aod/widget/ClockPanelView;->mPanelCenterDot:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v6, p0, Lcom/miui/aod/widget/ClockPanelView;->mDotSize:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, p0, Lcom/miui/aod/widget/ClockPanelView;->mDotSize:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/miui/aod/widget/ClockPanelView;->mPanelCenterDot:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mIsDual:Z

    if-eqz p1, :cond_d

    const p1, 0x7f0201da

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/ClockPanelView;->setBackgroundResource(I)V

    goto :goto_8

    :cond_d
    invoke-static {p3}, Lcom/miui/aod/ClockStylePool;->getClockPanelBgByStyleName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/ClockPanelView;->setBackgroundResource(I)V

    goto :goto_8

    :cond_e
    iget-object p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourHand:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationInfo:Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    iget p3, p3, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;->mResIdHour:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteHand:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationInfo:Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    iget p3, p3, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;->mResIdMin:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mPanelCenterDot:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    if-eq p1, v3, :cond_10

    iget p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    if-ne p1, v2, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->startAnimation()V

    goto :goto_8

    :cond_10
    :goto_7
    iget-object p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationInfo:Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    iget p1, p1, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;->mResIdBg:I

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/ClockPanelView;->setBackgroundResource(I)V

    :goto_8
    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/ClockPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mClockAnimationEndTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/ClockPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/aod/widget/ClockPanelView;->setOtherElementsVisibility(ZZ)V

    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->resetClockHandState()V

    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->resetBackground()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mIsDual:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourLengthTail:I

    neg-int v0, v0

    int-to-double v0, v0

    iget v2, p0, Lcom/miui/aod/widget/ClockPanelView;->mHour:I

    mul-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinute:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v6, 0x4086800000000000L    # 720.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mRound:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourLengthTail:I

    int-to-double v0, v0

    iget v2, p0, Lcom/miui/aod/widget/ClockPanelView;->mHour:I

    mul-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinute:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mRound:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourLength:I

    int-to-double v0, v0

    iget v2, p0, Lcom/miui/aod/widget/ClockPanelView;->mHour:I

    mul-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinute:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mRound:I

    int-to-float v1, v1

    add-float v11, v0, v1

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourLength:I

    neg-int v0, v0

    int-to-double v0, v0

    iget v2, p0, Lcom/miui/aod/widget/ClockPanelView;->mHour:I

    mul-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinute:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mRound:I

    int-to-float v1, v1

    add-float v12, v0, v1

    iget-object v13, p0, Lcom/miui/aod/widget/ClockPanelView;->mPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteLengthTail:I

    neg-int v0, v0

    int-to-double v0, v0

    iget v2, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinute:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mRound:I

    int-to-float v1, v1

    add-float v9, v0, v1

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteLengthTail:I

    int-to-double v0, v0

    iget v2, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinute:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mRound:I

    int-to-float v1, v1

    add-float v10, v0, v1

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteLength:I

    int-to-double v0, v0

    iget v2, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinute:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mRound:I

    int-to-float v1, v1

    add-float v11, v0, v1

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteLength:I

    neg-int v0, v0

    int-to-double v0, v0

    iget v2, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinute:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mRound:I

    int-to-float v1, v1

    add-float v12, v0, v1

    iget-object v13, p0, Lcom/miui/aod/widget/ClockPanelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v0, 0x7f1100df

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/ClockPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourHand:Landroid/widget/ImageView;

    const v0, 0x7f1100e0

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/ClockPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteHand:Landroid/widget/ImageView;

    const v0, 0x7f1100e1

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/ClockPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mPanelCenterDot:Landroid/widget/ImageView;

    return-void
.end method

.method public resetBackground()V
    .locals 11

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationInfo:Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->getMeasuredHeight()I

    move-result v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationInfo:Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    iget-object v2, v2, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;->mResIdArrays:[I

    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget v2, v2, v4

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eqz v7, :cond_4

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float v3, v7

    div-float/2addr v0, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    int-to-float v2, v8

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v9, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/miui/aod/widget/ClockPanelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/aod/widget/FrameAnimationView;->setAnimationCallBack(Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;)V

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/ClockPanelView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public resetClockHandState()V
    .locals 5

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourHand:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourHand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourHand:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/aod/widget/ClockPanelView;->mHour:I

    rem-int/lit8 v2, v2, 0xc

    mul-int/lit16 v2, v2, 0x168

    div-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinute:I

    mul-int/lit16 v3, v3, 0x168

    int-to-float v3, v3

    const/high16 v4, 0x44340000    # 720.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_1
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteHand:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteHand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteHand:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinute:I

    mul-int/lit16 v2, v2, 0x168

    div-int/lit8 v2, v2, 0x3c

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_2
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mPanelCenterDot:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationInfo:Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mPanelCenterDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mAnimationView:Lcom/miui/aod/widget/AnimationView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mAnimationView:Lcom/miui/aod/widget/AnimationView;

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/ClockPanelView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mAnimationView:Lcom/miui/aod/widget/AnimationView;

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public setOtherElementsVisibility(ZZ)V
    .locals 11

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    invoke-virtual {v0}, Lcom/miui/aod/widget/FrameAnimationView;->getDuration()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->getContainerView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    array-length v5, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    aget v7, v0, v6

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const-wide/16 v8, 0xc8

    if-eqz p1, :cond_3

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v8, 0x320

    sub-long v8, v3, v8

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_4
    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    return-void

    :cond_7
    :goto_3
    return-void

    :array_0
    .array-data 4
        0x7f1100c0
        0x7f1100c1
        0x7f1100b6
        0x7f1100c9
        0x7f1100cf
    .end array-data
.end method

.method public setTime(II)V
    .locals 2

    iput p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mHour:I

    iput p2, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinute:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mTimeInitialized:Z

    iget-boolean p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mPendingAnimation:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->startAnimation()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourHand:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mHourHand:Landroid/widget/ImageView;

    iget p2, p0, Lcom/miui/aod/widget/ClockPanelView;->mHour:I

    rem-int/lit8 p2, p2, 0xc

    mul-int/lit16 p2, p2, 0x168

    div-int/lit8 p2, p2, 0xc

    int-to-float p2, p2

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinute:I

    mul-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    const/high16 v1, 0x44340000    # 720.0f

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_1
    iget-object p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteHand:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinuteHand:Landroid/widget/ImageView;

    iget p0, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinute:I

    mul-int/lit16 p0, p0, 0x168

    div-int/lit8 p0, p0, 0x3c

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startAnimation()V
    .locals 3

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mSize:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationInfo:Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mPendingAnimation:Z

    iget-boolean v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mTimeInitialized:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mPendingAnimation:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mFrameAnimationBg:Lcom/miui/aod/widget/FrameAnimationView;

    invoke-virtual {v1}, Lcom/miui/aod/widget/FrameAnimationView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mAnimationView:Lcom/miui/aod/widget/AnimationView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mAnimationView:Lcom/miui/aod/widget/AnimationView;

    invoke-virtual {v1}, Lcom/miui/aod/widget/AnimationView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/miui/aod/widget/ClockPanelView;->addAnimationView()V

    :cond_3
    invoke-virtual {p0, v0, v0}, Lcom/miui/aod/widget/ClockPanelView;->setOtherElementsVisibility(ZZ)V

    invoke-direct {p0}, Lcom/miui/aod/widget/ClockPanelView;->startBackgroundAnimation()V

    iget v0, p0, Lcom/miui/aod/widget/ClockPanelView;->mHour:I

    rem-int/lit8 v0, v0, 0xc

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinute:I

    mul-int/lit16 v1, v1, 0x168

    int-to-float v1, v1

    const/high16 v2, 0x44340000    # 720.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/miui/aod/widget/ClockPanelView;->mMinute:I

    mul-int/lit16 v1, v1, 0x168

    div-int/lit8 v1, v1, 0x3c

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/miui/aod/widget/ClockPanelView;->startClockHandAnimation(FF)V

    return-void

    :cond_4
    :goto_0
    return-void
.end method
