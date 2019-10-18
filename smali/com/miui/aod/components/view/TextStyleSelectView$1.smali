.class Lcom/miui/aod/components/view/TextStyleSelectView$1;
.super Ljava/lang/Object;
.source "TextStyleSelectView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/components/view/TextStyleSelectView;->inflateStyleSelectPanelView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/components/view/TextStyleSelectView;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/miui/aod/components/view/TextStyleSelectView;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView$1;->this$0:Lcom/miui/aod/components/view/TextStyleSelectView;

    iput-object p2, p0, Lcom/miui/aod/components/view/TextStyleSelectView$1;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView$1;->this$0:Lcom/miui/aod/components/view/TextStyleSelectView;

    invoke-static {p1}, Lcom/miui/aod/components/view/TextStyleSelectView;->access$000(Lcom/miui/aod/components/view/TextStyleSelectView;)Lcom/miui/aod/category/TextStyleCategoryInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/aod/category/TextStyleCategoryInfo;->setChangeColorAlongTime(Z)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/widget/SunSelector;->updateSunRiseTime(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView$1;->this$0:Lcom/miui/aod/components/view/TextStyleSelectView;

    invoke-virtual {p1}, Lcom/miui/aod/components/view/TextStyleSelectView;->updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;

    iget-object p0, p0, Lcom/miui/aod/components/view/TextStyleSelectView$1;->this$0:Lcom/miui/aod/components/view/TextStyleSelectView;

    invoke-static {p0, p2}, Lcom/miui/aod/components/view/TextStyleSelectView;->access$100(Lcom/miui/aod/components/view/TextStyleSelectView;Z)V

    return-void
.end method
