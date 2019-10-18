.class public Lcom/miui/aod/settings/AODStyleCategoryActivity;
.super Lmiui/app/Activity;
.source "AODStyleCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;
    }
.end annotation


# instance fields
.field private m24HourFormat:Z

.field private mAodStyleController:Lcom/miui/aod/AODStyleController;

.field private mBackIcon:Landroid/widget/ImageView;

.field private mCal:Lmiui/date/Calendar;

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mImageAdapter:Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMSecond:I

.field private mSecond:I

.field private mSelectCateName:Ljava/lang/String;

.field private mUpdateAodSelectionTask:Ljava/lang/Runnable;

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    new-instance v0, Lcom/miui/aod/settings/-$$Lambda$AODStyleCategoryActivity$CL0j6hKQKGCqOc4sji7opE8NPC0;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/-$$Lambda$AODStyleCategoryActivity$CL0j6hKQKGCqOc4sji7opE8NPC0;-><init>(Lcom/miui/aod/settings/AODStyleCategoryActivity;)V

    iput-object v0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mUpdateAodSelectionTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/settings/AODStyleCategoryActivity;Lcom/miui/aod/common/StyleInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->startAODStyleCategoryActivity(Lcom/miui/aod/common/StyleInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/aod/settings/AODStyleCategoryActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->m24HourFormat:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/aod/settings/AODStyleCategoryActivity;)Lcom/miui/aod/AODStyleController;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/aod/settings/AODStyleCategoryActivity;)Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mImageAdapter:Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/aod/settings/AODStyleCategoryActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/aod/settings/AODStyleCategoryActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/aod/settings/AODStyleCategoryActivity;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/aod/settings/AODStyleCategoryActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mSelectCateName:Ljava/lang/String;

    return-object p0
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

.method public static synthetic lambda$CL0j6hKQKGCqOc4sji7opE8NPC0(Lcom/miui/aod/settings/AODStyleCategoryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->updateAODStyleSelected()V

    return-void
.end method

.method private startAODStyleCategoryActivity(Lcom/miui/aod/common/StyleInfo;)V
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

    invoke-virtual {p0, v1, p1}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-direct {p0, p0}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->getSystemDefaultEnterAnim(Landroid/app/Activity;)Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private update()V
    .locals 2

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->m24HourFormat:Z

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    iget-boolean v1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->m24HourFormat:Z

    invoke-virtual {v0, v1}, Lcom/miui/aod/AODStyleController;->handleUpdateTime(Z)V

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mImageAdapter:Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateAODStyleSelected()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/aod/widget/AODSettings;->getAodCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mSelectCateName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mSelectCateName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mImageAdapter:Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;

    invoke-virtual {v1}, Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;->notifyDataSetChanged()V

    iput-object v0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mSelectCateName:Ljava/lang/String;

    :cond_1
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

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

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

    invoke-virtual {p0, v1, v3}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->overridePendingTransition(II)V

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

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->appointExitAnim()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1212

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mSelectCateName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mInflater:Landroid/view/LayoutInflater;

    new-instance p1, Lcom/miui/aod/AODStyleController;

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lcom/miui/aod/AODStyleController;-><init>(ILandroid/view/LayoutInflater;)V

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0, p1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mCal:Lmiui/date/Calendar;

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mCal:Lmiui/date/Calendar;

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mSecond:I

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mCal:Lmiui/date/Calendar;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mMSecond:I

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->getWindow()Landroid/view/Window;

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

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    const p1, 0x7f030036

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->setContentView(I)V

    const p1, 0x7f1100b2

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mBackIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mBackIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/aod/settings/AODStyleCategoryActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/aod/settings/AODStyleCategoryActivity$1;-><init>(Lcom/miui/aod/settings/AODStyleCategoryActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/widget/AODSettings;->getAodCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mSelectCateName:Ljava/lang/String;

    const p1, 0x7f1100d5

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mGridView:Landroid/widget/GridView;

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0b000e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v2, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getVerticalSpacing()I

    move-result v2

    iget-object v3, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    mul-int/2addr p1, v1

    add-int/2addr p1, v2

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mGridView:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mGridView:Landroid/widget/GridView;

    new-instance v0, Lcom/miui/aod/settings/AODStyleCategoryActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/AODStyleCategoryActivity$2;-><init>(Lcom/miui/aod/settings/AODStyleCategoryActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance p1, Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;

    invoke-direct {p1, p0}, Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;-><init>(Lcom/miui/aod/settings/AODStyleCategoryActivity;)V

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mImageAdapter:Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;

    iget-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mImageAdapter:Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->update()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mHandler:Landroid/os/Handler;

    iget p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mSecond:I

    rsub-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    iget v0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mMSecond:I

    rsub-int v0, v0, 0x3e8

    add-int/2addr p1, v0

    new-instance v0, Lcom/miui/aod/settings/AODStyleCategoryActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/AODStyleCategoryActivity$3;-><init>(Lcom/miui/aod/settings/AODStyleCategoryActivity;)V

    iput-object v0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mUpdateAodSelectionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->update()V

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mSelectCateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity;->mUpdateAodSelectionTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
