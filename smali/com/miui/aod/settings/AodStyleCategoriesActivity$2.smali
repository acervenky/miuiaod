.class Lcom/miui/aod/settings/AodStyleCategoriesActivity$2;
.super Ljava/lang/Object;
.source "AodStyleCategoriesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/settings/AodStyleCategoriesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;


# direct methods
.method constructor <init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$2;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$2;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-static {v0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->access$000(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$2;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-static {v1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->access$000(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$2;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$2;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-static {v0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->access$200(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$2;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-static {p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->access$100(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
