.class Lcom/miui/aod/components/view/TextStyleSelectView$2;
.super Ljava/lang/Object;
.source "TextStyleSelectView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
.method constructor <init>(Lcom/miui/aod/components/view/TextStyleSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView$2;->this$0:Lcom/miui/aod/components/view/TextStyleSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView$2;->this$0:Lcom/miui/aod/components/view/TextStyleSelectView;

    iget-object v0, v0, Lcom/miui/aod/components/view/TextStyleSelectView;->mApplyButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView$2;->this$0:Lcom/miui/aod/components/view/TextStyleSelectView;

    iget-object v0, v0, Lcom/miui/aod/components/view/TextStyleSelectView;->mApplyButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView$2;->this$0:Lcom/miui/aod/components/view/TextStyleSelectView;

    iget-object v0, v0, Lcom/miui/aod/components/view/TextStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    check-cast v0, Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->setContent(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/aod/components/view/TextStyleSelectView$2;->this$0:Lcom/miui/aod/components/view/TextStyleSelectView;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/TextStyleSelectView;->updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
