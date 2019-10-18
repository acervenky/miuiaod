.class Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;
.super Ljava/lang/Object;
.source "AodStyleCategoriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/settings/AodStyleCategoriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MineCategoriesWrapper"
.end annotation


# instance fields
.field private mCategoriesItemAdapter:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mStyleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/aod/common/StyleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/aod/common/StyleInfo;",
            ">;",
            "Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;->mStyleInfos:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;->mCategoriesItemAdapter:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    return-void
.end method

.method static synthetic access$700(Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;)Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;->mCategoriesItemAdapter:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    return-object p0
.end method


# virtual methods
.method public relace(Lcom/miui/aod/common/StyleInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;->mStyleInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;->mStyleInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper$1;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper$1;-><init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method
