.class Lcom/miui/aod/settings/AodStyleCategoriesActivity$3;
.super Ljava/lang/Object;
.source "AodStyleCategoriesActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/settings/AodStyleCategoriesActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/util/List<",
        "Lcom/miui/aod/category/CategoriesItemInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;


# direct methods
.method constructor <init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$3;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$3;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/aod/category/CategoriesItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$3;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-static {p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->access$000(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
