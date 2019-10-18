.class Lcom/miui/aod/settings/AodStyleCategoriesActivity$1;
.super Ljava/lang/Object;
.source "AodStyleCategoriesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$1;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$1;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->finish()V

    return-void
.end method
