.class Lcom/miui/aod/components/view/TextStyleSelectView$4;
.super Lcom/miui/aod/util/MiLengthFilter;
.source "TextStyleSelectView.java"


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


# direct methods
.method constructor <init>(Lcom/miui/aod/components/view/TextStyleSelectView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView$4;->this$0:Lcom/miui/aod/components/view/TextStyleSelectView;

    invoke-direct {p0, p2}, Lcom/miui/aod/util/MiLengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onExccedLimit(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/aod/components/view/TextStyleSelectView$4;->this$0:Lcom/miui/aod/components/view/TextStyleSelectView;

    invoke-static {p0}, Lcom/miui/aod/components/view/TextStyleSelectView;->access$200(Lcom/miui/aod/components/view/TextStyleSelectView;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/components/view/TextStyleSelectView$4;->this$0:Lcom/miui/aod/components/view/TextStyleSelectView;

    invoke-static {p0}, Lcom/miui/aod/components/view/TextStyleSelectView;->access$200(Lcom/miui/aod/components/view/TextStyleSelectView;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
