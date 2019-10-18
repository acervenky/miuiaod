.class public Lcom/miui/aod/settings/AodStyleSelectActivity;
.super Lmiui/app/Activity;
.source "AodStyleSelectActivity.java"


# instance fields
.field private mStyleSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreate$10(Lcom/miui/aod/settings/AodStyleSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleSelectActivity;->finish()V

    return-void
.end method

.method private setSystemUIVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x500

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x1706

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
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

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/miui/aod/settings/AodStyleSelectActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

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

    invoke-virtual {p0, v1, v3}, Lcom/miui/aod/settings/AodStyleSelectActivity;->overridePendingTransition(II)V

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

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleSelectActivity;->appointExitAnim()V

    return-void
.end method

.method public onApplyStyleEvent(Lcom/miui/aod/components/BaseStyleSelectPresenter$ApplyStyleEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AodStyleSelectActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleSelectActivity;->finish()V

    return-void
.end method

.method public onApplyStyleEvent(Lcom/miui/aod/components/view/BaseStyleSelectView$ExitSelectViewEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleSelectActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0xc000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    const p1, 0x7f03001c

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AodStyleSelectActivity;->setContentView(I)V

    const p1, 0x7f1100b2

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AodStyleSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/miui/aod/settings/-$$Lambda$AodStyleSelectActivity$_DzmVodqjkCIi4340EXmRGdr6bg;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/-$$Lambda$AodStyleSelectActivity$_DzmVodqjkCIi4340EXmRGdr6bg;-><init>(Lcom/miui/aod/settings/AodStyleSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/aod/components/BaseStyleSelectPresenterFactory;->createStyleSelectPresenter(Landroid/content/Context;Landroid/content/Intent;)Lcom/miui/aod/components/BaseStyleSelectPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleSelectActivity;->mStyleSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    iget-object p1, p0, Lcom/miui/aod/settings/AodStyleSelectActivity;->mStyleSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/aod/settings/AodStyleSelectActivity;->mStyleSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    invoke-virtual {p1}, Lcom/miui/aod/components/BaseStyleSelectPresenter;->onCreate()V

    iget-object p1, p0, Lcom/miui/aod/settings/AodStyleSelectActivity;->mStyleSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    invoke-virtual {p1}, Lcom/miui/aod/components/BaseStyleSelectPresenter;->getView()Lcom/miui/aod/components/StyleSelectContract$StyleSelectView;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/aod/components/view/BaseStyleSelectView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/aod/components/view/BaseStyleSelectView;

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleSelectActivity;->mStyleSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->setPresenter(Lcom/miui/aod/components/BaseStyleSelectPresenter;)V

    const v0, 0x7f1100ab

    invoke-virtual {p0, v0}, Lcom/miui/aod/settings/AodStyleSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->inflate(Landroid/view/ViewGroup;)V

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleSelectActivity;->mStyleSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    invoke-virtual {p0}, Lcom/miui/aod/components/BaseStyleSelectPresenter;->initViewInfo()V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleSelectActivity;->mStyleSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleSelectActivity;->mStyleSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    invoke-virtual {v0}, Lcom/miui/aod/components/BaseStyleSelectPresenter;->onDestroy()V

    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleSelectActivity;->mStyleSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleSelectActivity;->mStyleSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    invoke-virtual {p0}, Lcom/miui/aod/components/BaseStyleSelectPresenter;->onPause()V

    :cond_0
    return-void
.end method

.method public onPreviewStateEvent(Lcom/miui/aod/components/view/BaseStyleSelectView$PreviewStateEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean p1, p1, Lcom/miui/aod/components/view/BaseStyleSelectView$PreviewStateEvent;->mIsPreview:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/aod/settings/AodStyleSelectActivity;->setSystemUIVisible(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleSelectActivity;->mStyleSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleSelectActivity;->mStyleSelectPresenter:Lcom/miui/aod/components/BaseStyleSelectPresenter;

    invoke-virtual {p0}, Lcom/miui/aod/components/BaseStyleSelectPresenter;->onResume()V

    :cond_0
    return-void
.end method
