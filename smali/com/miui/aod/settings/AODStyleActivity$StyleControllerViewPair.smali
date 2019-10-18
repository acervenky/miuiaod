.class Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;
.super Ljava/lang/Object;
.source "AODStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/settings/AODStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StyleControllerViewPair"
.end annotation


# instance fields
.field private mAodView:Landroid/view/View;

.field private mStyleController:Lcom/miui/aod/AODStyleController;

.field final synthetic this$0:Lcom/miui/aod/settings/AODStyleActivity;


# direct methods
.method public constructor <init>(Lcom/miui/aod/settings/AODStyleActivity;Lcom/miui/aod/AODStyleController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;->mStyleController:Lcom/miui/aod/AODStyleController;

    iput-object p3, p0, Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;->mAodView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;->mAodView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;)Lcom/miui/aod/AODStyleController;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;->mStyleController:Lcom/miui/aod/AODStyleController;

    return-object p0
.end method
