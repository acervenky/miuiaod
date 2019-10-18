.class public Lcom/miui/aod/category/CategoriesItemInfo;
.super Ljava/lang/Object;
.source "CategoriesItemInfo.java"


# instance fields
.field private mCategoryInfos:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "categories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/aod/common/StyleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCateroryName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "categoryname"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCateroryName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/category/CategoriesItemInfo;->mCateroryName:Ljava/lang/String;

    return-object p0
.end method

.method public getStyleInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/aod/common/StyleInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/aod/category/CategoriesItemInfo;->mCategoryInfos:Ljava/util/List;

    return-object p0
.end method

.method public setCategoryInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/aod/common/StyleInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/aod/category/CategoriesItemInfo;->mCategoryInfos:Ljava/util/List;

    return-void
.end method
