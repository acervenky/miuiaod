.class public Lcom/miui/aod/settings/NotificationAnimationSelectActivity;
.super Lmiui/app/Activity;
.source "NotificationAnimationSelectActivity.java"


# instance fields
.field protected m24HourFormat:Z

.field private mAnimationDuration:J

.field private mAnimationSelectView:Lcom/miui/aod/components/widget/NotificationAnimationSelectView;

.field private mAnimationTask:Ljava/lang/Runnable;

.field private mAnimationView:Lcom/miui/aod/widget/NotificationAnimationView;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mBackIcon:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPreviewMode:Z

.field protected mPreviewStyleController:Lcom/miui/aod/AODStyleController;

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    new-instance v0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$1;-><init>(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)V

    iput-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$2;-><init>(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)V

    iput-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$3;-><init>(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)V

    iput-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$4;-><init>(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)V

    iput-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mPreviewMode:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->setSystemUIVisible(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)Lcom/miui/aod/components/widget/NotificationAnimationSelectView;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationSelectView:Lcom/miui/aod/components/widget/NotificationAnimationSelectView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;Ljava/lang/String;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->startAnimation(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationDuration:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic lambda$lMkFWD9WQL70_ht_mFTT7ou7uyE(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;ILcom/miui/aod/components/DrawableData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->onNotificationAnimationSelect(ILcom/miui/aod/components/DrawableData;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$13(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$onCreate$14(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mPreviewMode:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->showPreviewMode(Z)V

    return-void
.end method

.method private onNotificationAnimationSelect(ILcom/miui/aod/components/DrawableData;)V
    .locals 1

    const-string p1, "none"

    iget-object v0, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->stopAnimation()V

    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/aod/Utils;->putKeyguardNotificationStatus(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const-string p1, "screen_on"

    iget-object v0, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->stopAnimation()V

    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/aod/Utils;->putKeyguardNotificationStatus(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->scheduleAnimation(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/miui/aod/Utils;->putKeyguardNotificationStatus(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iget-object p1, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/miui/aod/widget/notification/NotificationStyleManager;->setSelectedStyleName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private scheduleAnimation(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "red_wave"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->startAnimation(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private setSystemUIVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x500

    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x1706

    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private showPreviewMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mBackIcon:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mPreviewMode:Z

    iget-boolean p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mPreviewMode:Z

    const-wide/16 v0, 0x12c

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationSelectView:Lcom/miui/aod/components/widget/NotificationAnimationSelectView;

    invoke-virtual {p1}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationSelectView:Lcom/miui/aod/components/widget/NotificationAnimationSelectView;

    invoke-virtual {p1}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    return-void
.end method

.method private startAnimation(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationView:Lcom/miui/aod/widget/NotificationAnimationView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->stopAnimation()V

    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/aod/widget/notification/NotificationStyleManager;->createAnimationDrawer(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationDuration:J

    invoke-interface {p1, p2}, Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;->setRepeatMode(Z)V

    iget-object p2, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationView:Lcom/miui/aod/widget/NotificationAnimationView;

    invoke-virtual {p2, p1}, Lcom/miui/aod/widget/NotificationAnimationView;->setAnimationDrawer(Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;)V

    iget-object p0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationView:Lcom/miui/aod/widget/NotificationAnimationView;

    invoke-virtual {p0}, Lcom/miui/aod/widget/NotificationAnimationView;->startAnimation()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private stopAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationView:Lcom/miui/aod/widget/NotificationAnimationView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationView:Lcom/miui/aod/widget/NotificationAnimationView;

    invoke-virtual {p0}, Lcom/miui/aod/widget/NotificationAnimationView;->stopAnimation()V

    :cond_0
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

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

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

    invoke-virtual {p0, v1, v3}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->overridePendingTransition(II)V

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

    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->appointExitAnim()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0xc000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    const p1, 0x7f03001d

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->setContentView(I)V

    const p1, 0x7f1100b2

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mBackIcon:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mBackIcon:Landroid/view/View;

    new-instance v0, Lcom/miui/aod/settings/-$$Lambda$NotificationAnimationSelectActivity$9Mv0959vERGVshxtPEiVTkXqWz0;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/-$$Lambda$NotificationAnimationSelectActivity$9Mv0959vERGVshxtPEiVTkXqWz0;-><init>(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f1100b3

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/widget/NotificationAnimationView;

    iput-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationView:Lcom/miui/aod/widget/NotificationAnimationView;

    const p1, 0x7f1100ac

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/aod/settings/-$$Lambda$NotificationAnimationSelectActivity$GJg7unck5UAe9skql2rTv3NAntg;

    invoke-direct {v1, p0}, Lcom/miui/aod/settings/-$$Lambda$NotificationAnimationSelectActivity$GJg7unck5UAe9skql2rTv3NAntg;-><init>(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/aod/Utils;->isAodEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->m24HourFormat:Z

    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/miui/aod/AODStyleController;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, v2}, Lcom/miui/aod/AODStyleController;-><init>(ILandroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mPreviewStyleController:Lcom/miui/aod/AODStyleController;

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mPreviewStyleController:Lcom/miui/aod/AODStyleController;

    invoke-virtual {v0, p1}, Lcom/miui/aod/AODStyleController;->inflateClockView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mPreviewStyleController:Lcom/miui/aod/AODStyleController;

    iget-boolean v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->m24HourFormat:Z

    invoke-virtual {p1, v0}, Lcom/miui/aod/AODStyleController;->handleUpdateTime(Z)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0, p1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    const/16 p1, 0x15

    invoke-virtual {v0, p1}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    rsub-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    rsub-int v0, v0, 0x3e8

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const p1, 0x7f1100b4

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;

    iput-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationSelectView:Lcom/miui/aod/components/widget/NotificationAnimationSelectView;

    iget-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationSelectView:Lcom/miui/aod/components/widget/NotificationAnimationSelectView;

    new-instance v0, Lcom/miui/aod/settings/-$$Lambda$NotificationAnimationSelectActivity$lMkFWD9WQL70_ht_mFTT7ou7uyE;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/-$$Lambda$NotificationAnimationSelectActivity$lMkFWD9WQL70_ht_mFTT7ou7uyE;-><init>(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)V

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->setOnItemClickListener(Lcom/miui/aod/components/widget/NotificationAnimationSelectView$OnItemClickListener;)V

    iget-object p0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationSelectView:Lcom/miui/aod/components/widget/NotificationAnimationSelectView;

    invoke-static {}, Lcom/miui/aod/widget/notification/NotificationStyleManager;->getStyleList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->setDrawableData(Ljava/util/Collection;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    iget-object p0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->stopAnimation()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mAnimationSelectView:Lcom/miui/aod/components/widget/NotificationAnimationSelectView;

    invoke-virtual {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/aod/widget/notification/NotificationStyleManager;->getSelectedStyleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->setItemSelected(Ljava/lang/String;)V

    return-void
.end method
