.class Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$2;
.super Ljava/lang/Object;
.source "AodStyleCategoriesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->onBindViewHolder(Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;


# direct methods
.method constructor <init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$2;->this$1:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$2;->this$1:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    iget-object p1, p1, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$2;->this$1:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    invoke-static {p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->access$600(Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/category/CategoriesItemInfo;

    invoke-virtual {p0}, Lcom/miui/aod/category/CategoriesItemInfo;->getStyleInfos()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/common/StyleInfo;

    invoke-static {p1, p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->access$500(Lcom/miui/aod/settings/AodStyleCategoriesActivity;Lcom/miui/aod/common/StyleInfo;)V

    return-void
.end method
