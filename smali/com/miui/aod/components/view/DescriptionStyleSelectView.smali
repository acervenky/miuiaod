.class public Lcom/miui/aod/components/view/DescriptionStyleSelectView;
.super Lcom/miui/aod/components/view/BaseStyleSelectView;
.source "DescriptionStyleSelectView.java"


# instance fields
.field private mDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/BaseStyleSelectView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public inflateStyleSelectPanelView(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/components/view/DescriptionStyleSelectView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030042

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object p1, p0, Lcom/miui/aod/components/view/DescriptionStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f1100e8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/components/view/DescriptionStyleSelectView;->mDescription:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/miui/aod/components/view/DescriptionStyleSelectView;->mDescription:Landroid/widget/TextView;

    const p1, 0x7f090039

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
