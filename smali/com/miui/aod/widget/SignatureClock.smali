.class public Lcom/miui/aod/widget/SignatureClock;
.super Ljava/lang/Object;
.source "SignatureClock.java"

# interfaces
.implements Lcom/miui/aod/widget/ISignatureAodClock;


# instance fields
.field private mSignatureAodView:Lcom/miui/aod/widget/SignatureAodView;

.field private mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/aod/widget/SignatureClock;->mSize:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f1100c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    instance-of v0, p1, Lcom/miui/aod/widget/SignatureAodView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/aod/widget/SignatureAodView;

    iput-object p1, p0, Lcom/miui/aod/widget/SignatureClock;->mSignatureAodView:Lcom/miui/aod/widget/SignatureAodView;

    :cond_0
    return-void
.end method

.method public getLayoutResource()I
    .locals 0

    const p0, 0x7f03002b

    return p0
.end method

.method public getShowedContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/widget/SignatureClock;->mSignatureAodView:Lcom/miui/aod/widget/SignatureAodView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureClock;->mSignatureAodView:Lcom/miui/aod/widget/SignatureAodView;

    invoke-virtual {p0}, Lcom/miui/aod/widget/SignatureAodView;->getShowContent()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTextFormat()Lcom/miui/aod/components/view/VerticalTextView$TextFormat;
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/widget/SignatureClock;->mSignatureAodView:Lcom/miui/aod/widget/SignatureAodView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureClock;->mSignatureAodView:Lcom/miui/aod/widget/SignatureAodView;

    invoke-virtual {p0}, Lcom/miui/aod/widget/SignatureAodView;->getShowTextFormat()Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getView()Lcom/miui/aod/widget/SignatureAodView;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureClock;->mSignatureAodView:Lcom/miui/aod/widget/SignatureAodView;

    return-object p0
.end method

.method public setClockMask(II)V
    .locals 0

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public setTimeZone2(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public update(Lcom/miui/aod/common/StyleInfo;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/widget/SignatureClock;->mSignatureAodView:Lcom/miui/aod/widget/SignatureAodView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureClock;->mSignatureAodView:Lcom/miui/aod/widget/SignatureAodView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/widget/SignatureAodView;->update(Lcom/miui/aod/common/StyleInfo;I)V

    :cond_0
    return-void
.end method

.method public updateTime(Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureClock;->mSignatureAodView:Lcom/miui/aod/widget/SignatureAodView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureClock;->mSignatureAodView:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {}, Lcom/miui/aod/resource/AodDrawables;->get24GradientDrawableRes()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/SignatureAodView;->set24GradientColor(I)V

    :cond_0
    return-void
.end method
