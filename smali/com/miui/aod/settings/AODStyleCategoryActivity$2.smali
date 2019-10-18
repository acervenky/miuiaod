.class Lcom/miui/aod/settings/AODStyleCategoryActivity$2;
.super Ljava/lang/Object;
.source "AODStyleCategoryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/settings/AODStyleCategoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/settings/AODStyleCategoryActivity;


# direct methods
.method constructor <init>(Lcom/miui/aod/settings/AODStyleCategoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity$2;->this$0:Lcom/miui/aod/settings/AODStyleCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity$2;->this$0:Lcom/miui/aod/settings/AODStyleCategoryActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/common/StyleInfo;

    invoke-static {p0, p1}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->access$000(Lcom/miui/aod/settings/AODStyleCategoryActivity;Lcom/miui/aod/common/StyleInfo;)V

    return-void
.end method
