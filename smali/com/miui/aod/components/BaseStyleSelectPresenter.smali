.class public Lcom/miui/aod/components/BaseStyleSelectPresenter;
.super Ljava/lang/Object;
.source "BaseStyleSelectPresenter.java"

# interfaces
.implements Lcom/miui/aod/components/StyleSelectContract$StyleSelectPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/components/BaseStyleSelectPresenter$ApplyStyleEvent;
    }
.end annotation


# instance fields
.field protected mCategory:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field private mIAodClock:Lcom/miui/aod/widget/IAodClock;

.field protected mSelectStyleParameter:Ljava/lang/String;

.field private mStyleSelectView:Lcom/miui/aod/components/StyleSelectContract$StyleSelectView;

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/aod/components/view/BaseStyleSelectView;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/aod/components/BaseStyleSelectPresenter$1;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/BaseStyleSelectPresenter$1;-><init>(Lcom/miui/aod/components/BaseStyleSelectPresenter;)V

    iput-object v0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mUpdateRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mStyleSelectView:Lcom/miui/aod/components/StyleSelectContract$StyleSelectView;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mHandler:Landroid/os/Handler;

    const-string p1, "param"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mSelectStyleParameter:Ljava/lang/String;

    const-string p1, "category"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mCategory:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mStyleSelectView:Lcom/miui/aod/components/StyleSelectContract$StyleSelectView;

    invoke-interface {p1, p0}, Lcom/miui/aod/components/StyleSelectContract$StyleSelectView;->setPresenter(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/components/BaseStyleSelectPresenter;)Lcom/miui/aod/components/StyleSelectContract$StyleSelectView;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mStyleSelectView:Lcom/miui/aod/components/StyleSelectContract$StyleSelectView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/aod/components/BaseStyleSelectPresenter;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public applyStyleParameter(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mContext:Landroid/content/Context;

    const-string v1, "aod_category_name"

    iget-object v2, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mCategory:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/aod/util/CategoryPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mCategory:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/miui/aod/util/CategoryPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/aod/components/BaseStyleSelectPresenter$ApplyStyleEvent;

    invoke-direct {v0}, Lcom/miui/aod/components/BaseStyleSelectPresenter$ApplyStyleEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public getIAodClock()Lcom/miui/aod/widget/IAodClock;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mIAodClock:Lcom/miui/aod/widget/IAodClock;

    return-object p0
.end method

.method public getView()Lcom/miui/aod/components/StyleSelectContract$StyleSelectView;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mStyleSelectView:Lcom/miui/aod/components/StyleSelectContract$StyleSelectView;

    return-object p0
.end method

.method public bridge synthetic getView()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/aod/components/BaseStyleSelectPresenter;->getView()Lcom/miui/aod/components/StyleSelectContract$StyleSelectView;

    move-result-object p0

    return-object p0
.end method

.method public initViewInfo()V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mStyleSelectView:Lcom/miui/aod/components/StyleSelectContract$StyleSelectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mStyleSelectView:Lcom/miui/aod/components/StyleSelectContract$StyleSelectView;

    iget-object v1, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mCategory:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mSelectStyleParameter:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/miui/aod/components/StyleSelectContract$StyleSelectView;->initStyleInfoSelected(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/aod/widget/IAodClock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mIAodClock:Lcom/miui/aod/widget/IAodClock;

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object p0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    iget-object v0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

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

    iget-object v1, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mUpdateRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setIAodClock(Lcom/miui/aod/widget/IAodClock;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/BaseStyleSelectPresenter;->mIAodClock:Lcom/miui/aod/widget/IAodClock;

    return-void
.end method
