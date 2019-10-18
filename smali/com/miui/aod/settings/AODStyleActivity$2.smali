.class Lcom/miui/aod/settings/AODStyleActivity$2;
.super Ljava/lang/Object;
.source "AODStyleActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/settings/AODStyleActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/settings/AODStyleActivity;


# direct methods
.method constructor <init>(Lcom/miui/aod/settings/AODStyleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity$2;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

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

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity$2;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/miui/aod/settings/AODStyleActivity;->access$500(Lcom/miui/aod/settings/AODStyleActivity;Ljava/lang/String;)V

    return-void
.end method
