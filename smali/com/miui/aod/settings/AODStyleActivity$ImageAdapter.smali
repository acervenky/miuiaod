.class Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "AODStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/settings/AODStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/settings/AODStyleActivity;


# direct methods
.method constructor <init>(Lcom/miui/aod/settings/AODStyleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {p0}, Lcom/miui/aod/settings/AODStyleActivity;->access$600(Lcom/miui/aod/settings/AODStyleActivity;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->getPresetStyle()Lcom/miui/aod/common/StyleInfo$PresetStyle;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/aod/common/StyleInfo$PresetStyle;->mStyleParameters:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object p2, p0, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {p2}, Lcom/miui/aod/settings/AODStyleActivity;->access$600(Lcom/miui/aod/settings/AODStyleActivity;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/aod/common/StyleInfo;->getPresetStyle()Lcom/miui/aod/common/StyleInfo$PresetStyle;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/aod/common/StyleInfo$PresetStyle;->mStyleParameters:[Ljava/lang/String;

    aget-object p1, p2, p1

    iget-object p2, p0, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {p2}, Lcom/miui/aod/settings/AODStyleActivity;->access$700(Lcom/miui/aod/settings/AODStyleActivity;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const p3, 0x7f1100d7

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {p2}, Lcom/miui/aod/settings/AODStyleActivity;->access$800(Lcom/miui/aod/settings/AODStyleActivity;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f030039

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/miui/aod/AODStyleController;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {v2}, Lcom/miui/aod/settings/AODStyleActivity;->access$800(Lcom/miui/aod/settings/AODStyleActivity;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/aod/AODStyleController;-><init>(ILandroid/view/LayoutInflater;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {v2}, Lcom/miui/aod/settings/AODStyleActivity;->access$900(Lcom/miui/aod/settings/AODStyleActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/aod/AODStyleController;->inflateView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/aod/widget/IAodClock;

    iget-object v1, p0, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {v1}, Lcom/miui/aod/settings/AODStyleActivity;->access$700(Lcom/miui/aod/settings/AODStyleActivity;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;

    iget-object v3, p0, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-direct {v2, v3, v0, p2}, Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;-><init>(Lcom/miui/aod/settings/AODStyleActivity;Lcom/miui/aod/AODStyleController;Landroid/view/View;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {p2}, Lcom/miui/aod/settings/AODStyleActivity;->access$700(Lcom/miui/aod/settings/AODStyleActivity;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;

    invoke-static {p2}, Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;->access$1000(Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;)Landroid/view/View;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {v1}, Lcom/miui/aod/settings/AODStyleActivity;->access$700(Lcom/miui/aod/settings/AODStyleActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;

    invoke-static {v1}, Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;->access$1100(Lcom/miui/aod/settings/AODStyleActivity$StyleControllerViewPair;)Lcom/miui/aod/AODStyleController;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {v2}, Lcom/miui/aod/settings/AODStyleActivity;->access$000(Lcom/miui/aod/settings/AODStyleActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/aod/AODStyleController;->handleUpdateTime(Z)V

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v1, p0, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {p0}, Lcom/miui/aod/settings/AODStyleActivity;->access$1200(Lcom/miui/aod/settings/AODStyleActivity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f020187

    goto :goto_1

    :cond_1
    const p0, 0x7f020186

    :goto_1
    invoke-virtual {v1, p0}, Lcom/miui/aod/settings/AODStyleActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
