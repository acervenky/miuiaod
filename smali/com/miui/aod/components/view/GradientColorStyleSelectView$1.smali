.class Lcom/miui/aod/components/view/GradientColorStyleSelectView$1;
.super Ljava/lang/Object;
.source "GradientColorStyleSelectView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/components/view/GradientColorStyleSelectView;->inflateStyleSelectPanelView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/components/view/GradientColorStyleSelectView;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/miui/aod/components/view/GradientColorStyleSelectView;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView$1;->this$0:Lcom/miui/aod/components/view/GradientColorStyleSelectView;

    iput-object p2, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView$1;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView$1;->this$0:Lcom/miui/aod/components/view/GradientColorStyleSelectView;

    invoke-static {p1}, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->access$000(Lcom/miui/aod/components/view/GradientColorStyleSelectView;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/aod/common/StyleInfo;->setChangeColorAlongTime(Z)V

    iget-object p1, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/widget/SunSelector;->updateSunRiseTime(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView$1;->this$0:Lcom/miui/aod/components/view/GradientColorStyleSelectView;

    invoke-virtual {p1}, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;

    iget-object p0, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView$1;->this$0:Lcom/miui/aod/components/view/GradientColorStyleSelectView;

    invoke-static {p0, p2}, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->access$100(Lcom/miui/aod/components/view/GradientColorStyleSelectView;Z)V

    return-void
.end method
