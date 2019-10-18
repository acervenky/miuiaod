.class public abstract Lcom/miui/aod/components/view/BaseStyleSelectView;
.super Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
.source "BaseStyleSelectView.java"

# interfaces
.implements Lcom/miui/aod/components/StyleSelectContract$StyleSelectView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/components/view/BaseStyleSelectView$ExitSelectViewEvent;,
        Lcom/miui/aod/components/view/BaseStyleSelectView$PreviewStateEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;",
        "Lcom/miui/aod/components/StyleSelectContract$StyleSelectView<",
        "Lcom/miui/aod/components/BaseStyleSelectPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field protected m24HourFormat:Z

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field protected mApplyButton:Landroid/widget/Button;

.field private mBackIcon:Landroid/view/View;

.field private mBottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

.field protected mCateNameSelected:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mGson:Lcom/google/gson/Gson;

.field private mHeadBottomDivider:Landroid/view/View;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPanelContainer:Landroid/view/View;

.field private mPreview:Lcom/miui/aod/components/view/AodContainerView;

.field private mPreviewMode:Z

.field protected mPreviewStyleController:Lcom/miui/aod/AODStyleController;

.field protected mRootView:Landroid/view/ViewGroup;

.field private mSelectContainerView:Landroid/support/v4/widget/NestedScrollView;

.field protected mSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

.field protected mStyleInfo:Lcom/miui/aod/common/StyleInfo;

.field protected mStyleParameter:Ljava/lang/String;

.field protected mTitleTv:Landroid/widget/TextView;

.field private mTranslation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mTranslation:I

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mGson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/miui/aod/components/view/BaseStyleSelectView$3;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/view/BaseStyleSelectView$3;-><init>(Lcom/miui/aod/components/view/BaseStyleSelectView;)V

    iput-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/miui/aod/components/view/BaseStyleSelectView$4;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/view/BaseStyleSelectView$4;-><init>(Lcom/miui/aod/components/view/BaseStyleSelectView;)V

    iput-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->m24HourFormat:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance p1, Lcom/miui/aod/AODStyleController;

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lcom/miui/aod/AODStyleController;-><init>(ILandroid/view/LayoutInflater;)V

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPreviewStyleController:Lcom/miui/aod/AODStyleController;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/components/view/BaseStyleSelectView;)Lcom/miui/aod/components/view/AodContainerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPreview:Lcom/miui/aod/components/view/AodContainerView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/aod/components/view/BaseStyleSelectView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mTranslation:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/aod/components/view/BaseStyleSelectView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mHeadBottomDivider:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/aod/components/view/BaseStyleSelectView;)Landroid/support/design/widget/BottomSheetBehavior;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mBottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/aod/components/view/BaseStyleSelectView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPreviewMode:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/aod/components/view/BaseStyleSelectView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPanelContainer:Landroid/view/View;

    return-object p0
.end method

.method private configSelectView()V
    .locals 4

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {v0}, Lcom/miui/aod/common/StyleInfo;->supportBatteryIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {v0}, Lcom/miui/aod/common/StyleInfo;->supportNotificationIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mSelectContainerView:Landroid/support/v4/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003a

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/components/widget/BatteryAndNotificationSlidingView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {v1, v0}, Lcom/miui/aod/components/widget/BatteryAndNotificationSlidingView;->update(Lcom/miui/aod/common/StyleInfo;)V

    new-instance v0, Lcom/miui/aod/components/view/BaseStyleSelectView$5;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/view/BaseStyleSelectView$5;-><init>(Lcom/miui/aod/components/view/BaseStyleSelectView;)V

    new-instance v2, Lcom/miui/aod/components/view/BaseStyleSelectView$6;

    invoke-direct {v2, p0}, Lcom/miui/aod/components/view/BaseStyleSelectView$6;-><init>(Lcom/miui/aod/components/view/BaseStyleSelectView;)V

    invoke-virtual {v1, v0, v2}, Lcom/miui/aod/components/widget/BatteryAndNotificationSlidingView;->setCheckChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$inflate$7(Lcom/miui/aod/components/view/BaseStyleSelectView;Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPreviewMode:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/view/BaseStyleSelectView;->showPreviewMode(Z)V

    return-void
.end method

.method static synthetic lambda$inflate$8(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$inflate$9(Lcom/miui/aod/components/view/BaseStyleSelectView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->applyStyle()V

    return-void
.end method


# virtual methods
.method public applyStyle()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mGson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/BaseStyleSelectPresenter;->applyStyleParameter(Ljava/lang/String;)V

    return-void
.end method

.method public getPresenter()Lcom/miui/aod/components/BaseStyleSelectPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    return-object p0
.end method

.method public final inflate(Landroid/view/ViewGroup;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f1100ad

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/components/view/AodContainerView;

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPreview:Lcom/miui/aod/components/view/AodContainerView;

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPreview:Lcom/miui/aod/components/view/AodContainerView;

    invoke-virtual {p1}, Lcom/miui/aod/components/view/AodContainerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/miui/aod/components/view/BaseStyleSelectView$1;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/view/BaseStyleSelectView$1;-><init>(Lcom/miui/aod/components/view/BaseStyleSelectView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPreview:Lcom/miui/aod/components/view/AodContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/view/BaseStyleSelectView;->initPreviewView(Landroid/view/ViewGroup;)Z

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f1100ac

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/miui/aod/components/view/-$$Lambda$BaseStyleSelectView$o4o0-4y-CP2e_AHAQl9lc78yZVI;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/view/-$$Lambda$BaseStyleSelectView$o4o0-4y-CP2e_AHAQl9lc78yZVI;-><init>(Lcom/miui/aod/components/view/BaseStyleSelectView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f1100af

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPanelContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPanelContainer:Landroid/view/View;

    sget-object v0, Lcom/miui/aod/components/view/-$$Lambda$BaseStyleSelectView$hF-fUjsMmU15X5s_aU4KCNtnQs8;->INSTANCE:Lcom/miui/aod/components/view/-$$Lambda$BaseStyleSelectView$hF-fUjsMmU15X5s_aU4KCNtnQs8;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f1100b0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mHeadBottomDivider:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPanelContainer:Landroid/view/View;

    invoke-static {p1}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mBottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mBottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {p1, p0}, Landroid/support/design/widget/BottomSheetBehavior;->setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mBottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f110108

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mTitleTv:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f110109

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mApplyButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mApplyButton:Landroid/widget/Button;

    new-instance v0, Lcom/miui/aod/components/view/-$$Lambda$BaseStyleSelectView$fF5S_m_Uz3-LRSEyD2Wjr-x-9XA;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/view/-$$Lambda$BaseStyleSelectView$fF5S_m_Uz3-LRSEyD2Wjr-x-9XA;-><init>(Lcom/miui/aod/components/view/BaseStyleSelectView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f1100b2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mBackIcon:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mHeadBottomDivider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/miui/aod/components/view/BaseStyleSelectView$2;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/view/BaseStyleSelectView$2;-><init>(Lcom/miui/aod/components/view/BaseStyleSelectView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f1100b1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/NestedScrollView;

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mSelectContainerView:Landroid/support/v4/widget/NestedScrollView;

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mSelectContainerView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/view/BaseStyleSelectView;->inflateStyleSelectPanelView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected abstract inflateStyleSelectPanelView(Landroid/view/ViewGroup;)V
.end method

.method protected initPreviewView(Landroid/view/ViewGroup;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final initStyleInfoSelected(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/aod/widget/IAodClock;
    .locals 1

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mCateNameSelected:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mStyleParameter:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mCateNameSelected:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mStyleParameter:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/miui/aod/category/CategoryFactory;->createStyleInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getTitleResId()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p2, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const p2, 0x7f1100ac

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p2}, Lcom/miui/aod/common/StyleInfo;->getPreviewTopPaddingResId()I

    move-result p2

    if-lez p2, :cond_2

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/view/BaseStyleSelectView;->initStyleInfoSelectedInner(Lcom/miui/aod/common/StyleInfo;)V

    invoke-direct {p0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->configSelectView()V

    invoke-virtual {p0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;

    move-result-object p0

    return-object p0
.end method

.method protected initStyleInfoSelectedInner(Lcom/miui/aod/common/StyleInfo;)V
    .locals 0

    return-void
.end method

.method public onSlide(Landroid/view/View;F)V
    .locals 1

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPreview:Lcom/miui/aod/components/view/AodContainerView;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    iget p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mTranslation:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/view/AodContainerView;->setTranslationY(F)V

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public setPresenter(Lcom/miui/aod/components/BaseStyleSelectPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/aod/components/BaseStyleSelectPresenter;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/view/BaseStyleSelectView;->setPresenter(Lcom/miui/aod/components/BaseStyleSelectPresenter;)V

    return-void
.end method

.method public showPreviewMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mBackIcon:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPanelContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iput-boolean p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPreviewMode:Z

    iget-boolean p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPreviewMode:Z

    const-wide/16 v0, 0x12c

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPanelContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPanelContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    return-void
.end method

.method protected updateAODStyle(Lcom/miui/aod/common/StyleInfo;)Lcom/miui/aod/widget/IAodClock;
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPreview:Lcom/miui/aod/components/view/AodContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPreviewStyleController:Lcom/miui/aod/AODStyleController;

    iget-object v1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPreview:Lcom/miui/aod/components/view/AodContainerView;

    invoke-virtual {v0, v1, p1}, Lcom/miui/aod/AODStyleController;->inflateView(Landroid/view/View;Lcom/miui/aod/common/StyleInfo;)Lcom/miui/aod/widget/IAodClock;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPreviewStyleController:Lcom/miui/aod/AODStyleController;

    iget-boolean p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->m24HourFormat:Z

    invoke-virtual {v0, p0}, Lcom/miui/aod/AODStyleController;->handleUpdateTime(Z)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->updateAODStyle(Lcom/miui/aod/common/StyleInfo;)Lcom/miui/aod/widget/IAodClock;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/BaseStyleSelectPresenter;->setIAodClock(Lcom/miui/aod/widget/IAodClock;)V

    return-object v0
.end method

.method public updateTime()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->mPreviewStyleController:Lcom/miui/aod/AODStyleController;

    iget-boolean p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView;->m24HourFormat:Z

    invoke-virtual {v0, p0}, Lcom/miui/aod/AODStyleController;->handleUpdateTime(Z)V

    return-void
.end method
