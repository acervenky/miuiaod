.class Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "AODStyleCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/settings/AODStyleCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/settings/AODStyleCategoryActivity;


# direct methods
.method constructor <init>(Lcom/miui/aod/settings/AODStyleCategoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleCategoryActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    invoke-static {}, Lcom/miui/aod/category/CategoryFactory;->getAodCategoryCount()I

    move-result p0

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
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleCategoryActivity;

    invoke-static {p2}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->access$600(Lcom/miui/aod/settings/AODStyleCategoryActivity;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f030037

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    new-instance p3, Lcom/miui/aod/AODStyleController;

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleCategoryActivity;

    invoke-static {v1}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->access$600(Lcom/miui/aod/settings/AODStyleCategoryActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/miui/aod/AODStyleController;-><init>(ILandroid/view/LayoutInflater;)V

    invoke-static {p1}, Lcom/miui/aod/category/CategoryFactory;->getAodCategoryName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lcom/miui/aod/AODStyleController;->getStyleInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/miui/aod/AODStyleController;->inflateView(Landroid/view/View;Lcom/miui/aod/common/StyleInfo;)Lcom/miui/aod/widget/IAodClock;

    iget-object v1, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleCategoryActivity;

    invoke-static {v1}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->access$100(Lcom/miui/aod/settings/AODStyleCategoryActivity;)Z

    move-result v1

    invoke-virtual {p3, v1}, Lcom/miui/aod/AODStyleController;->handleUpdateTime(Z)V

    iget-object p3, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleCategoryActivity;

    invoke-static {p3}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->access$700(Lcom/miui/aod/settings/AODStyleCategoryActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleCategoryActivity;

    invoke-static {p3}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->access$700(Lcom/miui/aod/settings/AODStyleCategoryActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f020183

    goto :goto_0

    :cond_1
    const p1, 0x7f0201b8

    :goto_0
    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleCategoryActivity$ImageAdapter;->this$0:Lcom/miui/aod/settings/AODStyleCategoryActivity;

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODStyleCategoryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
