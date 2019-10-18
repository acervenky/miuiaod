.class public Lcom/miui/aod/settings/AodStyleCategoriesActivity;
.super Lmiui/app/Activity;
.source "AodStyleCategoriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;,
        Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;
    }
.end annotation


# instance fields
.field private mBackIcon:Landroid/widget/ImageView;

.field private mCategoriesContainer:Landroid/support/v7/widget/RecyclerView;

.field private mCategoriesItemAdapter:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

.field private volatile mDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMineCategoriesItemInfo:Lcom/miui/aod/category/CategoriesItemInfo;

.field private mMineCategoriesWrapper:Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;

.field private mSelectCateName:Ljava/lang/String;

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mCategoriesItemAdapter:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)Lcom/miui/aod/category/CategoriesItemInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mMineCategoriesItemInfo:Lcom/miui/aod/category/CategoriesItemInfo;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/aod/settings/AodStyleCategoriesActivity;Lcom/miui/aod/common/StyleInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->startAODStyleSelectActivity(Lcom/miui/aod/common/StyleInfo;)V

    return-void
.end method

.method private getSystemDefaultEnterAnim(Landroid/app/Activity;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x10100ae

    invoke-virtual {p1, v1, p0, v2, v0}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :array_0
    .array-data 4
        0x10100b8
        0x10100b9
    .end array-data
.end method

.method private initData()V
    .locals 2

    new-instance v0, Lcom/miui/aod/settings/-$$Lambda$AodStyleCategoriesActivity$hpdDZNZDQ1eNmFBYTVaiFp6bqws;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/-$$Lambda$AodStyleCategoriesActivity$hpdDZNZDQ1eNmFBYTVaiFp6bqws;-><init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lio/reactivex/internal/schedulers/IoScheduler;

    invoke-direct {v1}, Lio/reactivex/internal/schedulers/IoScheduler;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/aod/settings/AodStyleCategoriesActivity$3;

    invoke-direct {v1, p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$3;-><init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static synthetic lambda$initData$15(Lcom/miui/aod/settings/AodStyleCategoriesActivity;Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/miui/aod/category/CategoryFactory;->getCategoriesGson()Lcom/google/gson/Gson;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f090079

    invoke-virtual {p0, v1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Lcom/miui/aod/settings/AodStyleCategoriesActivity$4;

    invoke-direct {v2, p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$4;-><init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)V

    invoke-virtual {v2}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/miui/aod/category/CategoriesItemInfo;

    invoke-direct {v1}, Lcom/miui/aod/category/CategoriesItemInfo;-><init>()V

    iput-object v1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mMineCategoriesItemInfo:Lcom/miui/aod/category/CategoriesItemInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/miui/aod/widget/AODSettings;->getClockStyleInfo(Landroid/content/Context;)Lcom/miui/aod/common/StyleInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mMineCategoriesItemInfo:Lcom/miui/aod/category/CategoriesItemInfo;

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mMineCategoriesItemInfo:Lcom/miui/aod/category/CategoriesItemInfo;

    invoke-virtual {v2, v1}, Lcom/miui/aod/category/CategoriesItemInfo;->setCategoryInfos(Ljava/util/List;)V

    new-instance v2, Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;

    iget-object v3, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mCategoriesItemAdapter:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    invoke-direct {v2, v1, v3}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;-><init>(Ljava/util/List;Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;)V

    iput-object v2, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mMineCategoriesWrapper:Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method private scheduleTimeUpdate()V
    .locals 4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1, v0}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    rsub-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    rsub-int v1, v1, 0x3e8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mDelay:I

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mDelay:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startAODStyleSelectActivity(Lcom/miui/aod/common/StyleInfo;)V
    .locals 4

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/aod/settings/AodStyleSelectActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "category"

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "param"

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x1212

    invoke-virtual {p0, v1, p1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-direct {p0, p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->getSystemDefaultEnterAnim(Landroid/app/Activity;)Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->overridePendingTransition(II)V

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

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

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

    invoke-virtual {p0, v1, v3}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->overridePendingTransition(II)V

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

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->appointExitAnim()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1212

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-static {p0}, Lcom/miui/aod/widget/AODSettings;->getClockStyleInfo(Landroid/content/Context;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mMineCategoriesWrapper:Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;

    invoke-virtual {p2, p1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;->relace(Lcom/miui/aod/common/StyleInfo;)Z

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mCategoriesContainer:Landroid/support/v7/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->getWindow()Landroid/view/Window;

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

    const p1, 0x7f030035

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->setContentView(I)V

    const p1, 0x7f1100b2

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mBackIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mBackIcon:Landroid/widget/ImageView;

    new-instance v0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$1;-><init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/widget/AODSettings;->getAodCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mSelectCateName:Ljava/lang/String;

    const p1, 0x7f1100d6

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mCategoriesContainer:Landroid/support/v7/widget/RecyclerView;

    new-instance p1, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    invoke-direct {p1, p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;-><init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)V

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mCategoriesItemAdapter:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    iget-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mCategoriesContainer:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mCategoriesItemAdapter:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->initData()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/miui/aod/settings/AodStyleCategoriesActivity$2;

    invoke-direct {p1, p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$2;-><init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)V

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->scheduleTimeUpdate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$5;-><init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p0

    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/IoScheduler;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Single;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->scheduleTimeUpdate()V

    return-void
.end method
