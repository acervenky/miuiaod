.class Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$1;
.super Ljava/lang/Object;
.source "AodStyleCategoriesActivity.java"

# interfaces
.implements Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;
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

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$1;->this$1:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILcom/miui/aod/category/CategoryInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$1;->this$1:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-static {p0, p2}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->access$500(Lcom/miui/aod/settings/AodStyleCategoriesActivity;Lcom/miui/aod/common/StyleInfo;)V

    return-void
.end method
