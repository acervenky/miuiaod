.class public Lcom/miui/aod/settings/AODStyleActivity;
.super Lmiui/app/Activity;
.source "AODStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;,
        Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;
    }
.end annotation


# instance fields
.field private m24HourFormat:Z

.field private mAodStyleController:Lcom/miui/aod/AODStyleController;

.field private mBackIcon:Landroid/widget/ImageView;

.field private mCal:Lmiui/date/Calendar;

.field private mCategory:Ljava/lang/String;

.field private mContent:Landroid/widget/FrameLayout;

.field private mDualClock:Z

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mImageAdapter:Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMSecond:I

.field private mName2ViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewMode:Z

.field private mSecond:I

.field private mSelectInfo:Lcom/miui/aod/common/StyleInfo;

.field private mSelectStyleParameter:Ljava/lang/String;

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mPreviewMode:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mName2ViewMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/settings/AODStyleActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/settings/AODStyleActivity;->m24HourFormat:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/aod/settings/AODStyleActivity;)Lcom/miui/aod/AODStyleController;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/aod/settings/AODStyleActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mSelectStyleParameter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/aod/settings/AODStyleActivity;)Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mImageAdapter:Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/aod/settings/AODStyleActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/aod/settings/AODStyleActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/aod/settings/AODStyleActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/settings/AODStyleActivity;->updateAODStyle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/aod/settings/AODStyleActivity;)Lcom/miui/aod/common/StyleInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mSelectInfo:Lcom/miui/aod/common/StyleInfo;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/aod/settings/AODStyleActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mName2ViewMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/aod/settings/AODStyleActivity;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/aod/settings/AODStyleActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method private findView(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private init()V
    .locals 3

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->m24HourFormat:Z

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    iget-boolean v1, p0, Lcom/miui/aod/settings/AODStyleActivity;->m24HourFormat:Z

    invoke-virtual {v0, v1}, Lcom/miui/aod/AODStyleController;->handleUpdateTime(Z)V

    invoke-static {p0}, Lcom/miui/aod/widget/AODSettings;->isDualClock(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mDualClock:Z

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mGridView:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/miui/aod/settings/AODStyleActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/aod/settings/AODStyleActivity$2;-><init>(Lcom/miui/aod/settings/AODStyleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mImageAdapter:Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;

    invoke-virtual {v0}, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mSelectStyleParameter:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/aod/settings/AODStyleActivity;->updateAODStyle(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$11(Lcom/miui/aod/settings/AODStyleActivity;Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mPreviewMode:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/aod/settings/AODStyleActivity;->showPreviewMode(Z)V

    return-void
.end method

.method public static synthetic lambda$onCreate$12(Lcom/miui/aod/settings/AODStyleActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleActivity;->finish()V

    return-void
.end method

.method private showPreviewMode(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mBackIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-wide/16 v2, 0xc8

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->clearAnimation()V

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->clearAnimation()V

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    iput-boolean p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mPreviewMode:Z

    return-void
.end method

.method private updateAODStyle(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mSelectStyleParameter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f1100d7

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mSelectStyleParameter:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mSelectStyleParameter:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/aod/settings/AODStyleActivity;->findView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020186

    invoke-virtual {p0, v2}, Lcom/miui/aod/settings/AODStyleActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mSelectStyleParameter:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "aod_dual_category_name"

    iget-object v3, p0, Lcom/miui/aod/settings/AODStyleActivity;->mCategory:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/aod/util/CategoryPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/aod/settings/AODStyleActivity;->mCategory:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/aod/settings/AODStyleActivity;->mSelectStyleParameter:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/miui/aod/util/CategoryPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/aod/settings/AODStyleActivity;->findView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020187

    invoke-virtual {p0, v1}, Lcom/miui/aod/settings/AODStyleActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    iget-object v1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/aod/settings/AODStyleActivity;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/aod/AODStyleController;->inflateView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/aod/widget/IAodClock;

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    iget-boolean p0, p0, Lcom/miui/aod/settings/AODStyleActivity;->m24HourFormat:Z

    invoke-virtual {p1, p0}, Lcom/miui/aod/AODStyleController;->handleUpdateTime(Z)V

    return-void
.end method

.method private updateInfo(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, "dual_clock"

    const-string v1, "{}"

    invoke-static {p0, v0, v1}, Lcom/miui/aod/util/CategoryPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mSelectStyleParameter:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mSelectStyleParameter:Ljava/lang/String;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mSelectStyleParameter:Ljava/lang/String;

    :cond_0
    const-string v0, "category"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mCategory:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mCategory:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "dual_clock"

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mCategory:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mCategory:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/aod/category/CategoryFactory;->createStyleInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mSelectInfo:Lcom/miui/aod/common/StyleInfo;

    :cond_2
    return-void
.end method


# virtual methods
.method protected appointExitAnim()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x10100ae

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/miui/aod/settings/AODStyleActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v1, v2, :cond_0

    if-eq v3, v2, :cond_0

    invoke-virtual {p0, v1, v3}, Lcom/miui/aod/settings/AODStyleActivity;->overridePendingTransition(II)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x10100ba
        0x10100bb
    .end array-data
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Lmiui/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleActivity;->appointExitAnim()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mInflater:Landroid/view/LayoutInflater;

    new-instance p1, Lcom/miui/aod/AODStyleController;

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lcom/miui/aod/AODStyleController;-><init>(ILandroid/view/LayoutInflater;)V

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0, p1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mCal:Lmiui/date/Calendar;

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mCal:Lmiui/date/Calendar;

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mSecond:I

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mCal:Lmiui/date/Calendar;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mMSecond:I

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0xc000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    const p1, 0x7f030034

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODStyleActivity;->setContentView(I)V

    const p1, 0x7f1100d4

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/miui/aod/settings/-$$Lambda$AODStyleActivity$TQRY40iljPke9AjFi9U7iN7kX3o;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/-$$Lambda$AODStyleActivity$TQRY40iljPke9AjFi9U7iN7kX3o;-><init>(Lcom/miui/aod/settings/AODStyleActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f1100ac

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mContent:Landroid/widget/FrameLayout;

    const p1, 0x7f1100b2

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mBackIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mBackIcon:Landroid/widget/ImageView;

    new-instance v0, Lcom/miui/aod/settings/-$$Lambda$AODStyleActivity$3IHOobchrxR78EfP9claGM-vV7k;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/-$$Lambda$AODStyleActivity$3IHOobchrxR78EfP9claGM-vV7k;-><init>(Lcom/miui/aod/settings/AODStyleActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/aod/settings/AODStyleActivity;->updateInfo(Landroid/content/Intent;)V

    const p1, 0x7f1100d5

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/widget/AODSettings;->isDualClock(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mGridView:Landroid/widget/GridView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setStretchMode(I)V

    :cond_0
    new-instance p1, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;

    invoke-direct {p1, p0}, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;-><init>(Lcom/miui/aod/settings/AODStyleActivity;)V

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mImageAdapter:Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mImageAdapter:Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/miui/aod/settings/AODStyleActivity;->init()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mHandler:Landroid/os/Handler;

    iget p1, p0, Lcom/miui/aod/settings/AODStyleActivity;->mSecond:I

    rsub-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    iget v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mMSecond:I

    rsub-int v0, v0, 0x3e8

    add-int/2addr p1, v0

    new-instance v0, Lcom/miui/aod/settings/AODStyleActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/AODStyleActivity$1;-><init>(Lcom/miui/aod/settings/AODStyleActivity;)V

    iput-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/miui/aod/settings/AODStyleActivity;->updateInfo(Landroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/miui/aod/settings/AODStyleActivity;->init()V

    return-void
.end method
