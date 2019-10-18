.class Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper$1;
.super Ljava/lang/Object;
.source "AodStyleCategoriesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;->relace(Lcom/miui/aod/common/StyleInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;


# direct methods
.method constructor <init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper$1;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper$1;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;

    invoke-static {p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;->access$700(Lcom/miui/aod/settings/AodStyleCategoriesActivity$MineCategoriesWrapper;)Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->notifyItemChanged(I)V

    return-void
.end method
